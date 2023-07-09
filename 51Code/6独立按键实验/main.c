#include"../common.h"

void main(){
    u8 key=0;
    while(1){
        key=key_scan(0);
        if(key==KEY1_PRESS){//检测按键K1是否按下
            LED1=!LED1;//LED1状态翻转
        }
    }
}