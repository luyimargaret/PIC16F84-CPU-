#include<pic.h>
#define uchar unsigned char
#define uint unsigned int

void delay(uint x)//ÑÓÊ±x.01ºÁÃë
{
	uint a,b;
	for(a=x;a>0;a--)
		for(b=2;b>0;b--);
}
void main()
{	
	TRISB=0X00;
	while(1)
	{
		PORTB=0Xff;
		delay(1);
		PORTB=0X00;
		delay(1);
	}
}

