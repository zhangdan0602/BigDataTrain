#include <iostream>
#include <stdio.h>
using namespace std;
int main()
{
    int i,n;
    __int64_t dp[1010][10];
    while(scanf("%d",&n)!=EOF)
    {
        for (i=1;i<=n;i++)
        {
            dp[i][0]=1;
            dp[i][1]=(dp[i-1][1]*2+dp[i-1][0])%1000000007;
            dp[i][2]=(dp[i-1][2]+dp[i-1][0])%1000000007;
            dp[i][3]=(dp[i-1][3]*2+dp[i-1][1])%1000000007;
            dp[i][4]=(dp[i-1][4]*2+dp[i-1][2]+dp[i-1][1])%1000000007;
            dp[i][5]=(dp[i-1][5]*2+dp[i-1][4]+dp[i-1][3])%1000000007;
        }
        printf("%d\n",dp[n][5]);
    }  
    return 0;  
}
