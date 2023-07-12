#include"../common.h"
void main(){
    time0_init();//定时器0中断配置
    while(1){

    }
}

void time0() __interrupt 1 //定时器0中断函数
{
    static u16 i;//定义静态变量i
    TH0=0XFC;   //给定时器赋初值，定时1ms
    TL0=0X18;
    i++;
    if(i==1000){
        i=0;
        LED1=!LED1;
    }
}