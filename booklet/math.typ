#import "@preview/codelst:2.0.1": sourcefile

#line(length: 100%)

= Mathematics

== Number theory

Given $a, b$, finds $g = gcd(a, b)$ and $u, v$ such that $u a + v b = g$
_Time_: $cal(O)(log a b)$

#sourcefile(
	read("../src/math/nt.cpp"),
	lang: "cpp",
	file: "src/math/nt.cpp",
	showrange: (4, 11),
	numbers-start: 1,
)

Finds $x^(-1) mod m$ in $cal(O)(log m)$.

#sourcefile(
	read("../src/math/nt.cpp"),
	lang: "cpp",
	file: "src/math/nt.cpp",
	showrange: (12, 100),
	numbers-start: 9,
)
