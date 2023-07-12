#include"../common.h"
void main(){
    u8 i=0;
    LEDDZ_COL_PORT=0x7f;//将LED点阵左边第一列设置为0，即LED阴极为低电平，其余列为1，即为高电平
    while(1){
        hc595_write_data(0x80);//将LED点阵上边阵第一行设置为1，即LED阳极为高电平，
                                //其余行为0，即低电平
    }
}