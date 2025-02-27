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
