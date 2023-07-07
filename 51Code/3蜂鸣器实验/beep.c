#include"../common.h"

void main(){
    u16 i=20;
    while (i--)
    {
        BEEP = 1;
        delay_10us(190);
        BEEP=0;
        delay_10us(10);
    }
    i=0;
    BEEP=0;
    
}