#include<bits/stdc++.h>
typedef long long int lli;
using namespace std;
int main()
{
		lli i,j,sum;
		lli arr[10];
		lli  h[8];
		lli ans[10];
		for(i=0;i<10;i++)
				arr[i] = i;
		for(i=0;i<8;i++)
				h[i] = i;
		for(i=0;i<10;i++)
		{
				sum = 0;
				for(j=0;j<=i;j++)
				{
					sum += arr[j]*h[i-j];
				}
				ans[i] = sum;
		}
		for(i=0;i<10;i++)
				cout<<ans[i]<<" ";

		return 0;
}
