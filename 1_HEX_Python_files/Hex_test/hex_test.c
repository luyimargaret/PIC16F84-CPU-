#include<pic.h>
//关闭代码保护               bit13 - bit4 = 1
//开启上电定时器使能         bit3 = 1
//关闭看门狗                 bit2 = 0
//因为晶振4Mhz为XY，所以选择 bit1 - bit0 = 01
//__CONFIG(0x3ff9);
void main()
{
	TRISB=0x00;
	PORTB=0xff;
	//while(1);
}
