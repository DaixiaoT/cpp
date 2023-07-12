#include"../common.h"
void main(){
    uart_init(0XFA);//波特率为9600
    while(1){

    }
}
void uart() __interrupt 4
{
    u8 rec_data;
    RI = 0;
    rec_data=SBUF;
    SBUF=rec_data;
    while(!TI);
    TI=0;
}