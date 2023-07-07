#include"../common.h"
#define LED_PORT P2

void main(){
    u8 i = 0;
    while(1){
        for(i=0; i<8; i++){
            LED_PORT=~(0x01<<i);
            delay_10us(50000);
        }
    } 
}