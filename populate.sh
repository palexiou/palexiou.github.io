#!/bin/bash

# Script to populate academicpages website tabs with CV data
# Creates markdown files for teaching, talks, portfolio, and CV pages
# Using consistent YYYY-MM-DD format for all dates

echo "Starting website tabs population script..."

# Create necessary directories if they don't exist
mkdir -p _teaching
mkdir -p _talks
mkdir -p _portfolio
mkdir -p _pages

# --------------------------------------------------
# Create Teaching files
# --------------------------------------------------
echo "Creating teaching files..."

# University of Malta - Bioinformatics
cat << EOF > "_teaching/2024-01-01-bioinformatics.md"
---
title: "Bioinformatics PHB3504"
collection: teaching
type: "University course"
permalink: /teaching/2024-01-01-bioinformatics
venue: "University of Malta"
date: 2024-01-01
location: "Malta"
---

Course focusing on bioinformatics principles and applications in genomics research. Topics include sequence analysis, structural bioinformatics, and computational approaches for analyzing biological data.
EOF

# University of Malta - Molecular Recognition
cat << EOF > "_teaching/2024-01-01-molecular-recognition.md"
---
title: "Molecular Recognition and Computational Drug Design PHB2504"
collection: teaching
type: "University course"
permalink: /teaching/2024-01-01-molecular-recognition
venue: "University of Malta"
date: 2024-01-01
location: "Malta"
---

Course covering molecular recognition principles and computational approaches to drug design. Topics include protein-ligand interactions, molecular docking, and structure-based drug design methodologies.
EOF

# Masaryk - Advances and Challenges
cat << EOF > "_teaching/2020-01-01-advances-challenges.md"
---
title: "Advances and Challenges in Modern Biology CORE019"
collection: teaching
type: "University course"
permalink: /teaching/2020-01-01-advances-challenges
venue: "Masaryk University"
date: 2020-01-01
location: "Brno, Czech Republic"
---

Advanced course exploring current challenges and recent developments in modern biology, with emphasis on computational and systems approaches.
EOF

# Masaryk - Synthetic Biology
cat << EOF > "_teaching/2019-01-01-synthetic-biology.md"
---
title: "Synthetic Biology Bi9690en"
collection: teaching
type: "University course"
permalink: /teaching/2019-01-01-synthetic-biology
venue: "Masaryk University"
date: 2019-01-01
location: "Brno, Czech Republic"
---

Course on the principles and applications of synthetic biology, covering genetic circuit design, metabolic engineering, and computational tools for synthetic biology.
EOF

# Masaryk - Intro to Bioinformatics
cat << EOF > "_teaching/2018-01-01-bioinformatics-intro.md"
---
title: "Introduction to Bioinformatics LF:DSIB01"
collection: teaching
type: "University course"
permalink: /teaching/2018-01-01-intro-bioinformatics
venue: "Masaryk University"
date: 2018-01-01
location: "Brno, Czech Republic"
---

Introductory course to bioinformatics, covering basic concepts in sequence analysis, genomics, and computational approaches to biological data analysis.
EOF

# Masaryk - Genomic Technologies
cat << EOF > "_teaching/2018-01-01-genomic-technologies.md"
---
title: "Modern Genomic Technologies DSMGT01"
collection: teaching
type: "University course"
permalink: /teaching/2018-01-01-genomic-technologies
venue: "Masaryk University"
date: 2018-01-01
location: "Brno, Czech Republic"
---

Course focusing on modern genomic technologies and methodologies, including next-generation sequencing, single-cell technologies, and computational analysis of genomic data.
EOF

# --------------------------------------------------
# Create Talks files
# --------------------------------------------------
echo "Creating talks files..."

# ABCD - EMBO Sectoral Meeting
cat << EOF > "_talks/2023-10-01-abcd-embo.md"
---
title: "ABCD - EMBO Sectoral Meeting (AI, Bioinformatics, Computation, Data)"
collection: talks
type: "Conference organization"
permalink: /talks/2023-10-01-abcd-embo
venue: "ABCD - EMBO Sectoral Meeting"
date: 2023-10-01
location: "Malta"
---

Main organizer of the ABCD (AI, Bioinformatics, Computation, Data) EMBO Sectoral Meeting that brought together researchers in computational biology and bioinformatics.
EOF

