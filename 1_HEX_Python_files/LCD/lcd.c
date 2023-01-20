
//�ƶ���
#include <pic.H>
#define uchar unsigned char
#define uint unsigned int

const uchar  table[]={"DuDu DuDu"};
const uchar  table1[]={"I Love you!"};

//RA0��RS
//RA2��EN
uchar num;
void delay(uint z)
{
	uint x,y;
	for(x=z;x>0;x--)
		for(y=110;y>0;y--);
}

void write_com(uchar com)//д����
{
	RA0=0;//д����
	PORTB=com;//��������˿�B
	delay(5);
	RA2=1;//ʹ��EΪ1,�����彫����ȡ��
	delay(5);
	RA2=0;//ʹ��EΪ0
}

void write_data(uchar date)//д����
{
	RA0=1;//д����
	PORTB=date;//������������˿�B
	delay(5);
	RA2=1;//ʹ��EΪ1,�����彫����ȡ��
	delay(5);
	RA2=0;//ʹ��EΪ0
}

void init()
{
	TRISA = 0X00;
	TRISB = 0X00;
	RA2=0;//��ʼʹ��EΪ0
	write_com(0x38);//�����ֲ�ڶ�ҳ����ʾģʽ����
	write_com(0x0e);//���ù����ʾ״̬������ʾ����ʾ��ꡢ
	//������˸0x0e,��꿪��˸0x0f
	write_com(0x06);//ָ���Զ���һ���������ƶ�
	write_com(0x01);//����ָ��
	write_com(0x80+0x10);//����ָ���ʼ��
}

void main()
{
	init();
	for(num=0;num<=8;num++)
	{
		write_data(table[num]);
		delay(20);
	}
	write_com(0x80+0x50);//��ʼ���ڶ��е�λ��
	for(num=0;num<=10;num++)
	{
		write_data(table1[num]);
		delay(20);
	}
	for(num=0;num<16;num++)//��������
	{
		write_com(0x18);
		delay(200);
	}
	while(1);
}
/*

//��ֹ��
#include <pic.H>
#define uchar unsigned char
#define uint unsigned int

const uchar  table[]={"DuDu DuDu"};
const uchar  table1[]={"I Love you!"};

//RA0��RS
//RA2��EN
uchar num;
void delay(uint z)
{
	uint x,y;
	for(x=z;x>0;x--)
		for(y=110;y>0;y--);
}

void write_com(uchar com)//д����
{
	RA0=0;//д����
	PORTB=com;//��������˿�B
	delay(5);
	RA2=1;//ʹ��EΪ1,�����彫����ȡ��
	delay(5);
	RA2=0;//ʹ��EΪ0
}

void write_data(uchar date)//д����
{
	RA0=1;//д����
	PORTB=date;//������������˿�B
	delay(5);
	RA2=1;//ʹ��EΪ1,�����彫����ȡ��
	delay(5);
	RA2=0;//ʹ��EΪ0
}

void init()
{
	TRISA = 0X00;
	TRISB = 0X00;
	RA2=0;//��ʼʹ��EΪ0
	write_com(0x38);//�����ֲ�ڶ�ҳ����ʾģʽ����
	write_com(0x0e);//���ù����ʾ״̬������ʾ����ʾ��ꡢ
	//������˸0x0e,��꿪��˸0x0f
	write_com(0x06);//ָ���Զ���һ���������ƶ�
	write_com(0x01);//����ָ��
	write_com(0x80);//����ָ���ʼ��
}

void main()
{
	init();
	for(num=0;num<=8;num++)
	{
		write_data(table[num]);
		delay(20);
	}
	write_com(0x80+0x40);//��ʼ���ڶ��е�λ��
	for(num=0;num<=10;num++)
	{
		write_data(table1[num]);
		delay(20);
	}
	while(1);
}

*/