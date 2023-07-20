#include"../Public/public.h"
#include "../App/at24c02/at24c02.h"
#include "../App/key/key.h"
#include "../App/smg/smg.h"
#include "../App/beep/beep.h"


#define EEPROM_ADDRESS 0
void main(){
    u8 key_temp=0;
    u8 save_value=0;
    u8 save_buf[3];

    while(1){
        key_temp=key_scan(0);
        if(key_temp==KEY1_PRESS){
           
            at24c02_write_one_byte(EEPROM_ADDRESS,save_value);
            beep(30);
        }
        else if(key_temp==KEY2_PRESS){
            
            save_value= at24c02_read_byte(EEPROM_ADDRESS);
            beep(50);
        }
        else if(key_temp==KEY3_PRESS){
            save_value++;
            if(save_value==255){
                save_value=255;
            }
        }
        else if(key_temp==KEY4_PRESS){
            save_value=0;
            beep(50);
        }
        save_buf[0]=save_value/100;
        save_buf[1]=save_value%100/10;
        save_buf[2]=save_value%10;
        smg_display(save_buf,6);
    }
}