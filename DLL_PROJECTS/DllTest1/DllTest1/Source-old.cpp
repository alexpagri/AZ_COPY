#define DllExport extern "C" __declspec(dllexport)
#include <windows.h>
#include <iostream>
#include <random>
#include <ctime>
#include <fstream>

using namespace std;

int m, n, p, x[500][500];                        ///////////n=nr de linii; m=nr de coloane; total_green_blocks=p; x=matrice
string appdata = getenv("LOCALAPPDATA");

DllExport void citire(char wd[])
{
	string text1 = wd;
	ifstream f(appdata + text1);
	f >> n;
	f >> m;
	f >> p;
	for (int i = 1; i <= n; i++)
	{
		for (int j = 1; j <= m; j++)
		{
			f >> x[i][j];
		}
	}
	f.close();
}



DllExport int random(int a, int b)
{
	static default_random_engine Random(time(0));
	uniform_int_distribution<int> Roll(a, b);
	return Roll(Random);
}




DllExport double gen(char wd[], char wd_out[])
{
	citire(wd);
	string text1 = wd_out;
	ofstream g(appdata + text1);

	int ok = 0, k = 0, THEVICTORIOUS_I, THEVICTORIOUS_J;

	int rand = random(1, p);

	ok = 0;

	for (int i = 1; i <= n; i++)
	{
		for (int j = 1; j <= m; j++)
		{
			if (x[i][j] == 1)k++;
			if (k == rand && ok == 0)
			{
				ok = 1;
				THEVICTORIOUS_I = i;
				THEVICTORIOUS_J = j;
			}
		}
	}

	g << THEVICTORIOUS_I << ' ' << THEVICTORIOUS_J;
	g.close();

	return 0.0;
}
