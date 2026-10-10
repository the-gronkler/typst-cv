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
Software Engineer focused on backend systems and domain-driven design. I specialize in translating complex regulatory and business requirements into maintainable technical architecture. Experienced in designing API structures, data models, and internal AI-driven tooling to solve specific engineering bottlenecks.


// ── Experience ───────────────────────────────────────
#section(title: "Experience")

#entry(
  title:    [Developer | AI & Automation],
  subtitle: [Python, React, Node.js, iXBRL],
  role-detail: [Staff 2(current), Staff 1(12 months), Intern(3 months)],
  location: [EY | Warsaw, Poland],
  date:     [Jul 2025 – present],
)
#v(0.25em)
Worked across the full stack of a financial reporting platform, including iXBRL report generation and validation.

- Served as primary engineer for several projects, taking them from requirements analysis and scope planning through architecture, implementation, documentation, and ongoing maintenance and production support.

- Championed improvements to the legacy backend architecture by proposing a clearer approach to technical lead(s) and the team. Documented and scaffolded patterns for separation of concerns and consistent code structure.

- Designed API structures and data models for transforming financial reporting data into iXBRL structures.

- Investigated the iXBRL specification to support implementation of report generation and validation logic.

- Designed and implemented internal AI agents and 'agent skills' within the codebase, using structured documentation as LLM context to automate repetitive tasks and ensure accuracy in AI-generated code."

- Translated ambiguous regulatory requirements into technical specifications by collaborating directly with finance domain experts.

- Supported production releases, debugging, and issue resolution for critical live systems under tight deadlines.

#v(0.2em)
#text(weight: "bold")[Real-Time Geolocation Ordering System] #h(0.5em) #text(style: "italic")[Laravel, React]
#v(0.25em)
Co-developed a full-stack restaurant ordering system with real-time order tracking and geolocation-based features, including backend, frontend, database design, and deployment (Docker, Azure, GitHub Actions CI/CD).

// TODO: change order to: 1. Architected workflow, 2. Database schema, 3. Frontend, 4. MVP scope
- Implemented the order lifecycle, defining how orders progress from placement through delivery.

- Designed a relational database schema optimized for geolocation queries and real-time state updates.

- Built frontend interface in React for order placement and tracking

- Defined MVP scope through user flow design and market research

#v(0.2em)
#text(weight: "bold")[Personal Projects]
#v(0.25em)
- Built backend and full-stack applications using Laravel, Spring Boot, ASP.NET Core, and Python, with a focus on system design, API development, and database architecture.
- Applied layered design, event-driven updates, domain modeling, and API structuring to build backend systems for complex workflows.
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
  ("Core Engineering", "Domain-Driven Design (DDD), System Design, API (REST), Database Design"),
  ("Programming Languages", "Python TypeScript / JavaScript, Java, C#, PHP"),
  ("Frameworks", "React, ASP.NET Core, Laravel"),
  ("Databases", "PostgreSQL, Microsoft SQL Server"),
  ("Infrastructure / Tools", "iXBRL, REST APIs, System Design (scalable services, modular architecture), AI-assisted development tooling"),
)

#for (label, value) in skills {
  skill-row(label: label, value: value)
}