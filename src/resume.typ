#let long = true
#let background = rgb("#FFFFFF")
#let foreground = rgb("#000000")
#let boxground = rgb("#DDDDDD")

#let email-icom = box[
  #link("mailto:lehman.346@osu.edu", [#box(image("email_icon.png", height: 1em))])
]
#let github-icon = box[
  #link("https://github.com/CalebLehman", [#box(image("github_icon.png", height: 1em))])
]

#set text(
  font: "CMU Sans Serif",
  size: 10pt,
  fill: foreground,
)

#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2cm),
  fill: background,
  header: [
    #set text(15pt)
    #smallcaps[*Caleb Lehman*]
    #box(
      smallcaps[
        #set text(0.8em)
        _Résumé_
      ]
    )
    #h(1fr)
    #email-icom #github-icon
  ],
)

#set par(
  justify: true,
)

#let color_subsection(content) = box(
  fill: boxground,
  inset: 10pt,
  width: 1fr,
  [
    #set text(fill: foreground)
    #content
  ],
)

#let location_heading(name, city, dates, content) = box(
  width: 1fr,
  [
    #grid(
      columns: (7fr, 4fr, 4fr),
      align(left + horizon)[#strong(name)],
      align(center + bottom)[#emph(city)],
      align(right + bottom)[(#dates)],
    )
    #color_subsection[#content]
  ]
)

= Work Experience

#location_heading([Battelle], [Columbus, OH], [Feb 2023 -- _present_])[
/ Computer Engineer II:
  Perform various classified tasks related to reverse-engineering and vulnerability research.
]

#location_heading([Infor], [Columbus, OH], [May 2021 -- Jan 2023])[
/ Associate Software Engineer:
  Developed GitLab CI/CD pipelines to automate the builds of several Infor products.
  Worked with internal development teams and external customers to debug and fix issues with Infor products.
]

#location_heading([Ohio Supercomputer Center], [Columbus, OH], [Aug 2019 -- Aug 2020])[
/ Student Programmer:
  Worked as a part of the *Scientific Applications Group* to maintain repeatable and reliable installations
  of various common scientific applications provided to users,
  as well as writing and maintaining Bash/Python scripts to automate the installation
  and ReFrame tests to perform sanity checking of the HPC systems.
  Worked as a part of *User Support* to response to user requests for support through the ServiceNow ticketing system.
]

#location_heading([University of Chicago\ Illinois Institute of Technology], [Chicago, IL], [May 2019 -- Aug 2019])[
/ Student Researcher:
  Developed and tested a novel task-based parallel runtime system in `C`/`C++`.
  Presented research in the ACM Student Research Competition at the conference _Supercomputing 2019_.
]

#location_heading([Ohio Supercomputer Center], [Columbus, OH], [May 2018 -- May 2019])[
/ Student Programmer:
  Worked with researchers at the Byrd Polar and Climate Research center to develop software to automatically derive digital elevation models from satellite imagery.
  Applied knowledge of numerical computing to improve the speed of the researchers' code by up to 15\%. Wrote Bash scripts to benchmark the code on a variety of clusters in the XSEDE network.
]

#if long [
  #location_heading([Battelle Center for Mathematical Medicine], [Columbus, OH], [Aug 2015 -- Sep 2016])[
  / Student Researcher:
    Worked with Dr. William Ray to develop MATLAB and `C++` implementations of RNA and protein sequence alignment algorithms.
    Trained new interns in the use of Linux and VirtualBox.
  ]
]

#v(1fr)

= Technologies

#color_subsection[
/ Programming Languages:
  Experience writing POSIX shell scripts and programming in `C`/`C++`, Python, and Rust.
  Experience reading assembly (x86, ARM, and MIPS).
  Familiar with `C#`, Haskell, Java, and PowerShell.
/ Programming Tooling:
  Experience using Docker, Git, GitLab CI/CD, and Linux systems.
/ Other Technologies:
  Experience debugging programs with GDB and Ghidra.
]

#v(1fr)

= Education

#if long [
  #location_heading([Ohio State University], [Columbus, OH], [Aug 2016 -- May 2020])[
  / Bachelor of Science in Computer Science: (3.97 GPA) \
    Coursework included _Algorithms_, _Software Development_, _Artificial Intelligence_, and _Computer Graphics_.
    Placed 2#super[nd], 3#super[rd], 2#super[nd], and 2#super[nd] in 2014, 2015, 2016, and 2018
    in the _RBG Math Competition_.
  
  / Bachelor of Science in Mathematics: (4.00 GPA) \
    Coursework included _Analysis_, _Linear Algebra_, _Differential Equations_, _Combinatorics_, and _Number Theory_.
  
  / Minor in Economics: (4.00 GPA) \
    Coursework focused on _Econometrics_ and _Game Theory_.
  ]
] else [
  #location_heading([Ohio State University], [Columbus, OH], [Aug 2016 -- May 2020])[
  Bachelor of Science in Computer Science, Bachelor of Science in Mathematics, and minor in Economics
  ]
]
