// included from https://github.com/franv314/booklet/blob/main/src/math/nt.cpp

#include <bits/stdc++.h>
using namespace std;

#include "../header.h"

array<i64, 3> extended_euclid(i64 a, i64 b) {
	if (b == 0)
		return {a, 1, 0};
	auto [g, x, y] = extended_euclid(b, a % b);
	return {g, y, x - y * (a / b)};
}

optional<i64> inv(i64 x, i64 m) {
	auto [g, y, _] = extended_euclid(x, m);
	if (g != 1)
		return {};
	return (y >= 0 ? y % m : m - (-y) % m);
}
