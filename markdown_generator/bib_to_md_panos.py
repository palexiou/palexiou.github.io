#!/usr/bin/env python3
# coding: utf-8
"""
BibTeX to Markdown Publication Converter

This script parses BibTeX entries from a file and generates markdown files for each publication
in the format YYYY-MM-DD-[url_slug].md for use with academic websites.
"""

import os
import re
import sys
from datetime import datetime
from typing import Dict, List, Optional, Tuple

# Function to extract BibTeX entries from a text file
def extract_bibtex_entries(file_path: str) -> List[str]:
    """
    Extract BibTeX entries from a text file.
    
    Args:
        file_path: Path to the input file
        
    Returns:
        List of BibTeX entry strings
    """
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Find all entries that start with @article or @book etc.
    entries = []
    
    # Regular BibTeX format (with curly braces)
    pattern1 = r'@[a-zA-Z]+\s*{[^@]*?}'
    entries.extend(re.findall(pattern1, content, re.DOTALL))
    
    # Alternative format (without explicit braces, just fields)
    non_standard_entries = re.findall(r'(?<!@)[A-Za-z]+\s+[A-Za-z][^,]*,[^@]*?,\s*\d{4}(?:,|\n)', content, re.DOTALL)
    for entry in non_standard_entries:
        if entry.strip() and not any(entry.strip() in e for e in entries):
            entries.append(entry.strip())
    
    return entries

# Function to parse a BibTeX entry into a dictionary
def parse_bibtex_entry(entry: str) -> Dict[str, str]:
    """
    Parse a BibTeX entry into a dictionary.
    
    Args:
        entry: BibTeX entry string
        
    Returns:
        Dictionary with BibTeX fields
    """
    # Initialize an empty dictionary to store the fields
    fields = {}
    
    # Try to extract entry type and key (for standard BibTeX)
    match = re.match(r'@([a-zA-Z]+)\s*{\s*([^,]*)', entry)
    if match:
        fields['entry_type'] = match.group(1).lower()
        fields['key'] = match.group(2).strip()
    else:
        # For non-standard entries, let's set some defaults
        fields['entry_type'] = 'article'
        fields['key'] = 'unknown'
    
    # Extract all field-value pairs
    # Look for field = {value} or field = "value" patterns
    for field_match in re.finditer(r'([a-zA-Z_]+)\s*=\s*(?:{((?:[^{}]|{[^{}]*})*)}|"([^"]*)")', entry, re.DOTALL):
        field = field_match.group(1).lower()
        # Get value from either {} or "" depending on which one matched
        value = field_match.group(2) if field_match.group(2) is not None else field_match.group(3)
        fields[field] = value.strip()
    
    # Handle alternative format
    if not fields.get('title') and not fields.get('author'):
        # Try to match title, journal, year, etc. in the non-standard format
        match = re.search(r'([^,]+),\s*([^,]+),\s*(\d{4})', entry)
        if match:
            fields['title'] = match.group(1).strip()
            fields['journal'] = match.group(2).strip()
            fields['year'] = match.group(3).strip()
            
            # Try to extract authors
            authors = re.search(r'([^,]+)$', entry)
            if authors:
                fields['author'] = authors.group(1).strip()
    
    return fields

# Function to format authors from BibTeX format
def format_authors(author_string: str) -> str:
    """
    Format authors from BibTeX format to a readable format.
    
    Args:
        author_string: BibTeX author string
        
    Returns:
        Formatted author string
    """
    if not author_string:
        return ""
    
    # Split by 'and' for multiple authors
    authors = re.split(r'\s+and\s+', author_string)
    
    # Clean up each author
    formatted_authors = []
    for author in authors:
        # Remove any extra whitespace
        author = author.strip()
        
        # Handle "LastName, FirstName" format
        if ',' in author:
            parts = author.split(',', 1)
            author = f"{parts[1].strip()} {parts[0].strip()}"
        
        formatted_authors.append(author)
    
    # Join authors with commas and 'and' for the last one
    if len(formatted_authors) == 1:
        return formatted_authors[0]
    elif len(formatted_authors) == 2:
        return f"{formatted_authors[0]} and {formatted_authors[1]}"
    else:
        return ", ".join(formatted_authors[:-1]) + f", and {formatted_authors[-1]}"

# Function to get date information from a BibTeX entry
def get_date_info(entry: Dict[str, str]) -> Tuple[str, str]:
    """
    Extract date information from a BibTeX entry.
    
    Args:
        entry: Dictionary with BibTeX fields
        
    Returns:
        Tuple of (YYYY-MM-DD, year)
    """
    year = entry.get('year', '').strip()
    month = entry.get('month', '01').strip()
    
    # Convert month name to number if necessary
    month_map = {
        'jan': '01', 'january': '01',
        'feb': '02', 'february': '02',
        'mar': '03', 'march': '03',
        'apr': '04', 'april': '04',
        'may': '05',
        'jun': '06', 'june': '06',
        'jul': '07', 'july': '07',
        'aug': '08', 'august': '08',
        'sep': '09', 'september': '09',
        'oct': '10', 'october': '10',
        'nov': '11', 'november': '11',
        'dec': '12', 'december': '12'
    }
    
    # Convert numeric months
    if month.isdigit():
        month = month.zfill(2)
    else:
        month = month_map.get(month.lower(), '01')
    
    # Default to '01' for missing info
    if not year:
        year = datetime.now().strftime('%Y')
    
    date_str = f"{year}-{month}-01"
    
    return date_str, year

