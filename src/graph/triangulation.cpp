// included from https://github.com/franv314/booklet/blob/main/src/graph/triangulation.cpp

#include <bits/stdc++.h>
using namespace std;

vector<vector<int>> triangulation_tree(
	int n, vector<array<int, 2>> edges
) {
	for (auto &[u, v]: edges)
		if (u > v) swap(u, v);

	sort(
		edges.begin(), edges.end(),
		[](const auto &a, const auto &b) {
			return a[1] - a[0] < b[1] - b[0];
		}
	);

	vector<vector<int>> children;
	vector<pair<int, int>> nxt(n);

	for (int i = 0; i < n; i++)
		nxt[i] = {(i + 1) % n, -1};

	for (auto [l, r]: edges) {
		int curr = children.size();
		children.emplace_back();

		int i = l;
		while (i != r) {
			if (nxt[i].second != -1)
				children[curr].push_back(nxt[i].second);

			int p = i;
			i = nxt[i].first;
			nxt[p] = {-1, -1};
		}
		nxt[l] = {r, curr};
	}

	children.emplace_back();
	for (int i = 0; i < n; i++)
		if (nxt[i].second != -1)
			children.back().push_back(nxt[i].second);

	return children;
}
