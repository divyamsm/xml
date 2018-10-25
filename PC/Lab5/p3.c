#include <stdio.h>
#include <omp.h>

int main(){
	int i,n = 5;
	printf("enter 5 elements\n");
	int a[5];
	for(i=0;i<n;i++){
		scanf("%d",&a[i]);
	}

	int smallest = 999999;

	#pragma omp parallel num_threads(4)
	{
		#pragma omp for
		{
			for( i= 0;i <n;i++){
				if (smallest>a[i])
					smallest = a[i];
			}
		}
	}

	printf(" smallest %d \n",smallest );
}
