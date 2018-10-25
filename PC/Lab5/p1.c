#include<stdio.h>
#include <omp.h>
int main()
{
	double pi,x,t1,t2;
	int i,N;
	pi=0.0;
	N=1000;
	t1 = omp_get_wtime();
	#pragma omp parallel for
	for(i=0;i<=N;i++)
		{ x=(double)i/N;
		pi+=4/(1+x*x);
		}
	pi=pi/N;
	printf("Pi is %f\n",pi);
	t2 = omp_get_wtime();
	printf("Time difference : %f", t2- t1);
}