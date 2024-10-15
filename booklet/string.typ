#import "@preview/codelst:2.0.1": sourcefile

#text([*Aho-Corasick:*], size: 11pt)
Builds the Aho-Corasick automaton.

#sourcefile(
	read("../src/string/aho_corasick.cpp"),
	lang: "cpp",
	file: "src/string/aho_corasick.cpp",
	showrange: (4, 100),
	numbers-start: 1,
)