# HSCBB23
cat << EOF > "_talks/2023-09-01-hscbb.md"
---
title: "Beyond microRNAs: Analysis of chimeric reads characterises the diverse targetome of AGO2-mediated regulation"
collection: talks
type: "Invited talk"
permalink: /talks/2023-09-01-hscbb
venue: "17th Conference of the Hellenic Society for Computational Biology and Bioinformatics (HSCBB23)"
date: 2023-09-01
location: "Thessaloniki, Greece"
---

Invited talk presenting research on AGO2-mediated regulation and the analysis of chimeric reads to characterize the diverse targetome beyond traditional microRNA targets.
EOF

# EMBO RNA Sectoral Meeting
cat << EOF > "_talks/2023-07-01-embo-rna.md"
---
title: "Ago2 mediated binding - EMBO RNA Sectoral Meeting"
collection: talks
type: "Invited talk"
permalink: /talks/2023-07-01-embo-rna
venue: "EMBO RNA Sectoral Meeting"
date: 2023-07-01
location: "Heidelberg, Germany"
---

Invited presentation on Ago2 mediated binding mechanisms and their implications for RNA regulation.
EOF

# FEBS
cat << EOF > "_talks/2023-05-01-febs.md"
---
title: "Finding Hairpins in a Genomic Junkyard"
collection: talks
type: "Invited talk"
permalink: /talks/2023-05-01-febs
venue: "FEBS"
date: 2023-05-01
location: "Online"
---

Invited talk focusing on computational approaches to identify hairpin structures in genomic sequences and their potential biological significance.
EOF

# Young Investigator Network
cat << EOF > "_talks/2023-04-01-yin.md"
---
title: "A multi-omics approach to disease mechanisms"
collection: talks
type: "Conference talk"
permalink: /talks/2023-04-01-yin
venue: "Young Investigator Network Annual Meeting 2023"
date: 2023-04-01
location: "Milan, Italy"
---

Presentation on multi-omics approaches to understanding disease mechanisms, integrating genomics, transcriptomics, and other -omics data.
EOF

# ERA Chair Lecture
cat << EOF > "_talks/2023-03-01-era-chair.md"
---
title: "Developments in Machine Learning for -omics Analysis"
collection: talks
type: "Invited lecture"
permalink: /talks/2023-03-01-era-chair
venue: "ERA Chair Lecture Series (Cyprus)"
date: 2023-03-01
location: "Online"
---

Invited lecture discussing recent developments in machine learning approaches for analyzing various -omics data, including genomics, transcriptomics, and proteomics.
EOF

# ML for microRNA
cat << EOF > "_talks/2023-02-01-ml-mirna.md"
---
title: "Development of ML powered microRNA target site prediction methods"
collection: talks
type: "Invited talk"
permalink: /talks/2023-02-01-ml-mirna
venue: "Masaryk University"
date: 2023-02-01
location: "Brno, Czech Republic"
---

Talk on the development of machine learning approaches for predicting microRNA target sites and their applications in understanding gene regulation.
EOF

# RNAct Conference
cat << EOF > "_talks/2022-10-01-rnact.md"
---
title: "Deep Learning the binding patterns of RNA-binding proteins using ENNGene"
collection: talks
type: "Conference talk"
permalink: /talks/2022-10-01-rnact
venue: "RNAct Conference"
date: 2022-10-01
location: "Valencia, Spain"
---

Presentation on applying deep learning approaches to understand the binding patterns of RNA-binding proteins, utilizing the ENNGene tool.
EOF

# --------------------------------------------------
# Create Portfolio/Projects files
# --------------------------------------------------
echo "Creating portfolio/project files..."

# BioGeMT
cat << EOF > "_portfolio/2023-01-01-biogemt.md"
---
title: "Bioinformatics for Genomics in Malta (BioGeMT)"
excerpt: "ERA Chair project to establish bioinformatics capabilities for genomics research in Malta."
collection: portfolio
date: 2023-01-01
---

As the ERA Chair, leading the Bioinformatics for Genomics in Malta (BioGeMT) project from 2023 to 2027. This project aims to establish state-of-the-art bioinformatics capabilities for genomics research at the University of Malta. The initiative includes building research infrastructure, developing novel computational approaches, and training the next generation of bioinformaticians in Malta.

Project objectives:
- Establish a bioinformatics research group focusing on genomics and transcriptomics
- Develop innovative computational methods for analyzing -omics data
- Build local capacity through training and education
- Foster international collaborations in bioinformatics research
EOF

