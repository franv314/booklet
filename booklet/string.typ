#import "@preview/codelst:2.0.1": sourcefile

#line(length: 100%)

= String algorithms

== Z-function
Builds the Z function of a string.\
_Time_: $cal(O)(N)$ where $N$ is the length of the string.

#sourcefile(
	read("../src/string/z_function.cpp"),
	lang: "cpp",
	file: "src/string/z_function.cpp",
	showrange: (4, 100),
	numbers-start: 1,
)

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
