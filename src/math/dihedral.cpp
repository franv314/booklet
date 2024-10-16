#include <bits/stdc++.h>
using namespace std;

#include "../header.h"

struct Dihedral {
	i64 n, rot;
	bool flip;

	Dihedral inv() const {
		if (flip) return *this;
		return {n, (n - rot) % n, false};
	}

	Dihedral operator*(Dihedral o) const {
		if (flip) {
			o.flip ^= true;
			o.rot = (n - o.rot) % n;
		}
		o.rot = (o.rot + rot) % n;
		return o;
	}

	Dihedral(i64 n, i64 rot, bool flip) :
		n(n), rot(rot), flip(flip) { }
	Dihedral(i64 n) : Dihedral(n, 0, false) { }
};
