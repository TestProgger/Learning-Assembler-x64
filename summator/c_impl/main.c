#include <stdlib.h>
#include <stdio.h>


int main(int argc, char*argv[])
{
	register unsigned long int rax = 0;

	for(register unsigned long int rcx  = 0; rcx <= 1000000000;rcx++){
		rax += rcx;
	}

	printf("%ld" , rax);
	return 0;
}
