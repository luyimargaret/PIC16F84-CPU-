#include<pic.h>
#define uchar unsigned char
#define uint unsigned int

__CONFIG(0x3ff5);
void delay(uint x)//��ʱx.01����
{
	uint a,b;
	for(a=x;a>0;a--)
		for(b=110;b>0;b--);
}
unsigned char led[]={ //����
 
                0xC0,  //"0"
                0xF9,  //"1"
                0xA4,  //"2"
                0xB0,  //"3"
                0x99,  //"4"
                0x92,  //"5"
                0x82,  //"6"
                0xF8,  //"7"
                0x80,  //"8"
                0x90,  //"9"
                0x88,  //"A"
                0x83,  //"B"
                0xC6,  //"C"
                0xA1,  //"D"
                0x86,  //"E"
                0x8E,  //"F"
                0x89,  //"H"
                0xC7,  //"L"
                0xC8,  //"n"
                0xC1,  //"u"
                0x8C,  //"P"
                0xA3,  //"o"
                0xBF,  //"-"
                0xFF,  //Ϩ��
                0xFF  //�Զ���
 
                         };
void main()
{
	TRISA=0X00;//����TRISA��λѡ��Ϊ���
	TRISB=0X00;//����TRISB����ѡ��Ϊ���
	while(1)
	{

		PORTA = 0x08;//ʹ�ܵ�һ�������
		PORTB = led[1];
		delay(1);

		PORTA = 0x04;//ʹ�ܵڶ��������
		PORTB = led[2];
		delay(1);

		PORTA = 0x02;//ʹ�ܵ����������
		PORTB = led[3];
		delay(1);

		PORTA = 0x01;//ʹ�ܵ��ĸ������
		PORTB = led[4];
		delay(1);

	}
	
}