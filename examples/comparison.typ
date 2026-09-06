#import "../lib.typ": room

#set page(width: 38cm, height: auto, margin: 1.5cm)
#set par(justify: true)
#set text(font: "Latin Modern Roman")

#show heading: it => block(above: 1.5em, below: 1em, it)

#show raw.where(block: false): it => box(
  fill: luma(240),
  stroke: 0.5pt + black,
  inset: (x: 4pt, y: 0pt),
  outset: (y: 3pt),
  radius: 3pt,
  text(font: "JetBrains Mono", it),
)

= Without `room`

In numerical analysis, one of the central tools for approximating sums by
integrals — and vice versa — is the Euler - Maclaurin formula. It relates the
value of a sum evaluated over consecutive integers to the corresponding
definite integral, correcting for the discrepancy using derivatives evaluated
only at the endpoints: $display(sum_(i=a)^b f(i) = integral_a^b f(x) dif x + frac(f(a)+f(b), 2) + sum_(k=1)^m frac(B_(2k), (2k)!) (f^((2k-1))(b) - f^((2k-1))(a)) + R_m)$ where $B_(2k)$ denotes the Bernoulli numbers and $R_m$ is a remainder term that can be bounded whenever the $(2m+1)$-th derivative of $f$ is controlled on the interval $[a,b]$. This identity underlies many classical asymptotic expansions, including Stirling's approximation for the factorial function.

= With `room`

In numerical analysis, one of the central tools for approximating sums by
integrals — and vice versa — is the Euler - Maclaurin formula. It relates the
value of a sum evaluated over consecutive integers to the corresponding
definite integral, correcting for the discrepancy using derivatives evaluated
only at the endpoints: #room($ sum_(i=a)^b f(i) = integral_a^b f(x) dif x + frac(f(a)+f(b), 2) + sum_(k=1)^m frac(B_(2k), (2k)!) (f^((2k-1))(b) - f^((2k-1))(a)) + R_m $) where $B_(2k)$ denotes the Bernoulli numbers and $R_m$ is a remainder term that can be bounded whenever the $(2m+1)$-th derivative of $f$ is controlled on the interval $[a,b]$. This identity underlies many classical asymptotic expansions, including Stirling's approximation for the factorial function.
