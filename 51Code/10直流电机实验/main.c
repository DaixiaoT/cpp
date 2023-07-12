#include"../common.h"

void main(){
    DC_Motor=1;//开启电机
    delay_10us(DC_MOTOR_RUN_TIME);
    DC_Motor=0;
    while(1){}
}