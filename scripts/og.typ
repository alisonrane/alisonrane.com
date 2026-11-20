// Social preview card. Rebuild with:
//   typst compile --ppi 72 --font-path ../resume/fonts scripts/og.typ public/og.png
#set page(width: 1200pt, height: 630pt, margin: 0pt, fill: rgb("#1a535c"))
#set text(font: "Roboto", fill: white)

#place(top + left, dx: 90pt, dy: 120pt, block(width: 760pt)[
  #text(size: 30pt, weight: "bold", fill: rgb("#4ecdc4"), tracking: 2pt)[ALISONRANE.COM]
  #v(18pt)
  #text(size: 92pt, weight: "bold")[Alison Rane]
  #v(10pt)
  #text(size: 38pt)[Data Engineering, Automation \ & Business Intelligence]
])

// Bell-curve logo from the site, drawn as bars.
#let heights = (0.1, 0.42, 0.75, 1.0, 0.75, 0.42, 0.1)
#place(bottom + right, dx: -90pt, dy: -90pt,
  stack(dir: ltr, spacing: 8pt, ..heights.map(h =>
    align(bottom, rect(width: 34pt, height: 260pt * h, fill: rgb("#4ecdc4")))
  ))
)
#place(bottom + left, rect(width: 100%, height: 14pt, fill: rgb("#ff6b6b")))
