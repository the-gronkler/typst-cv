// =====================================================
// template.typ — all styling, layout, and components
// =====================================================

#let olive = rgb("#6b7c2e")
#let mid   = rgb("#111111")
#let light = rgb("#111111")

// ── Fonts ─────────────────────────────────────────────
#let font-body    = "Corbel"
#let font-heading = "Gill Sans MT"

// ── Page & text defaults ─────────────────────────────
#let cv(doc) = {
  set document(title: "CV")
  set page(
    paper: "a4",
    margin: (top: 1.6cm, bottom: 1.6cm, left: 1.8cm, right: 1.8cm),
  )
  set text(font: font-body, size: 10pt, lang: "en")
  set par(leading: 0.55em, spacing: 0.55em)
  doc
}

// ── Section heading ───────────────────────────────────
#let section(title: "") = {
  v(0.6em)
  text(font: font-heading, fill: olive, weight: "bold", size: 11pt, upper(title))
  line(length: 100%, stroke: 0.6pt + olive)
  v(0.25em)
}

// ── Job / education entry header ──────────────────────
#let entry(title: "", subtitle: "", location: "", date: "") = {
  grid(
    columns: (1fr, auto),
    [
      #text(font: font-heading, weight: "bold")[#title] \
      #text(fill: mid, style: "italic")[#subtitle]
    ],
    align(right)[
      #text(fill: light, size: 9pt)[#location] \
      #text(fill: light, size: 9pt)[#date]
    ],
  )
}

// ── Single-line entry (no subtitle) ──────────────────
#let entry-line(title: "", location: "", date: "") = {
  grid(
    columns: (1fr, auto),
    [#text(font: font-heading, weight: "bold")[#title] #h(0.3em) #text(fill: light, size: 9pt)[| #location]],
    align(right)[#text(fill: light, size: 9pt)[#date]],
  )
}

// ── Bullet list ───────────────────────────────────────
#let bullets(..items) = {
  set list(indent: 1em, body-indent: 0.4em, spacing: 0.55em)
  set par(leading: 0.45em, spacing: 0.35em)
  list(..items)
}

// ── Skill row ─────────────────────────────────────────
#let skill-row(label: "", value: "") = {
  grid(
    columns: (5.5cm, 1fr),
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
      #text(font: font-heading, fill: olive, size: 26pt, weight: "bold")[#name]
      #v(0.1em)
      #text(font: font-heading, fill: mid, size: 11pt, tracking: 2pt)[#upper(job-title)]
      #v(0.5em)
      #text(fill: olive)[#sym.dot.c] #location
      #h(1em)
      #text(fill: olive)[☎] #text(number-type: "lining", number-width: "tabular")[#phone]
      #h(1em)
      #text(fill: olive)[#sym.at] #link("mailto:" + email)[#email]
      \
      #text(fill: olive)[gh/] #link("https://" + github)[#github]
      #h(2em)
      #text(fill: olive)[in/] #link("https://" + linkedin)[#linkedin]
    ],
    ..if photo != none { (box(clip: true, radius: 4pt, image(photo, width: 2.8cm)),) } else { () },
  )
}
