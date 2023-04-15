---
# Page title
title: KnowledgeCapture And Discovery 
# Page type - we want a landing page (such as a homepage)
type: landing

# Your landing page sections - add as many different content blocks as you like
sections:
  # A section to display blog posts
  - block: hero
    content:
      image:
        filename: team.png
      title: KnowledgeCapture And Discovery
      text: We develop Artificial Intelligence (AI) approaches that use knowledge to accelerate and innovate scientific discovery processes that are unnecessarily carried out manually and inefficiently today.
    design:
      # Choose how many columns the section has. Valid values: '1' or '2'.
      columns: "1"
      # Choose your content listing view - here we use the `showcase` view
      view: showcase
      # For the Showcase view, do you want to flip alternate rows?
      flip_alt_rows: true
  - block: features
    content:
      title: Research Interests
      items:
        - name: Knowledge capture
          description: Representing and acquiring knowledge to be used in AI systems
          icon: brain
          icon_pack: fas
        - name: Semantic Workflows
          description: Automated reasoning about characteristics of data and steps in computational experiments
          icon: gears
          icon_pack: fas
        - name: Ontology Tools
          description: Collaborative ontology development and sharing
          icon: toolbox
          icon_pack: fas
        - name: Scientific Discovery
          description: Efficient exploration of alternative methods to analyze data
          icon: flask
          icon_pack: fas
        - name: Task-based collaboration
          description: Collaborations that are driven by a shared scientific question
          icon: people-group
          icon_pack: fas
        - name: Provenance
          description: Capturing the history of scientific research
          icon: timeline
          icon_pack: fas
        - name: Knowledge Networks
          description: Interconnecting scientific knowledge in the Web
          icon: circle-nodes
          icon_pack: fas
        - name: Reproducibility
          description: Improving scientific publications
          icon: camera-retro
          icon_pack: fas
        - name: Machine Learning
          description: Intelligent assistance for data analysis
          icon: magnifying-glass-chart
          icon_pack: fas
  - block: portfolio
    id: projects
    content:
      title: Projects
      filters:
        # Folders to display content from
        folders:
          - project
        # Only show content with these tags
        tags: []
        # Exclude content with these tags
        exclude_tags: []
        # Which Hugo page kinds to show (https://gohugo.io/templates/section-templates/#page-kinds)
        kinds:
          - page
      # Field to sort by, such as Date or Title
      sort_by: "Title"
      sort_ascending: false
      # Default portfolio filter button
      # 0 corresponds to the first button below and so on
      # For example, 0 will default to showing all content as the first button below shows content with *any* tag
      default_button_index: 0
      # Filter button toolbar (optional).
      # Add or remove as many buttons as you like.
      # To show all content, set `tag` to "*".
      # To filter by a specific tag, set `tag` to an existing tag name.
      # To remove the button toolbar, delete the entire `buttons` block.
      buttons:
        - name: Featured
          tag: Featured
        - name: All
          tag: "*"
    design:
      # See Page Builder docs for all section customization options.
      # Choose how many columns the section has. Valid values: '1' or '2'.
      columns: "2"
      # Choose a listing view
      view: compact
      # For Showcase view, flip alternate rows?
      flip_alt_rows: false
  - block: people_v1
    Title: Meet the team
    Params:
      subtitle: Our [collaborators](../collaborators)
      content:
        user_groups:
          - Principal Investigators
          - Researchers
          - Administration
          - Research Engineers
          - Visitors
      design:
        show_interests: false
        show_role: true
        show_social: true
---

---