# MALTAomics
cat << EOF > "_portfolio/2023-01-01-maltaomics.md"
---
title: "MALTAomics Summer Schools"
excerpt: "IPAS+ project to organize summer schools focused on omics technologies and bioinformatics in Malta."
collection: portfolio
date: 2023-01-01
---

The MALTAomics Summer Schools project aims to establish educational programs focused on omics technologies and bioinformatics analysis in Malta. These schools provide hands-on training in cutting-edge methodologies for analyzing genomic, transcriptomic, and other -omics data.

Key components:
- Intensive courses in bioinformatics and computational biology
- Hands-on workshops on -omics data analysis
- Guest lectures from international experts
- Networking opportunities for participants
EOF

# RNA Biology Integration
cat << EOF > "_portfolio/2020-01-01-rnabiology.md"
---
title: "Integration of RNA Biology for Next-Generation Scientists"
excerpt: "TWINNING project focused on integrating RNA biology research and training next-generation scientists."
collection: portfolio
date: 2020-01-01
---

TWINNING project (2020-2023) focused on integrating RNA biology research across partner institutions and training the next generation of scientists. The project facilitated knowledge exchange, collaborative research, and the development of innovative approaches to studying RNA biology.

Project achievements:
- Established collaborative research networks
- Organized workshops and training events
- Developed shared resources and methodologies
- Published joint research papers
- Trained early-career researchers in advanced RNA biology techniques
EOF

# Deep Learning for Genomics
cat << EOF > "_portfolio/2019-01-01-deeplearning.md"
---
title: "Deep Learning for genomic and transcriptomic pattern identification"
excerpt: "EMBO Installation Grant project applying deep learning to identify patterns in genomic and transcriptomic data."
collection: portfolio
date: 2019-01-01
---

EMBO Installation Grant project (2019-2023) focused on applying deep learning approaches to identify patterns in genomic and transcriptomic data. The research aimed to develop novel computational methods for understanding complex biological patterns and regulatory mechanisms.

Research focus areas:
- Development of deep learning architectures for sequence analysis
- Identification of regulatory elements in genomic sequences
- Characterization of transcriptomic patterns
- Integration of multi-omics data through machine learning
EOF

# MSCA-IF DNA Language
cat << EOF > "_portfolio/2019-01-01-dna-language.md"
---
title: "Deciphering the Language of DNA to Identify Regulatory Elements"
excerpt: "MSCA-IF project focused on computational approaches to identify regulatory elements in DNA."
collection: portfolio
date: 2019-01-01
---

Marie Skłodowska-Curie Individual Fellowship project (2019-2023) aimed at developing computational approaches to decipher the "language" of DNA and identify regulatory elements. The research focused on classifying transcripts into functional classes and understanding the genomic code that regulates gene expression.

Key research components:
- Development of computational models to predict regulatory elements
- Classification of transcripts based on sequence features
- Integration of evolutionary conservation in regulatory element prediction
- Experimental validation of predicted regulatory regions
EOF

# MSCA-WF RNA Binding
cat << EOF > "_portfolio/2018-01-01-rna-binding.md"
---
title: "Using Deep Learning to understand RNA Binding Protein binding characteristics"
excerpt: "MSCA-WF project applying deep learning to characterize RNA binding protein interactions."
collection: portfolio
date: 2018-01-01
---

Marie Skłodowska-Curie Widening Fellowship project (2018-2022) focused on applying deep learning approaches to understand the binding characteristics of RNA Binding Proteins (RBPs). The research aimed to develop predictive models for RBP binding sites and elucidate the principles governing RNA-protein interactions.

Research achievements:
- Development of deep learning models for RBP binding prediction
- Characterization of sequence and structural features important for RBP binding
- Creation of tools for analyzing RBP binding patterns
- Integration of multi-omics data to improve binding site prediction
EOF

# GACR miRNA
cat << EOF > "_portfolio/2017-01-01-mirna-binding.md"
---
title: "Seed-agnostic miRNA binding site classification"
excerpt: "GACR Junior project developing computational approaches for miRNA binding site classification."
collection: portfolio
date: 2017-01-01
---

Czech Granting Agency (GACR) Junior project (2017-2022) focused on developing computational approaches for microRNA binding site classification that go beyond the traditional seed-based methods. The research aimed to identify and characterize non-canonical miRNA binding sites and improve target prediction accuracy.

