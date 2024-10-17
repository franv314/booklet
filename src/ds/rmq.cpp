#include <bits/stdc++.h>
using namespace std;

typedef long long i64;

template <typename T=i64>
struct rmq{
	vector<vector<T>> sp;
	int n, log;
	rmq(int size, vector<T> &vec){
		n = size;
		log = 32 - __builtin_clz(n);
		sp.resize(log, vector<T>(n));

		sp[0] = vec;
		for(int i=0; i<log-1; i++){
			for(int j=0; j<n; j++){
				if(j + (1<<i) >= n) sp[i+1][j] = sp[i][j];
				else sp[i+1][j] = min(sp[i][j], sp[i][j+(1<<i)]); // change here for different operation
			}
		}
	}

	// query in range [l, r)
	T query(int l, int r){
		int size = 31 - __builtin_clz(r-l);
		return min(sp[size][l], sp[size][r - (1<<size)]); // change here for different operation
	}
};
