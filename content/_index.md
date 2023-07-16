---
date: "2023-07-15"
sections:
- block: hero
  content:
    title: Academic blogsite
  design:
    background:
      image:
        filename: binary-banner.png
      gradient_end: '#1976d2'
      gradient_start: '#004ba0'
      text_color_light: true
- block: about.biography
  content:
    title: Biography
    username: admin
  id: about
- block: experience
  content:
    date_format: Jan 2006
    items:
    - company: University of Bucharest, Department of Sociology
      company_logo: org-x
      company_url: ""
      date_end: ""
      date_start: "2002-02-01"
      description: Teaching research methodology and statistics.
      location: Bucharest, Romania
      title: Professor
    - company: Romanian Social Data Archive (RODA)
      company_logo: org-x
      company_url: "https://www.roda.ro"
      date_end: ""
      date_start: "2001-01-01"
      description: 
      location: Bucharest, Romania
      title: Director
    - company: Institute for Quality of Life Research (ICCV)
      company_logo: org-x
      company_url: "https://www.iccv.ro"
      date_end: "2002-01-31"
      date_start: "1998-09-01"
      description: 
      location: Bucharest, Romania
      title: Researcher
    title: Experience
  design:
    columns: "2"
- block: features
  content:
    items:
    - description: 75%
      icon: r-project
      icon_pack: fab
      name: R programming
    - description: 70%
      icon: chart-line
      icon_pack: fas
      name: Statistics
    - description: 90%
      icon: heart
      icon_pack: fas
      name: QCA
    - description: 30%
      icon: chess
      icon_pack: fas
      name: Chess
    - description: 60%
      icon: database
      icon_pack: fas
      name: Database management
    - description: 95%
      icon: university
      icon_pack: fas
      name: Teaching
    title: Skills
- block: collection
  content:
    filters:
      featured_only: true
      folders:
      - publication
    title: Featured Publications
  design:
    columns: "2"
    view: card
  id: featured
- block: collection
  content:
    count: 10
    filters:
      exclude_featured: true
      folders:
      - publication
    text: |-
      {{% callout note %}}
      Search for [relevant publications](./publication/).
      {{% /callout %}}
    title: Recent Publications
  design:
    columns: "2"
    view: citation
- block: markdown
  id: software
  content:
    text: My programming environment of choice is [R](https://www.r-project.org), because it is a high level software and it automatically does memory management when creating objects. It is the sort of language where users can focus on substantive issues, rather than pure programming.<br><br>

          The most important R package I've created is called [QCA](https://cran.r-project.org/web/packages/QCA/index.html), which does Qualitative Comparative Analysis for all types of input data, that is binary crisp, multi-value crisp and fuzzy sets. This package is now used in many universities and summer schools all over the world.<br><br>

          I am currently working on a parallel version of the minimization algorithm, having a lot pf potential to increase the execution speed, function of the number of cores from the machine where the package is installed.<br><br>

          Linked to QCA is an independent package called [venn](https://cran.r-project.org/web/packages/venn/index.html), that creates Venn diagrams for up to 7 sets. It is specifically written for graphing entire sets or any other custom intersection, specified as a SOP (sum of products) expression.<br><br>

          Interpreting SOP expressions, as well as a good number of useful miscellanea functions, are tasks perfored by the [admisc](https://cran.r-project.org/web/packages/admisc/index.html) package.<br><br>

          Another package with a lot of potential is called [DDIwR](https://cran.r-project.org/web/packages/DDIwR/index.html), having a number of useful functions based on the Data Documentation Initiative standard. It can also convert to and from various statistical formats, and it recently gained a graphical user interface, packed into a software called [StatConverter](https://roda.github.io/StatConverter/).<br><br>

          Together with Emilian Hossu, I currently develop a new type of GUI generator for R, creating [custom dialogs](https://github.com/roda/R-GUI-DialogCreator) that are imported in a [main application](https://github.com/roda/R-GUI-MainApp), employing ElectronJS from the Node.js environment. It uses webkit as a standard environment, so the created dialogs look exactly the same on the users' machines.<br><br>

          One of the most promising recent R packages is called [declared](https://cran.r-project.org/web/packages/declared/index.html), which (finally) enables R users to declare multiple missing values. Since it is a new addition in the R ecosystem, this special type of object has an entire suite of associated functions, for instance to calculate weighted summaries even for the missing values.<br><br>

          All my R packages are listed in the [R Universe](https://dusadrian.r-universe.dev/ui#packages).
    title: Software
  design:
    columns: "2"
- block: collection
  content:
    count: 5
    filters:
      author: ""
      category: ""
      exclude_featured: false
      exclude_future: false
      exclude_past: false
      folders:
      - post
      publication_type: ""
      tag: ""
    offset: 0
    order: desc
    subtitle: ""
    text: ""
    title: Recent Posts
  design:
    columns: "2"
    view: compact
  id: posts
- block: collection
  content:
    filters:
      folders:
      - event
    title: Recent & Upcoming Talks
  design:
    columns: "2"
    view: compact
  id: talks
- block: tag_cloud
  content:
    title: Popular Topics
  design:
    columns: "2"
- block: markdown
  id: consultancy
  content:
    text: In my limited spare time I offer consultancy on topics related to sampling, basic statistical analysis and social research methodology. A significant part of my current training is dedicated to the R environment for statistical analysis and data management.<br><br>

          In a random order, this is a list of the institutions I have signed contracts with&colon;<br>

          <ul>
            <li><a href="http://www.dccommunication.ro/">DC Communication</a></li>
            <li><a href="http://www.cna.ro/-English-.html">National Audiovisual Council</a></li>
            <li><a href="http://www.gfk.com/ro/">GfK Romania</a></li>
            <li>Synergy International SRL</li>
            <li><a href="https://uefiscdi.ro/">UEFISCDI</a> - Executive Funding Agency for Higher Education, Research, Development and Innovation</li>
            <li><a href="https://www.ing.ro/">ING Bank</a></li>
            <li><a href="https://www.nn.ro/">NN</a></li>
            <li>Media Pro Management</li>
            <li><a href="https://www.cegedim.ro/">Cegedim</a></li>
            <li><a href="https://playtika.com/">Playtika</a></li>
            <li><a href="http://www.worldbank.org/">World Bank</a></li>
          </ul>
    title: Consultancy
  design:
    columns: "2"
- block: contact
  content:
    address:
      city: Bucharest
      country: Romania
      country_code: RO
      postcode: "050663"
      region: B
      street: Soseaua Panduri 90-92, room 008
    appointment_url: ""
    autolink: true
    contact_links:
    - icon: twitter
      icon_pack: fab
      link: https://twitter.com/dusadrian
      name: DM Me
    - icon: skype
      icon_pack: fab
      link: skype:dusa.adrian?call
      name: Skype Me
    - icon: video
      icon_pack: fas
      link: https://zoom.com
      name: Zoom Me
    directions: "Going uphill and keeping the Military Academy on your left, go right on Nicolae Paulescu street, walk pass a barrier at the corner with Ana Davila and walk straight until you hit the building of the Faculty of Sociology and Social Work."
    email: dusa.adrian@unibuc.ro
    form:
      formspree:
        id: null
      netlify:
        captcha: false
      provider: netlify
    phone: "+40 740 147489"
    subtitle: null
    text: ""
    title: Contact
  design:
    columns: "2"
  id: contact
title: null
type: landing
---
