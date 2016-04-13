#include <iostream> 
#include <fstream>
#include <random>
#include <ctime>


using namespace std; 
//n - numar lini ; m - numar coloane
 

void citire(int &n,int &m,int mat[500][500],int &tr_l,int &tr_c,int &k)
{
	ifstream f("text.txt");
	int i, j;
	k=0;
	f>>n>>m;
	f>>tr_l>>tr_c;// pozitie obiect inamic
	for(i=1;i<=n;i++)
		for(j=1;j<=m;j++)
		{
			f>>mat[i][j];
			if(mat[i][j]==1)
				k++;//numar cate spatii libere exista
		}
	f.close();
}


void stergere(int n,int m,int mat[500][500],int tr_l,int tr_c,int &k)
{
	int i, j;
	for(i=tr_l-3;i<=tr_l+3;i++)//dau valoarea '0' linilor de la pozitia data cu 3 lini in sus si 3 in jos
		for(j=1;j<=m;j++)
		{
			if(mat[i][j]==1)
				k--;//actualizez numarul de spatii libere
			mat[i][j]=0;
		}
	for(i=1;i<=n;i++)//dau valoarea '0' coloanelor de la pozitia data cu 3 coloane in sus si 3 in jos
		for(j=tr_c-3;j<=tr_c+3;j++)
		{
			if(mat[i][j]==1)
				k--;//actualizez numarul de spatii libere
			mat[i][j]=0;
		}
}



void transformare(int n,int m,int mat[500][500],int p)
{
	int i, j;
	for(i=1;i<=n && p!=0;i++)
		for(j=1;j<=m && p!=0;j++)
			if(mat[i][j]==1)//trec prin pozitile libere
			{
				p--;//scad din numarul ales aleatoriu pana cand ajunge la 0
				if(p==0)
					cout<<i<<" "<<j<<endl;//cand ajunge la 0 afisez ultima pozitie verificata
			}
}


void afisare(int n,int m,int mat[500][500])
{
	int i,j;
	for(i=1;i<=n;i++)
	{
		for(j=1;j<=m;j++)
			cout<<mat[i][j]<<" ";
		cout<<endl;
	}
}


int main()
{
	int n=0,m=0,mat[500][500],tr_l,tr_c,p;
	int k;
	citire(n,m,mat,tr_l,tr_c,k);//citesc matricea si pozitia initiala
	stergere(n,m,mat,tr_l,tr_c,k);//sterg pozitile din jurul pozitiei initiale 
	default_random_engine Random(time(0));
	uniform_int_distribution<int> Roll(1,k);
	p= Roll(Random);// aleg un numar aleatoriu dintre '1' si numarul de spatii libere ramase 
	transformare(n,m,mat,p);//folosindu-ma de numarul ales aleatoriu o sa aleg o pozitie libera la intamplare
	//afisare(n,m,mat);
	system("pause");
}
