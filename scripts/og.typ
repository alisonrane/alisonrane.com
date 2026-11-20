// Social preview card (1200×630). Needs Montserrat (Google Fonts variable TTF) on --font-path:
//   typst compile --ppi 72 --font-path <fonts> scripts/og.typ public/og.png
#let dark = rgb("#1a535c")
#let teal = rgb("#4ecdc4")
#let coral = rgb("#ff6b6b")

#set page(width: 1200pt, height: 630pt, margin: 0pt, fill: dark)
#set text(font: "Montserrat", fill: white)

#place(top + left, dx: 90pt, dy: 120pt, block(width: 700pt)[
  #text(size: 28pt, weight: 700, fill: teal, tracking: 3pt)[ALISONRANE.COM]
  #v(16pt)
  #text(size: 86pt, weight: 800)[Alison Rane]
  #v(8pt)
  #text(size: 36pt, weight: 500)[Data Engineering, Automation \ & Business Intelligence]
])

// Connected-nodes mark from the site header, scaled up.
#let mark(k) = {
  let p(x, y) = (x * k, y * k)
  let (a, b, c) = (p(6, 25), p(16, 8), p(26, 25))
  let st = (paint: teal, thickness: 2.6 * k, cap: "round")
  box(width: 32 * k, height: 32 * k, {
    place(line(start: a, end: b, stroke: st))
    place(line(start: b, end: c, stroke: st))
    place(line(start: a, end: c, stroke: st))
    for (pt, col) in ((a, teal), (c, teal), (b, coral)) {
      let r = 4.6 * k
      place(top + left, dx: pt.at(0) - r, dy: pt.at(1) - r,
        circle(radius: r, fill: col, stroke: (2 * k) + dark))
    }
  })
}
#place(top + left, dx: 800pt, dy: 170pt, mark(10pt))
#place(bottom + left, rect(width: 100%, height: 14pt, fill: coral))
