// included from https://github.com/franv314/booklet/blob/main/src/math/modular_int.cpp

#include <bits/stdc++.h>
using namespace std;

#include "../header.h"

template<int mod = MOD> struct mint {
	i64 x;

	mint inv() { // only prime mod
		mint i = 1, b = x;
		for (int e = mod - 2; e; e >>= 1) {
			if (e & 1) i *= b;
			b *= b;
		}
		return i;
	}

	mint operator+(mint o) {
		return (x + o.x) % mod;
	}
	mint& operator+=(mint o) {
		(x += o.x) %= mod;
		return *this;
	}
	mint operator-(mint o) {
		return (x - o.x + mod) % mod;
	}
	mint& operator-=(mint o) {
		(x += mod - o.x) %= mod;
		return *this;
	}
	mint operator*(mint o) {
		return x * o.x % mod;
	}
	mint& operator*=(mint o) {
		(x *= o.x) %= mod;
		return *this;
	}
	mint operator/(mint o) { // only prime mod
		return x * o.inv().x % mod;
	}
	mint& operator/=(mint o) { // only prime mod
		(x *= o.inv().x) %= mod;
		return *this;
	}
	mint(i64 x) : x(x % mod) { }
	mint() : x(0) { }
};
