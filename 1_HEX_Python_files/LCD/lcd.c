
//移动版
#include <pic.H>
#define uchar unsigned char
#define uint unsigned int

const uchar  table[]={"DuDu DuDu"};
const uchar  table1[]={"I Love you!"};

//RA0是RS
//RA2是EN
uchar num;
void delay(uint z)
{
	uint x,y;
	for(x=z;x>0;x--)
		for(y=110;y>0;y--);
}

void write_com(uchar com)//写命令
{
	RA0=0;//写命令
	PORTB=com;//将命令赋给端口B
	delay(5);
	RA2=1;//使能E为1,高脉冲将命令取走
	delay(5);
	RA2=0;//使能E为0
}

void write_data(uchar date)//写数据
{
	RA0=1;//写数据
	PORTB=date;//将数据命令赋给端口B
	delay(5);
	RA2=1;//使能E为1,高脉冲将命令取走
	delay(5);
	RA2=0;//使能E为0
}

void init()
{
	TRISA = 0X00;
	TRISB = 0X00;
	RA2=0;//初始使能E为0
	write_com(0x38);//中文手册第二页，显示模式设置
	write_com(0x0e);//设置光标显示状态，开显示、显示光标、
	//光标关闪烁0x0e,光标开闪烁0x0f
	write_com(0x06);//指针自动加一，整屏不移动
	write_com(0x01);//清屏指令
	write_com(0x80+0x10);//数据指针初始化
}

void main()
{
	init();
	for(num=0;num<=8;num++)
	{
		write_data(table[num]);
		delay(20);
	}
	write_com(0x80+0x50);//初始化第二行的位置
	for(num=0;num<=10;num++)
	{
		write_data(table1[num]);
		delay(20);
	}
	for(num=0;num<16;num++)//整体左移
	{
		write_com(0x18);
		delay(200);
	}
	while(1);
}
/*

//静止版
#include <pic.H>
#define uchar unsigned char
#define uint unsigned int

const uchar  table[]={"DuDu DuDu"};
const uchar  table1[]={"I Love you!"};

//RA0是RS
//RA2是EN
uchar num;
void delay(uint z)
{
	uint x,y;
	for(x=z;x>0;x--)
		for(y=110;y>0;y--);
}

void write_com(uchar com)//写命令
{
	RA0=0;//写命令
	PORTB=com;//将命令赋给端口B
	delay(5);
	RA2=1;//使能E为1,高脉冲将命令取走
	delay(5);
	RA2=0;//使能E为0
}

void write_data(uchar date)//写数据
{
	RA0=1;//写数据
	PORTB=date;//将数据命令赋给端口B
	delay(5);
	RA2=1;//使能E为1,高脉冲将命令取走
	delay(5);
	RA2=0;//使能E为0
}

void init()
{
	TRISA = 0X00;
	TRISB = 0X00;
	RA2=0;//初始使能E为0
	write_com(0x38);//中文手册第二页，显示模式设置
	write_com(0x0e);//设置光标显示状态，开显示、显示光标、
	//光标关闪烁0x0e,光标开闪烁0x0f
	write_com(0x06);//指针自动加一，整屏不移动
	write_com(0x01);//清屏指令
	write_com(0x80);//数据指针初始化
}

void main()
{
	init();
	for(num=0;num<=8;num++)
	{
		write_data(table[num]);
		delay(20);
	}
	write_com(0x80+0x40);//初始化第二行的位置
	for(num=0;num<=10;num++)
	{
		write_data(table1[num]);
		delay(20);
	}
	while(1);
}

*/