#set document(
	title: "ICPC Booklet",
	author: "Alessandro Lombardo, James Ray Bamber, Francesco Vercellesi",
)
#set page(
	paper: "a4",
	flipped: true,
	margin: ("rest": 1cm),
	numbering: "I",
)
#set par(leading: 0.4em)
#set text(size: 10pt)

#show outline.entry.where(
	level: 1
): it => {
	strong(it)
}

#columns(
	3,
	gutter: 1%,
	[
		#outline(
			indent: 1em
		)
		#include("header.typ")
		#include("math.typ")
		#include("string.typ")
	]
)
