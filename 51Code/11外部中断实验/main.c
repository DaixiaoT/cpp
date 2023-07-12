#include"../common.h"
void main(){
    exti0_init();//外部中断0配置
    while(1){

    }
}
void exti0() __interrupt 0//外部中断0中断函数
{
    delay_10us(1000);//消抖
    if(KEY3==0){//再次判断K3键是否按下
        LED1=!LED1;//LED1状态翻转
    }
}