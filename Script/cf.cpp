// This script will visit Codeforces problem and browse solution fast
// and can download cf problem but need to install wkhtmltopdf tool first
//flags 
// v = visit problem using firefox 
// s = status of a contest.. (solution )
// p = download pdf
#include <bits/stdc++.h>
using namespace std;
int main(int argc, char *argv[])
{
	if (argc > 1)
	{
		string str(argv[1]);
		if (str == "v")
		{
			for (int i = 2; i < argc; i++)
			{
				char f[100] = "firefox https://codeforces.com/contest/";
				int l = strlen(f);
				int q = strlen(argv[i]);
				int s = 0;
				while (s < q && argv[i][s] >= '0' && argv[i][s] <= '9')
					f[l++] = argv[i][s++];
				f[l] = '\0';
				strcat(f, "/problem/");
				l = strlen(f);
				while (s < q)
					f[l++] = argv[i][s++];
				f[l] = '\0';
				system(f);
			}
		}
		else if (str == "s")
		{

			for (int i = 2; i < argc; i++)
			{
				char f[100] = "firefox https://codeforces.com/contest/";
				strcat(f, argv[i]);
				strcat(f, "/status");
				system(f);
			}
		}
		else if (str == "p")
		{
			for (int i = 2; i < argc; i++)
			{
				char f[150] = "wkhtmltopdf https://codeforces.com/contest/";
				int l = strlen(f);
				int q = strlen(argv[i]);
				int s = 0;
				while (s < q && argv[i][s] >= '0' && argv[i][s] <= '9')
					f[l++] = argv[i][s++];
				f[l] = '\0';
				strcat(f, "/problem/");
				l = strlen(f);
				while (s < q)
					f[l++] = argv[i][s++];
				f[l] = '\0';
				strcat(f," ~/Documents/");
				strcat(f,argv[i]);
				strcat(f,".pdf");
				system(f);
			}
		}
	}
	return 0;
}

