#include<pic.h>
//�رմ��뱣��               bit13 - bit4 = 1
//�����ϵ綨ʱ��ʹ��         bit3 = 1
//�رտ��Ź�                 bit2 = 0
//��Ϊ����4MhzΪXY������ѡ�� bit1 - bit0 = 01
//__CONFIG(0x3ff9);
void main()
{
	TRISB=0x00;
	PORTB=0xff;
	//while(1);
}