Research components:
- Development of seed-agnostic classification algorithms
- Integration of RNA secondary structure in binding site prediction
- Characterization of non-canonical miRNA binding mechanisms
- Creation of tools for improved miRNA target prediction
EOF

# --------------------------------------------------
# Create CV page
# --------------------------------------------------
echo "Creating CV page..."

cat << EOF > "_pages/cv.md"
---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

Education
======
* Ph.D in Genetics, Aristotle University of Thessaloniki & BSRC Alexander Fleming, 2011
* M.Sc. in Molecular Cell Biology and Bioinformatics, University of Amsterdam, 2006
* B.Sc. in Genetics with Industrial Placement, University of Aberdeen, 2004

Work Experience
======
* 2023-Present: ERA Chair (Bioinformatics for Genomics)
  * University of Malta
  * European Research Agency (ERA) Chair
  * Group Leader of Bioinformatics for Genomics
  
* 2018-2022: Junior Research Group Leader & Head of Bioinformatics Core Facility
  * Central European Institute of Technology (CEITEC-MU)
  * Brno, Czech Republic
  * Principal Investigator focusing on Machine Learning methodologies for Genomics research
  
* 2011-2017: Postdoctoral Researcher
  * University of Pennsylvania, Perelman School of Medicine
  * Philadelphia, United States
  * Analysis of biological data using bioinformatics methods, publication in scientific journals

Funded Projects
======
* 2023-2027: ERA Chair - Bioinformatics for Genomics in Malta (BioGeMT)
* 2023: IPAS+ - MALTAomics Summer Schools
* 2020-2023: TWINNING - Integration of RNA Biology for Next-Generation Scientists
* 2019-2023: EMBO Installation Grant - Deep Learning for genomic and transcriptomic pattern identification
* 2019-2023: MSCA-IF - Deciphering the Language of DNA to Identify Regulatory Elements and Classify Transcripts Into Functional Classes
* 2018-2022: MSCA-WF - Using Deep Learning to understand RNA Binding Protein binding characteristics
* 2017-2022: GACR Junior (Czech Granting Agency) - Seed-agnostic miRNA binding site classification

Teaching
======
{% for post in site.teaching %}
  {% include archive-single.html %}
{% endfor %}

Talks
======
{% for post in site.talks %}
  {% include archive-single.html %}
{% endfor %}

Supervision
======
* Postdoctoral Researchers
  * 2 Active Postdoctoral Researchers
* Doctoral Candidates
  * 5 Active Doctoral Candidates (PhD Candidates)
  * 2 have Defended successfully
* MSc Students
  * 2 Active MSc Students
  * 3 have Defended successfully
* BSc Students
  * No Active BSc Students under direct supervision
  * 1 BSc Student has Defended successfully

Publications
======
{% for post in site.publications reversed %}
  {% include archive-single.html %}
{% endfor %}
EOF

echo "Script completed successfully. All tabs have been populated."
echo "Check the _teaching, _talks, _portfolio, and _pages directories for the created files."
echo ""
echo "NOTE: You may need to adjust some content or dates for accuracy."
echo "Run the publications script separately if you haven't already done so."


# Make sure the publications directory exists
mkdir -p _publications

