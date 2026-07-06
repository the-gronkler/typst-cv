// =====================================================
// cv.typ — content only, no styling logic
// =====================================================

#import "template.typ": cv, cv-header, section, entry, entry-line, skill-row

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
  photo: "resources/headshot.jpg",
)


// ── About ────────────────────────────────────────────
#section(title: "About")
Fullstack Software Engineer focused on backend systems and product development. I design and build APIs, data models, and full-stack features, and make system-level decisions that translate product requirements into clean technical architecture. I enjoy working on complex domain-driven systems and have practical experience building AI-driven development tooling to improve engineering workflows and productivity.


// ── Experience ───────────────────────────────────────
#section(title: "Experience")

#entry(
  title:    [Developer | AI & Automation],
  subtitle: [Python, React],
  location: [EY | Warsaw, Poland],
  date:     [Jul 2025 – present],
)
#v(0.25em)
Built and extended backend and frontend features for a financial reporting platform, including iXBRL report generation and validation.

- Primary engineer for multiple features, responsible for technical design decisions and end-to-end implementation from requirements through production support.

- Designed API structures and data models, defining how financial reporting data was transformed into iXBRL report structures.

- Investigated the iXBRL specification to support implementation of report generation and validation logic.

- Designed and implemented AI-driven development tooling within the codebase, including custom agents and reusable agent skills to automate repetitive engineering tasks.

- Collaborated with finance domain experts to translate regulatory requirements into technical specifications for system implementation.

- Supported production releases, debugging, and issue resolution for live systems.

#v(0.2em)
#text(weight: "bold")[Engineering Thesis Application] #h(0.5em) #text(style: "italic")[Laravel, React]
#v(0.25em)
Co-developed a full-stack restaurant ordering system with real-time order tracking and geolocation-based features, including backend, frontend, database design, and deployment (Docker, Azure, GitHub Actions CI/CD).

- Designed system architecture and core domain model for ordering workflows

- Designed database schema and implemented backend services, supporting real-time order state updates

- Built frontend interface in React for order placement and tracking

- Defined MVP scope through user flow design and lightweight market research

#v(0.2em)
#text(weight: "bold")[Personal Projects]
#v(0.25em)
Built a range of backend and full-stack applications focused on system design, API development, and database architecture.
- Designed and implemented multiple CRUD and workflow-based systems using Laravel, Spring Boot, ASP.NET Core, and Python
- Focused on backend architecture patterns (layered design, domain modeling, API structuring)
- Developed small-scale experiments in data processing and algorithmic simulations


// ── Education ────────────────────────────────────────
#section(title: "Education")

#entry(
  title:    [Bachelor of Engineering in Computer Science],
  subtitle: [Database and Software Engineering  |  Grade: 5/5],
  location: [Polish Japanese Academy of Information Technology],
)

#v(0.4em)

// #entry(
//   title:    [CELTA],
//   subtitle: [Certificate in Teaching English to Speakers of Other Languages],
//   location: [British Council | Warsaw, Poland],
//   date:     [2024],
// )
#entry-line(
  title:    [CELTA],
  location: [   Certificate in Teaching English to Speakers of Other Languages | British Council],
  date:     [2024],
)

#v(0.4em)

#entry-line(
  title:    [Step IT Academy Junior Course],
  location: [Kyiv, Ukraine],
  date:     [2015 -- 2020],
)


// ── Skills ───────────────────────────────────────────
#section(title: "Skills")

#let skills = (
  ("Core Engineering", "Backend Development, System Design, API Design (REST), Database Design, Full-stack Development"),
  ("Programming Languages", "Python TypeScript / JavaScript, Java, C#, PHP"),
  ("Frameworks", "React, ASP.NET Core, Laravel"),
  ("Databases", "PostgreSQL, Microsoft SQL Server"),
  ("Infrastructure / Tools", "REST APIs, System Design (scalable services, modular architecture), AI-assisted development tooling"),
)

#for (label, value) in skills {
  skill-row(label: label, value: value)
}
