// =====================================================
// template.typ — all styling, layout, and components
// =====================================================

// ── Packages ──────────────────────────────────────────
#import "@preview/fontawesome:0.6.1": fa-icon

// ── Colours ───────────────────────────────────────────
#let color-accent  = rgb("#6b7c2e")
#let color-secondary = rgb("#444444")

// ── Fonts ─────────────────────────────────────────────
#let font-body    = "Corbel"
#let font-heading = "Gill Sans MT"

// ── Sizes ─────────────────────────────────────────────
#let size-body         = 10pt
#let size-meta         = 9pt
#let size-section      = 11pt
#let size-name         = 26pt
#let size-job-title    = 11pt

// ── Spacing ───────────────────────────────────────────
#let leading-body      = 0.55em
#let spacing-body      = 0.55em
#let leading-list      = 0.45em
#let spacing-list      = 0.35em
#let indent-list       = 1em
#let body-indent-list  = 0.4em
#let gap-list          = 0.55em

// ── Page ──────────────────────────────────────────────
#let margin-top    = 1.6cm
#let margin-bottom = 1.6cm
#let margin-h      = 1.8cm

// ── Misc ──────────────────────────────────────────────
#let section-rule-weight  = 0.6pt
#let photo-width          = 2.8cm
#let skill-label-width    = 5.5cm
#let name-tracking        = 0pt
#let job-title-tracking   = 2pt


// ── Page & text defaults ─────────────────────────────
#let cv(doc) = {
  set document(title: "CV")
  set page(
    paper: "a4",
    margin: (top: margin-top, bottom: margin-bottom, left: margin-h, right: margin-h),
  )
  set text(font: font-body, size: size-body, lang: "en")
  set par(leading: leading-body, spacing: spacing-body)
  set list(
    indent: indent-list,
    body-indent: body-indent-list,
    spacing: gap-list,
  )
  show list: it => {
    set par(leading: leading-list, spacing: spacing-list)
    it
  }
  doc
}

// ── Section heading ───────────────────────────────────
#let section(title: "") = {
  v(0.6em)
  text(font: font-heading, fill: color-accent, weight: "bold", size: size-section, upper(title))
  line(length: 100%, stroke: section-rule-weight + color-accent)
  v(0.25em)
}

// ── Job / education entry header ──────────────────────
#let entry(title: "", subtitle: "", location: "", date: "") = {
  grid(
    columns: (1fr, auto),
    [
      #text(font: font-heading, weight: "bold")[#title] \
      #text(fill: color-secondary, style: "italic")[#subtitle]
    ],
    align(right)[
      #text(fill: color-secondary, size: size-meta)[#location] \
      #text(fill: color-secondary, size: size-meta)[#date]
    ],
  )
}

// ── Single-line entry (no subtitle) ──────────────────
#let entry-line(title: "", location: "", date: "") = {
  grid(
    columns: (1fr, auto),
    [
      #text(font: font-heading, weight: "bold")[#title]
      #h(0.3em)
      #text(fill: color-secondary, size: size-meta)[| #location]
    ],
    align(right)[#text(fill: color-secondary, size: size-meta)[#date]],
  )
}

// ── Skill row ─────────────────────────────────────────
#let skill-row(label: "", value: "") = {
  grid(
    columns: (skill-label-width, 1fr),
    gutter: 0.5em,
    text(font: font-heading, weight: "bold")[#label],
    text[#value],
  )
  v(0.2em)
}

// ── CV header ─────────────────────────────────────────
#let cv-header(
  name: "",
  job-title: "",
  location: "",
  phone: "",
  email: "",
  github: "",
  linkedin: "",
  photo: none,
) = {
  grid(
    columns: if photo != none { (1fr, auto) } else { (1fr,) },
    gutter: 1em,
    [
      #text(font: font-heading, fill: color-accent, size: size-name, weight: "bold", tracking: name-tracking)[#name]
      #v(0.1em)
      #text(font: font-heading, fill: color-secondary, size: size-job-title, tracking: job-title-tracking)[#upper(job-title)]
      #v(0.5em)
      #grid(
        columns: (1fr, 1fr),
        column-gutter: 0.5em,
        row-gutter: 0.6em,
        [#text(fill: color-accent)[#fa-icon("location-dot")] #location],
        [#text(fill: color-accent)[#fa-icon("github")] #link("https://" + github)[#github]],
        [#text(fill: color-accent)[#fa-icon("phone")] #text(number-type: "lining", number-width: "tabular")[#phone]],
        [#text(fill: color-accent)[#fa-icon("linkedin")] #link("https://" + linkedin)[#linkedin]],
        [#text(fill: color-accent)[#fa-icon("envelope")] #link("mailto:" + email)[#email]],
      )
    ],
    ..if photo != none { (box(clip: true, radius: 4pt, image(photo, width: photo-width)),) } else { () },
  )
}
