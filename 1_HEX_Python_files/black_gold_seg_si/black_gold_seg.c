#include<pic.h>
#define uchar unsigned char
#define uint unsigned int

//__CONFIG(0x3ff5);
void delay(uint x)//��ʱx.01����
{
	uint a,b;
	for(a=x;a>0;a--)
		for(b=10;b>0;b--);
}
unsigned char led[]={ //����
                0xC0,  //"0"
                0xF9,  //"1"
                0xA4,  //"2"
                0xB0,  //"3"
                         }; 
void main()
{
	TRISA=0X00;//����TRISA��λѡ��Ϊ���
	TRISB=0X00;//����TRISB����ѡ��Ϊ���
	while(1)
	{
		PORTA = 0x07;//ʹ�ܵ�һ�������
		PORTB =led[0];
		delay(10);

		PORTA = 0x0b;//ʹ�ܵڶ��������
		PORTB = led[1];
		delay(10);

		PORTA = 0x0d;//ʹ�ܵ����������
		PORTB = led[2];
		delay(10);

		PORTA = 0x0e;//ʹ�ܵ��ĸ������
		PORTB = led[3];
		delay(10);
	}
	
}