#include"../common.h"

void main(){
    u16 i=20;
    while (i)
    {
        i--;
        BEEP = 1;
        delay_10us(10);
        // BEEP = 0;
        // delay_10us(1000);
    }
    i=0;
    BEEP=0;
    
}