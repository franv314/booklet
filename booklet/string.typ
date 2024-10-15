#import "@preview/codelst:2.0.1": sourcefile

#line(length: 100%)

= String algorithms

== Aho-Corasick
Builds the Aho-Corasick automaton.\
_Time_: $cal(O)(N)$ where $N$ is the total length of the strings.
_Memory_: $cal(O)(Sigma N)$ where $Sigma$ is the size of the alphabet.

#sourcefile(
	read("../src/string/aho_corasick.cpp"),
	lang: "cpp",
	file: "src/string/aho_corasick.cpp",
	showrange: (4, 100),
	numbers-start: 1,
)
