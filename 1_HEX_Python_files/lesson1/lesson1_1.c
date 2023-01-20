#include<pic.h>
#define uchar unsigned char
#define uint unsigned int

__CONFIG(0x3ff5);
void delay(uint x)//ÑÓÊ±x.01ºÁÃë
{
	uint a,b;
	for(a=x;a>0;a--)
		for(b=110;b>0;b--);
}
void main()
{
	uchar i;
	TRISB=0x00;
	PORTB=0x01;
	delay(200);
	for(i=0;i<=7;i++)
	{
		PORTB=PORTB<<1;
		delay(200);
	}
}
