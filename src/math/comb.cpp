#include <bits/stdc++.h>
using namespace std;

#include "../header.h"
#include "../math/modular_int.cpp"

template<i64 mod = MOD>
vector<mint<mod>> get_pows(i64 b, int maxn) {
	vector<mint<mod>> pows(maxn + 1, 1);
	for (int i = 1; i <= maxn; i++)
		pows[i] = pows[i - 1] * b;
	return pows;
}

template<i64 mod = MOD>
array<vector<mint<mod>>, 2> get_fact(int maxn) {
	vector<mint<mod>> f(maxn + 1, 1), i(maxn + 1);

	for (int j = 1; j <= maxn; j++)
		f[j] = f[j - 1] * j;
	i[maxn] = f[maxn].inv();
	for (int j = maxn - 1; j >= 0; j--)
		i[j] = i[j + 1] * (j + 1);
	return {f, i};
}

auto [fact, invs] = get_fact(10);

template<i64 mod = MOD>
mint<mod> multinom(i64 n, vector<i64> ks) {
	mint ans = fact[n];
	for (auto k: ks) {
		if (k < 0)
			return 0;
		n -= k;
		ans *= invs[k];
	}
	if (n < 0)
		return 0;
	return ans * invs[n];
}

template<i64 mod = MOD>
mint<mod> catalan(i64 n) {
	return multinom(2 * n, {n})
			 - multinom(2 * n, {n - 1});
}

template<i64 mod = MOD>
mint<mod> catalan(i64 m, i64 n) {
	if (m > n || n < 0 || m < 0) return 0;
	return multinom(m + n, {m})
			 - multinom(m + n, {m - 1});
}
