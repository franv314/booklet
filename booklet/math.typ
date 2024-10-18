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
	showrange: (6, 13),
	numbers-start: 1,
)

Finds $x^(-1) mod m$ in $cal(O)(log m)$.

#sourcefile(
	read("../src/math/nt.cpp"),
	lang: "cpp",
	file: "src/math/nt.cpp",
	showrange: (14, 100),
	numbers-start: 9,
)

== Modular integers

Implements operations over the integers under a modulus.\
_Time_: $cal(O)(1)$ for $+$, $-$ and $*$.\
_Time_: $cal(O)(log "mod")$ for $\/$ (*only if mod is prime*)

#sourcefile(
	read("../src/math/modular_int.cpp"),
	lang: "cpp",
	file: "src/math/modular_int.cpp",
	showrange: (6, 100),
	numbers-start: 1,
)

== Combinatorics

Computes $b^0, dots, b^"maxn"$ modulo mod.\
_Time_: $cal(O)("maxn")$.

#sourcefile(
	read("../src/math/comb.cpp"),
	lang: "cpp",
	file: "src/math/comb.cpp",
	showrange: (6, 16),
	numbers-start: 1,
)

Computes $0!, dots, "maxn"!$ and $(0!)^(-1), dots, ("maxn"!)^()$ modulo mod.\
_Time_: $cal(O)("maxn")$.

#sourcefile(
	read("../src/math/comb.cpp"),
	lang: "cpp",
	file: "src/math/comb.cpp",
	showrange: (18, 28),
	numbers-start: 11,
)

Computes $binom(n, "ks"_0\, dots)$. The last element of `ks`
can be omitted and it will be assumed to be $n - sum "ks"_i$.\
_Time_: $cal(O)(1)$.

#sourcefile(
	read("../src/math/comb.cpp"),
	lang: "cpp",
	file: "src/math/comb.cpp",
	showrange: (30, 43),
	numbers-start: 21,
)

Computes the $n$-th catalan number.\
_Time_: $cal(O)(1)$

#sourcefile(
	read("../src/math/comb.cpp"),
	lang: "cpp",
	file: "src/math/comb.cpp",
	showrange: (45, 49),
	numbers-start: 34,
)

Counts the possible completions of a bracket sequence
where only $n$ `'('` and $m$ `')'` are left to be placed.\
_Time_: $cal(O)(1)$

#sourcefile(
	read("../src/math/comb.cpp"),
	lang: "cpp",
	file: "src/math/comb.cpp",
	showrange: (51, 56),
	numbers-start: 39,
)

== Permutations

Implements swaps in a permutation mantaining the inverse.
_Time_: $cal(O)(N)$ construction and $cal(O)(1)$ query.

#sourcefile(
	read("../src/math/perm.cpp"),
	lang: "cpp",
	file: "src/math/perm.cpp",
	showrange: (6, 100),
	numbers-start: 1,
)

== Dihedral group

Implements operations over $D_n$ in $cal(O)(1)$.

#sourcefile(
	read("../src/math/dihedral.cpp"),
	lang: "cpp",
	file: "src/math/dihedral.cpp",
	showrange: (6, 100),
	numbers-start: 1,
)