# Function to generate a URL slug from a title
def generate_url_slug(title: str) -> str:
    """
    Generate a URL slug from a title.
    
    Args:
        title: Publication title
        
    Returns:
        URL slug
    """
    # Remove special characters and convert to lowercase
    slug = re.sub(r'[^\w\s-]', '', title.lower())
    # Replace spaces with hyphens
    slug = re.sub(r'\s+', '-', slug)
    # Limit length
    slug = slug[:50]
    # Remove trailing hyphen
    slug = slug.rstrip('-')
    
    return slug

# Function to generate a citation string
def generate_citation(entry: Dict[str, str]) -> str:
    """
    Generate a citation string from a BibTeX entry.
    
    Args:
        entry: Dictionary with BibTeX fields
        
    Returns:
        Citation string
    """
    # Format authors
    authors = format_authors(entry.get('author', ''))
    
    # Get title
    title = entry.get('title', 'Unknown Title')
    
    # Get venue/journal
    venue = entry.get('journal', entry.get('booktitle', 'Unknown Venue'))
    
    # Get year
    year = entry.get('year', '')
    
    # Get volume and number
    volume = entry.get('volume', '')
    number = entry.get('number', '')
    pages = entry.get('pages', '')
    
    # Create citation
    citation = f"{authors}. ({year}). {title}. "
    
    if venue:
        citation += f"{venue}"
        
        if volume:
            citation += f", {volume}"
            
        if number:
            citation += f"({number})"
            
        if pages:
            citation += f", {pages}"
    
    return citation

# Function to escape special characters for YAML
def html_escape(text: str) -> str:
    """
    Escape special characters for YAML.
    
    Args:
        text: Input text
        
    Returns:
        Escaped text
    """
    html_escape_table = {
        "&": "&amp;",
        '"': "&quot;",
        "'": "&apos;"
    }
    return "".join(html_escape_table.get(c, c) for c in text)

# Function to generate markdown file for a publication
def generate_markdown(entry: Dict[str, str], output_dir: str) -> None:
    """
    Generate a markdown file for a publication.
    
    Args:
        entry: Dictionary with BibTeX fields
        output_dir: Output directory for markdown files
    """
    # Get date information
    date_str, year = get_date_info(entry)
    
    # Get title
    title = entry.get('title', 'Unknown Title')
    
    # Generate URL slug
    url_slug = generate_url_slug(title)
    
    # Create filenames
    md_filename = f"{date_str}-{url_slug}.md"
    html_filename = f"{date_str}-{url_slug}"
    
    # Get venue/journal
    venue = entry.get('journal', entry.get('booktitle', 'Unknown Venue'))
    
    # Get DOI/URL
    paper_url = entry.get('url', entry.get('doi', ''))
    if paper_url and paper_url.startswith('10.'):
        paper_url = f"https://doi.org/{paper_url}"
    
    # Generate citation
    citation = generate_citation(entry)
    
    # Create markdown content
    md = f"---\ntitle: \"{html_escape(title)}\"\n"
    md += "collection: publications\n"
    md += f"permalink: /publication/{html_filename}\n"
    md += f"date: {date_str}\n"
    md += f"venue: '{html_escape(venue)}'\n"
    
    if paper_url:
        md += f"paperurl: '{paper_url}'\n"
        
    md += f"citation: '{html_escape(citation)}'\n"
    md += "---\n\n"
    
    if paper_url:
        md += f"<a href='{paper_url}'>Download paper here</a>\n\n"
        
    md += f"Recommended citation: {citation}"
    
    # Ensure output directory exists
    os.makedirs(output_dir, exist_ok=True)
    
    # Write markdown file
    output_path = os.path.join(output_dir, md_filename)
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write(md)
    
    print(f"Generated {output_path}")

def main():
    """Main function to run the script."""
    if len(sys.argv) < 2:
        print("Usage: python bibtex_to_md.py <input_file> [output_dir]")
        sys.exit(1)
    
    input_file = sys.argv[1]
    output_dir = sys.argv[2] if len(sys.argv) > 2 else "_publications"
    
    print(f"Processing {input_file}...")
    
    # Extract BibTeX entries
    entries = extract_bibtex_entries(input_file)
    print(f"Found {len(entries)} entries")
    
    # Process each entry
    for entry_str in entries:
        try:
            entry = parse_bibtex_entry(entry_str)
            if entry.get('title'):  # Only process entries with titles
                generate_markdown(entry, output_dir)
        except Exception as e:
            print(f"Error processing entry: {e}")
            print(f"Entry: {entry_str[:100]}...")
    
    print(f"Done! Generated markdown files in {output_dir}")

if __name__ == "__main__":
    main()