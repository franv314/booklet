// included from https://github.com/franv314/booklet/blob/main/src/math/perm.cpp

#include <bits/stdc++.h>
using namespace std;

struct Perm {
	int n;
	vector<int> perm, pos_of; // perm and inverse

	void swap(int i, int j) { // perm_i <-> perm_j
		::swap(perm[i], perm[j]);
		::swap(pos_of[perm[i]], pos_of[perm[j]]);
	}

	void invert() { ::swap(perm, pos_of); }

	Perm(int n) : n(n) {
		iota(perm.begin(), perm.end(), 0);
		iota(pos_of.begin(), pos_of.end(), 0);
	}
	Perm(const vector<int> &p) :
		n(p.size()), perm(p), pos_of(n)
	{
		for (int i = 0; i < n; i++)
			pos_of[perm[i]] = i;
	}
};
