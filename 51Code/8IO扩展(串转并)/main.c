#include"../common.h"

/*
74HC595是一个8位串行输入、并行输出的位移缓存器，其中并行输出为三态输出（即为高电平、低电平和高阻抗）

*/
void main(){
    u8 i=0;
    LEDDZ_COL_PORT=0x00;//将LED 点阵列全部设置为0，即LED阴极为低电平
    while(1){
        for(i=0; i<8; i++){
            hc595_write_data(0x00);//消除前面寄存器缓存数据
            hc595_write_data(ghc595_buf[2]);//写入新的数据
            delay_ms(500);
        }
    }
}