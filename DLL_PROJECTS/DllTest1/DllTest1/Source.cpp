#define DllExport extern "C" __declspec(dllexport)
#include <windows.h>
#include <stdlib.h>
#include <iostream> 
#include <fstream>
#include <random>
#include <ctime>


using namespace std; 
//n - numar lini ; m - numar coloane


string appdata = getenv("LOCALAPPDATA");
string text1, text2;
 

DllExport void citire(int &n, int &m, int** &mat, int &tr_l, int &tr_c, int &k, int &Nr_spati_libere_a_lui_Alex)
{
	ifstream f(appdata + text1);
	int i, j;
	k = 0;
	f >> n >> m;
	f >> Nr_spati_libere_a_lui_Alex;
	f >> tr_l >> tr_c;// pozitie obiect inamic
	for (i = 1; i <= n; i++)
		for (j = 1; j <= m; j++)
		{
			f >> mat[i][j];
			if (mat[i][j] == 1)
				k++;//numar cate spatii libere exista
		}
	f.close();
}


DllExport void stergere(int n, int m, int** &mat, int tr_l, int tr_c, int &k, int Nr_spati_libere_a_lui_Alex)
{
	int i, j;
	for (i = tr_l - Nr_spati_libere_a_lui_Alex; i <= tr_l + Nr_spati_libere_a_lui_Alex; i++)//dau valoarea '0' linilor de la pozitia data cu 3 lini in sus si 3 in jos
		for (j = 1; j <= m; j++)if (i > 0)
		{
			if (mat[i][j] == 1)
				k--;//actualizez numarul de spatii libere
			mat[i][j] = 0;
		}
	for (i = 1; i <= n; i++)//dau valoarea '0' coloanelor de la pozitia data cu 3 coloane in sus si 3 in jos
		for (j = tr_c - Nr_spati_libere_a_lui_Alex; j <= tr_c + Nr_spati_libere_a_lui_Alex; j++)if (j > 0)
		{
			if (mat[i][j] == 1)
				k--;//actualizez numarul de spatii libere
			mat[i][j] = 0;
		}
}



DllExport void transformare(int n, int m, int** &mat, int p)
{
	int i, j;
	ofstream g(appdata + text2);
	for (i = 1; i <= n && p != 0; i++)
		for (j = 1; j <= m && p != 0; j++)
			if (mat[i][j] == 1)//trec prin pozitile libere
			{
				p--;//scad din numarul ales aleatoriu pana cand ajunge la 0
				if (p == 0)
					g << i << " " << j << endl;//cand ajunge la 0 afisez ultima pozitie verificata
			}
	g.close();
}


DllExport void afisare(int n, int m, int** &mat)
{
	int i, j;
	for (i = 1; i <= n; i++)
	{
		for (j = 1; j <= m; j++)
			cout << mat[i][j] << " ";
		cout << endl;
	}
}



DllExport double spawn_vladeas_pro(char wd[], char wd_out[])
{
	text1 = wd;
	text2 = wd_out;
	int n = 0, m = 0, tr_l, tr_c, p, Nr_spati_libere_a_lui_Alex;
	int rows = 500, cols = 500;
	int **mat = (int **)malloc(rows * sizeof(int*));
	for (int i = 0; i < rows; i++) mat[i] = (int *)malloc(cols * sizeof(int));
	for (int i = 0; i < rows; i++)for (int j = 0; j < cols; j++)mat[i][j] = 0;
	int k;
	citire(n, m, mat, tr_l, tr_c, k, Nr_spati_libere_a_lui_Alex);//citesc matricea si pozitia initiala
	stergere(n, m, mat, tr_l, tr_c, k, Nr_spati_libere_a_lui_Alex);//sterg pozitile din jurul pozitiei initiale 
	default_random_engine Random(time(0));
	uniform_int_distribution<int> Roll(1, k + 1);
	p = Roll(Random);// aleg un numar aleatoriu dintre '1' si numarul de spatii libere ramase 
	transformare(n, m, mat, p);//folosindu-ma de numarul ales aleatoriu o sa aleg o pozitie libera la intamplare
	//afisare(n,m,mat);
	return 0.0;
}
