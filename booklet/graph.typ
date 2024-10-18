#import "@preview/codelst:2.0.1": sourcefile

#line(length: 100%)

= Graph algorithms

== Triangulation Tree
Builds the tree of a triangulation.
_Time_: $cal(O)(N log N)$, $cal(O)(N)$ is counting sort is used.

#sourcefile(
	read("../src/graph/triangulation.cpp"),
	lang: "cpp",
	file: "src/graph/triangulation.cpp",
	showrange: (6, 100),
	numbers-start: 1,
)
