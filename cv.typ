// =====================================================
// cv.typ — content only, no styling logic
// =====================================================

#import "template.typ": cv, cv-header, section, entry, entry-line, bullets, skill-row

#show: cv

// ── Header ───────────────────────────────────────────
#cv-header(
  name:      "Oleksandr Svirin",
  job-title: "Software Engineer",
  location:  "Warsaw, Poland",
  phone:     "+48 574 562 554",
  email:     "oleksandr.svirin.csci@gmail.com",
  github:    "github.com/the-gronkler",
  linkedin:  "linkedin.com/in/oleksandr-svirin",
  // photo: "photo.jpg",
)


// ── About ────────────────────────────────────────────
#section(title: "About")
I enjoy solving complex problems and optimising workflows, with a growing focus on system design.
My current passion is defining structured, effective ways to integrate AI tools into the software development process.


// ── Experience ───────────────────────────────────────
#section(title: "Experience")

#entry(
  title:    [Developer | AI & Automation],
  subtitle: [Python, React],
  location: [EY | Warsaw, Poland],
  date:     [Jul 2025 – present],
)
#v(0.25em)
#bullets(
  [Built and extended features in a full-stack financial reporting platform (Python, React).],
  [Implemented backend services and frontend components for core reporting flows, including data validation and workflow state handling.],
  [Took ownership of individual modules, including design decisions around API structure, data models, and integration points.],
  [Developed internal automation tools using AI APIs to reduce repetitive engineering tasks (e.g. code generation and workflow assistance).],
  [Worked with finance domain stakeholders to clarify ambiguous requirements and translate them into implementable technical specifications.],
  [Participated in production releases, including debugging issues and supporting live user workflows.],
)

#v(0.4em)

#text(weight: "bold")[Engineering Thesis] #h(0.5em) #text(style: "italic")[Laravel, React]
#v(0.25em)
#bullets(
  [Co-developed a full-stack restaurant ordering system (Laravel, React) with real-time updates and geolocation features.],
  [Defined MVP scope through market research and user flow design.],
  [Designed system architecture and implemented core ordering workflows.],
)

#v(0.4em)

#text(weight: "bold")[Personal Projects]
#v(0.25em)
Developed a diverse portfolio of over 30 full-stack applications, database solutions, and algorithmic simulations using Spring Boot, ASP.NET Core, Laravel, and Python. Emphasising clean architecture (DDD) and Agile methodologies, projects range from complex MS SQL and Oracle schemas to custom 3D rendering engines and machine learning implementations.


// ── Education ────────────────────────────────────────
#section(title: "Education")

#entry(
  title:    [Bachelor of Engineering in Computer Science],
  subtitle: [Database and Software Engineering],
  location: [Polish Japanese Academy of Information Technology],
  date:     [Grade: 5],
)

#v(0.6em)

#grid(
  columns: (1fr, auto),
  [
    #text(weight: "bold")[CELTA] #h(0.4em)
    -- Cambridge English Level 5 Certificate in #text(style: "italic")[Teaching English to Speakers of Other Languages] \
    #text(fill: rgb("#666666"), size: 9pt)[British Council | Warsaw, Poland]
  ],
  align(right)[#text(fill: rgb("#666666"), size: 9pt)[2024]],
)

#v(0.4em)

#entry-line(
  title:    [Step IT Academy Junior Course],
  location: [Kyiv, Ukraine],
  date:     [2015 -- 2020],
)


// ── Skills ───────────────────────────────────────────
#section(title: "Skills")

#skill-row(label: "Soft Skills",             value: "Problem Solving, Critical Thinking, Communication, Continuous Learning, Adaptability")
#skill-row(label: "Languages",               value: "English (C2), Polish (C1), Ukrainian & Russian (Native), German (basic)")
#skill-row(label: "Programming Languages",   value: "Python, TypeScript, Java, C#")
#skill-row(label: "Frameworks / Libraries",  value: "React, ASP.NET Core, Laravel")
#skill-row(label: "Databases",               value: "PostgreSQL, MS SQL")
#skill-row(label: "Other",                   value: "REST APIs, system design basics, AI tooling")
