#include "beep.h"

void beep(u8 time){
    while (time--)
    {
        BEEP = 1;
        delay_10us(190);
        BEEP=0;
        delay_10us(10);
    }
    time=0;
    BEEP=0;
}