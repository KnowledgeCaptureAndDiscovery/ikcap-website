---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Fragflow"
summary: "Finding common fragments in scientific workflows"
authors: []
tags: []
categories: []
date: 2022-05-09T16:21:53-07:00

# Optional external URL for project (replaces project detail page).
external_link: ""

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Custom links (optional).
#   Uncomment and edit lines below to show custom links.
# links:
# - name: Follow
#   url: https://twitter.com
#   icon_pack: fab
#   icon: twitter

url_code: ""
url_pdf: ""
url_slides: ""
url_video: ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: ""
---
FragFlow
===================

Project designed for finding internal macro and composite workflow motifs in scientific workflow, defined according to 

 http://purl.org/net/wf-motifs#InternalMacro and http://purl.org/net/wf-motifs#CompositeWorkflow.
 
The project finds a set of workflow fragments from workflow specifications and/or workflow executions and links 
the results to the corpus. The results are linked according to the Workflow Fragment Description Ontology: http://purl.org/net/wf-fd

In order to achieve the results, this project defines diverse operations for graph manipulation and formatting. In particular:

* Generic readers and writers that can read and write different workflow specifications and traces (currently supported: OPMW, OPM)
* Inference and abstraction of a workfow collection or individual workflows.
* Remote querying and adaptation to process RDF workflows exposed as Linked Data.
* Formatting output to be read by the SUBDUE and PAFI tools.
* Capability of saving the results as RDF.
* Computation of statistics on the results obtained, and binding the fragments proposed by the tools to the results.

The project is configured as a Netbeans project right now. All the libraries and dependencies are jar files contained in the /lib folder.

Current ongoing work:
* Adapt the framework to different types of graph mining algorithms. Currently supported: SUBDUE, PAFI, Parsemis (gSpan, Gaston(ongoing))
* Adapt the framework to read from different types of workflows. Currently supported: OPMW, LONI Pipeline