# Function to create a file with proper formatting and correct date format (YYYY-MM-DD)
create_publication_file() {
    local title="$1"
    local authors="$2"
    local venue="$3"
    local year="$4"
    local citations="$5"
    local doi="$6"
    
    # Format the filename: remove special characters and use lowercase with hyphens
    local filename=$(echo "$year-01-01-${title:0:40}" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/--*/-/g' | sed 's/-$//' | sed 's/^-//')
    
    # Ensure the filename is unique by adding the first 8 chars of an md5 hash if needed
    local hash=$(echo "$title" | md5sum | cut -c1-8)
    filename="${year}-01-01-${hash}-${filename:0:40}.md"
    
    echo "Creating file: $filename"
    
    # Create the publication file
    cat << EOF > "_publications/$filename"
---
title: "$title"
collection: publications
permalink: /publication/$(basename "$filename" .md)
excerpt: 'This paper discusses ${title:0:100}...'
date: $year-01-01
venue: '$venue'
paperurl: 'https://doi.org/$doi'
citation: '$authors. ($year). $title. $venue.'
---

This publication presents research on ${title:0:100}...

[Download paper here](https://doi.org/$doi)

Recommended citation: $authors. ($year). $title. $venue.
EOF
}

echo "Starting publication file creation..."

# Publications data
# Format: create_publication_file "Title" "Authors" "Venue" "Year" "Citations" "DOI"

create_publication_file "Deep learning and direct sequencing of labeled RNA captures transcriptome dynamics" "Martinek V, Martin J, Belair C, Payea MJ, Malla S, Alexiou P, et al." "NAR Genomics and Bioinformatics 6(3), lqae116" "2024" "2" "10.1093/nargab/lqae116"

create_publication_file "RBP-Tar–a searchable database for experimental RBP binding sites" "Gresova K, Racek T, Martinek V, Cechak D, Svobodova R, Alexiou P" "F1000Research 12, 755" "2024" "" "10.12688/f1000research.129331.1"

create_publication_file "miRBench: A Comprehensive microRNA Binding Site Prediction Training and Benchmarking Dataset" "Sammut S, Gresova K, Tzimotoudis D, Marsalkova E, Cechak D, Alexiou P" "bioRxiv, 2024.11.14.623628" "2024" "" "10.1101/2024.11.14.623628"

create_publication_file "Hormone-regulated expansins: expression, localization, and cell wall biomechanics in Arabidopsis root growth" "Samalova M, Melnikava A, Elsayad K, Peaucelle A, Gahurova E, Vain T, Alexiou P, Komis G, Samaj J, Hussey PJ, Moore I" "Plant Physiology 194(1), 209-228" "2024" "34" "10.1093/plphys/kiad483"

create_publication_file "Analysis of chimeric reads characterises the diverse targetome of AGO2-mediated regulation" "Hejret V, Varadarajan NM, Klimentova E, Gresova K, Giassa IC, Alexiou P" "Scientific Reports 13(1), 22895" "2023" "4" "10.1038/s41598-023-49798-4"

create_publication_file "The SAP domain of Ku facilitates its efficient loading onto DNA ends" "Fulneček J, Klimentová E, Cairo A, Bukovcakova SV, Alexiou P, Prokop Z, Fajkus J" "Nucleic Acids Research 51(21), 11706-11716" "2023" "2" "10.1093/nar/gkad885"

create_publication_file "Transfer learning allows accurate RBP target site prediction with limited sample sizes" "Vaculík O, Chalupová E, Grešová K, Majtner T, Alexiou P" "Biology 12(10), 1276" "2023" "3" "10.3390/biology12101276"

create_publication_file "Catsnap: a user‐friendly algorithm for determining the conservation of protein variants reveals extensive parallelisms in the evolution of alternative splicing" "Timofeyenko K, Kanavalau D, Alexiou P, Kalyna M, Růžička K" "New Phytologist 238(4), 1722-1732" "2023" "3" "10.1111/nph.18880"

create_publication_file "The MOV10 RNA helicase is a dosage-dependent host restriction factor for LINE1 retrotransposition in mice" "Guan Y, Gao H, Leu NA, Vourekas A, Alexiou P, Maragkakis M, Kang Z, Pillai RS, Mourelatos Z, Wang PJ" "PLoS Genetics 19(5), e1010566" "2023" "4" "10.1371/journal.pgen.1010566"

create_publication_file "Genomic benchmarks: a collection of datasets for genomic sequence classification" "Grešová K, Martinek V, Čechák D, Šimeček P, Alexiou P" "BMC Genomic Data 24(1), 25" "2023" "64" "10.1186/s12863-023-01107-8"

create_publication_file "Using attribution sequence alignment to interpret deep learning models for miRNA binding site prediction" "Grešová K, Vaculík O, Alexiou P" "Biology 12(3), 369" "2023" "1" "10.3390/biology12030369"

create_publication_file "Using attribution sequence alignment to interpret deep learning models for miRNA binding site prediction. Biology 2023, 12, 369" "Grešová K, Vaculík O, Alexiou P" "Biology 12(3), 369" "2023" "1" "10.3390/biology12030369"

create_publication_file "miRBind: A deep learning method for miRNA binding classification" "Klimentová E, Hejret V, Krčmář J, Grešová K, Giassa IC, Alexiou P" "Genes 13(12), 2323" "2022" "8" "10.3390/genes13122323"

create_publication_file "Small RNA targets: advances in prediction tools and high-throughput profiling" "Grešová K, Alexiou P, Giassa IC" "Biology 11(12), 1798" "2022" "8" "10.3390/biology11121798"

create_publication_file "ENNGene: an Easy Neural Network model building tool for Genomics" "Chalupová E, Vaculík O, Poláček J, Jozefov F, Majtner T, Alexiou P" "BMC genomics 23(1), 248" "2022" "10" "10.1186/s12864-022-08477-w"

create_publication_file "Fine-tuning transformers for genomic tasks" "Martinek V, Cechak D, Gresova K, Alexiou P, Simecek P" "bioRxiv, 2022.02.07.479412" "2022" "7" "10.1101/2022.02.07.479412"

create_publication_file "miRBind: a Deep Learning method for miRNA binding classification" "Maršálková E, Hejret V, Grešová K, Giassa IC, Alexiou P" "Genes" "2022" "" ""

create_publication_file "Bioinformatics and machine learning approaches to understand the regulation of mobile genetic elements" "Giassa IC, Alexiou P" "Biology 10(9), 896" "2021" "7" "10.3390/biology10090896"

create_publication_file "Modulation of Aub–TDRD interactions elucidates piRNA amplification and germplasm formation" "Vrettos N, Maragkakis M, Alexiou P, Sgourdou P, Ibrahim F, Palmieri D, Axtell MJ, Sachidanandam R, Mourelatos Z" "Life Science Alliance 4(3)" "2021" "12" "10.26508/lsa.202000912"

create_publication_file "DIANA-miRGen v4: indexing promoters and regulators for more than 1500 microRNAs" "Perdikopanis N, Georgakilas GK, Grigoriadis D, Pierros V, Kavakiotis I, Alexiou P, Liampa I, Tan GS, Vlahou-Panteliou A, Vergoulis T, Dalamagas T, Hatzigeorgiou AG" "Nucleic Acids Research 49(D1), D151-D159" "2021" "25" "10.1093/nar/gkaa1060"

create_publication_file "PENGUINN: Precise exploration of nuclear G-quadruplexes using interpretable neural networks" "Klimentova E, Polacek J, Simecek P, Alexiou P" "Frontiers in genetics 11, 568546" "2020" "32" "10.3389/fgene.2020.568546"

create_publication_file "CDK9 activity is critical for maintaining MDM4 overexpression in tumor cells" "Štětková M, Growková K, Fojtík P, Valčíková B, Palušová V, Verlande A, Češková P, Alexiou P, Hnilicová J, Uldrijan S, Vojtěšek B, Hrstka R, Bártková J, Bartek J, Hodný Z, Bouchal P, Krejčí L, Zdráhal Z, Parrilla A, Paruch K, Souček K" "Cell death & disease 11(9), 754" "2020" "28" "10.1038/s41419-020-02870-7"

create_publication_file "Multi-branch convolutional neural network for identification of small non-coding RNA genomic loci" "Georgakilas GK, Grioni A, Liakos KG, Chalupova E, Plessas FC, Alexiou P" "Scientific reports 10(1), 9486" "2020" "30" "10.1038/s41598-020-66454-3"

create_publication_file "Ribothrypsis, a novel process of canonical mRNA decay, mediates ribosome-phased mRNA endonucleolysis" "Ibrahim F, Maragkakis M, Alexiou P, Mourelatos Z" "Nature structural & molecular biology 25(4), 302-310" "2018" "69" "10.1038/s41594-018-0042-8"

create_publication_file "cCLIP-seq: retrieval of chimeric reads from HITS-CLIP (CLIP-seq) libraries" "Alexiou P, Maragkakis M, Mourelatos Z, Vourekas A" "Argonaute Proteins: Methods and Protocols, 87-100" "2018" "4" "10.1007/978-1-4939-7339-2_7"

create_publication_file "Kc167, a widely used Drosophila cell line, contains an active primary piRNA pathway" "Vrettos N, Maragkakis M, Alexiou P, Mourelatos Z" "Rna 23(1), 108-118" "2017" "17" "10.1261/rna.059139.116"

create_publication_file "Sequence-dependent but not sequence-specific piRNA adhesion traps mRNAs to the germ plasm" "Vourekas A, Alexiou P, Vrettos N, Maragkakis M, Mourelatos Z" "Nature 531(7594), 390-394" "2016" "135" "10.1038/nature17150"

create_publication_file "CLIPSeqTools—a novel bioinformatics CLIP-seq analysis suite" "Maragkakis M, Alexiou P, Nakaya T, Mourelatos Z" "RNA 22(1), 1-9" "2016" "38" "10.1261/rna.052167.115"

create_publication_file "GenOO: A programming framework for High Throughput Sequencing analysis" "Maragkakis M, Alexiou P, Mourelatos Z" "bioRxiv, 019265" "2015" "3" "10.1101/019265"

create_publication_file "The RNA helicase MOV10L1 binds piRNA precursors to initiate piRNA processing" "Vourekas A, Zheng K, Fu Q, Maragkakis M, Alexiou P, Ma J, Pillai RS, Mourelatos Z, Wang PJ" "Genes & development 29(6), 617-629" "2015" "166" "10.1101/gad.254631.114"

create_publication_file "A MicroRNA precursor surveillance system in quality control of MicroRNA synthesis" "Liu X, Zheng Q, Vrettos N, Maragkakis M, Alexiou P, Gregory BD, Mourelatos Z" "Molecular cell 55(6), 868-879" "2014" "102" "10.1016/j.molcel.2014.07.017"

create_publication_file "Mitochondrial protein BmPAPI modulates the length of mature piRNAs" "Honda S, Kirino Y, Maragkakis M, Alexiou P, Ohtaki A, Murali R, Mourelatos Z, Kirino Y" "Rna 19(10), 1405-1418" "2013" "92" "10.1261/rna.040428.113"

create_publication_file "FUS regulates genes coding for RNA-binding proteins in neurons by binding to their highly conserved introns" "Nakaya T, Alexiou P, Maragkakis M, Chang A, Mourelatos Z" "Rna 19(4), 498-509" "2013" "139" "10.1261/rna.037804.112"

create_publication_file "Identification of in vivo, conserved, TAF15 RNA binding sites reveals the impact of TAF15 on the neuronal transcriptome" "Ibrahim F, Maragkakis M, Alexiou P, Maronski MA, Dichter MA, Mourelatos Z" "Cell reports 3(2), 301-308" "2013" "48" "10.1016/j.celrep.2013.01.021"

create_publication_file "Mili and Miwi target RNA repertoire reveals piRNA biogenesis and function of Miwi in spermiogenesis" "Vourekas A, Zheng Q, Alexiou P, Maragkakis M, Kirino Y, Gregory BD, Mourelatos Z" "Nature structural & molecular biology 19(8), 773-781" "2012" "280" "10.1038/nsmb.2347"

create_publication_file "Functional microRNA targets in protein coding sequences" "Reczko M, Maragkakis M, Alexiou P, Grosse I, Hatzigeorgiou AG" "Bioinformatics 28(6), 771-776" "2012" "621" "10.1093/bioinformatics/bts043"

create_publication_file "Accurate microRNA target prediction using detailed binding site accessibility and machine learning on proteomics data" "Reczko M, Maragkakis M, Alexiou P, Papadopoulos GL, Hatzigeorgiou AG" "Frontiers in genetics 2, 103" "2012" "55" "10.3389/fgene.2011.00103"

create_publication_file "TarBase 6.0: capturing the exponential growth of miRNA targets with experimental support" "Vergoulis T, Vlachos IS, Alexiou P, Georgakilas G, Maragkakis M, Reczko M, Gerangelos S, Koziris N, Dalamagas T, Hatzigeorgiou AG" "Nucleic acids research 40(D1), D222-D229" "2012" "665" "10.1093/nar/gkr1161"

create_publication_file "DIANA-microT Web server upgrade supports Fly and Worm miRNA target prediction and bibliographic miRNA to disease association" "Maragkakis M, Vergoulis T, Alexiou P, Reczko M, Plomaritou K, Gousis M, Kourtis K, Koziris N, Dalamagas T, Hatzigeorgiou AG" "Nucleic acids research 39(suppl_2), W145-W148" "2011" "185" "10.1093/nar/gkr294"

create_publication_file "In vivo profiling of hypoxic mRNA and miRNA expression in gliomas and head and neck tumors" "Karar J, Marotta D, Jenkins WT, Kumanova M, Jenkins K, Tobias JW, Alexiou P, Maragkakis M, Hatzigeorgiou A, Giaccia AJ, Koumenis C" "Cancer Research 71(8_Supplement), 5004-5004" "2011" "1" "10.1158/1538-7445.AM2011-5004"

create_publication_file "Online resources for microRNA analysis" "Alexiou P, Maragkakis M, Hatzigeorgiou AG" "Journal of Nucleic Acids Investigation 2(1), e4-e4" "2011" "7" "10.4081/jnai.2011.e4"

create_publication_file "In Vivo Profiling of Hypoxic Gene Expression in Gliomas Using the Hypoxia Marker EF5 and Laser-capture Microdissection" "Marotta D, Karar J, Jenkins WT, Kumanova M, Jenkins KW, Tobias JW, Alexiou P, Maragkakis M, Hatzigeorgiou A, Giaccia AJ, Koumenis C" "Cancer research 71(3), 779-789" "2011" "66" "10.1158/0008-5472.CAN-10-1115"

create_publication_file "Development of computational systems for the study of the expression and function of miRNAs" "Alexiou P" "Αριστοτέλειο Πανεπιστήμιο Θεσσαλονίκης (ΑΠΘ). Σχολή Θετικών Επιστημών. Τμήμα Βιολογίας" "2011" "" ""

create_publication_file "The DIANA-mirExTra web server: from gene expression data to microRNA function" "Alexiou P, Maragkakis M, Papadopoulos GL, Simmosis VA, Zhang L, Hatzigeorgiou AG" "PloS one 5(2), e9171" "2010" "93" "10.1371/journal.pone.0009171"

create_publication_file "miRGen 2.0: a database of microRNA genomic information and regulation" "Alexiou P, Vergoulis T, Gleditzsch M, Prekas G, Dalamagas T, Megraw M, Grosse I, Sellis T, Hatzigeorgiou AG" "Nucleic acids research 38(suppl_1), D137-D141" "2010" "188" "10.1093/nar/gkp888"

create_publication_file "Accurate microRNA target prediction correlates with protein repression levels" "Maragkakis M, Alexiou P, Papadopoulos GL, Reczko M, Dalamagas T, Giannopoulos G, Goumas G, Koukis E, Kourtis K, Simossis VA, Sethupathy P, Vergoulis T, Koziris N, Sellis T, Tsanakas P, Hatzigeorgiou AG" "BMC bioinformatics 10, 1-10" "2009" "431" "10.1186/1471-2105-10-295"

create_publication_file "Lost in translation: an assessment and perspective for computational microRNA target identification" "Alexiou P, Maragkakis M, Papadopoulos GL, Reczko M, Hatzigeorgiou AG" "Bioinformatics 25(23), 3049-3055" "2009" "427" "10.1093/bioinformatics/btp565"

create_publication_file "DIANA-mirPath: Integrating human and mouse microRNAs in pathways" "Papadopoulos GL, Alexiou P, Maragkakis M, Reczko M, Hatzigeorgiou AG" "Bioinformatics 25(15), 1991-1993" "2009" "331" "10.1093/bioinformatics/btp299"

create_publication_file "DIANA-microT web server: elucidating microRNA functions through target prediction" "Maragkakis M, Reczko M, Simossis VA, Alexiou P, Papadopoulos GL, Dalamagas T, Giannopoulos G, Goumas G, Koukis E, Kourtis K, Vergoulis T, Koziris N, Sellis T, Tsanakas P, Hatzigeorgiou AG" "Nucleic acids research 37(suppl_2), W273-W276" "2009" "704" "10.1093/nar/gkp292"

create_publication_file "Genomic and epigenetic alterations deregulate microRNA expression in human epithelial ovarian cancer" "Zhang L, Volinia S, Bonome T, Calin GA, Greshock J, Yang N, Liu CG, Giannakakis A, Alexiou P, Hasegawa K, Johnstone CN, Megraw MS, Adams S, Lassus H, Huang J, Kaur S, Liang S, Sethupathy P, Leminen A, Simossis VA, Sandaltzopoulos R, Naomoto Y, Katsaros D, Gimotty PA, DeMichele A, Huang Q, Bützow R, Rustgi AK, Weber BL, Birrer MJ, Hatzigeorgiou AG, Croce CM, Coukos G" "Proceedings of the National Academy of Sciences 105(19), 7004" "2008" "721" "10.1073/pnas.0801615105"

echo "All publication files have been created in the _publications directory."