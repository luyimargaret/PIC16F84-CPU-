#include<pic.h>
#define uchar unsigned char
#define uint unsigned int

//__CONFIG(0x3ff5);
void delay(uint x)//延时x.01毫秒
{
	uint a,b;
	for(a=x;a>0;a--)
		for(b=10;b>0;b--);
}
unsigned char led[]={ //共阳
                0xC0,  //"0"
                0xF9,  //"1"
                0xA4,  //"2"
                0xB0,  //"3"
                         }; 
void main()
{
	TRISA=0X00;//设置TRISA（位选）为输出
	TRISB=0X00;//设置TRISB（段选）为输出
	while(1)
	{
		PORTA = 0x07;//使能第一个数码管
		PORTB =led[0];
		delay(10);

		PORTA = 0x0b;//使能第二个数码管
		PORTB = led[1];
		delay(10);

		PORTA = 0x0d;//使能第三个数码管
		PORTB = led[2];
		delay(10);

		PORTA = 0x0e;//使能第四个数码管
		PORTB = led[3];
		delay(10);
	}
	
}