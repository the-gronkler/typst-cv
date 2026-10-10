# Typst CV

Source files my software engineering CV, written in [Typst](https://typst.app/).

Contains **Engineering CV Reviewer** agent skill in which I defined guidelines for what I want my cv to represent. Used to get a second opinion on its contents and changes. 

## Build

Install the Typst CLI, then run from the project directory:

```sh
typst compile cv.typ cv.pdf
```

The generated `cv.pdf` is ignored by Git.

## Project files

- `cv.typ` contains the CV content.
- `template.typ` defines the layout and styling.
- `resources/headshot.jpg` is the profile photo used by the CV.
