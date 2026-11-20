// "ar" monogram favicon. Needs Montserrat (Google Fonts, variable TTF) on --font-path.
// From repo root:
//   typst compile --font-path <fonts> scripts/favicon.typ public/favicon.svg
//   typst compile --font-path <fonts> --input size=32 --ppi 72 scripts/favicon.typ public/favicon-32.png
//   typst compile --font-path <fonts> --input size=180 --input square=yes --ppi 72 scripts/favicon.typ public/apple-touch-icon.png
#let dark = rgb("#1a535c")
#let teal = rgb("#4ecdc4")
#let coral = rgb("#ff6b6b")

#let s = float(sys.inputs.at("size", default: "32")) * 1pt
// iOS rounds the apple-touch icon itself, so that one gets square corners.
#let square = sys.inputs.at("square", default: "no") == "yes"

#set page(width: s, height: s, margin: 0pt, fill: if square { dark } else { none })
#box(
  width: s, height: s, radius: if square { 0pt } else { s * 0.22 }, fill: dark,
  align(center + horizon, move(dy: -s * 0.02,
    text(font: "Montserrat", weight: 800, size: s * 0.56, tracking: -s * 0.02,
      fill: teal)[a#text(fill: coral)[r]]
  )),
)
