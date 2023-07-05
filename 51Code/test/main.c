#include <8051.h>
#define LSA P1_5
#define LSB P1_6
#define LSC P1_7
#define Led10 P0_7
int main(void){
	unsigned int a;
	while(1){
		LSA = 0;
		LSB = 0;
		LSC = 0;
		Led10 = 0;
		a = 50000;
		while(a--);
		Led10 = 1;
		a = 50000;
		while(a--);
	}
}
