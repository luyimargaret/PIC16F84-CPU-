module alu(
input clock,
input reset,
input en,
input [4:0]IN_opcode,
input [9:0]IN_operand,
input [9:0]IN_SFR,
output reg[7:0]OUT_SFR=0,
output reg Z=0,
output reg [7:0]W=0//仅供仿真使用
);

//reg [7:0]W=0;//W寄存器
always@(posedge clock,posedge reset)
begin
	if(reset==1)
		begin
		OUT_SFR<=0;
		W<=0;
		end
	else
		if((en==1))
			if((IN_opcode==5'd7)||(IN_opcode==5'd8))
			//7_MOVLW//8_RETLW
				W=IN_operand[7:0];
				
			else if(IN_opcode==5'd10)//10_ADDLW_Z
				begin
				W=IN_operand[7:0]+W;
				if(W==8'd0)
					Z=1;
				else
					Z=0;
				end
			else if(IN_opcode==5'd9)//9_SUBLW_Z
				begin
				W=IN_operand[7:0]-W;
			   if(W==8'd0)
					Z=1;
				else
					Z=0;
				end
			else if(IN_opcode==5'd26)//26_ANDLW_Z
				begin
				W=IN_operand[7:0]&W;
				if(W==8'd0)
					Z=1;
				else
					Z=0;
				end
			else if(IN_opcode==5'd25)//25_IORLW_Z
				begin
				W=IN_operand[7:0]|W;
				if(W==8'd0)
					Z=1;
				else
					Z=0;
				end
			else if(IN_opcode==5'd27)//27_XORLW_Z
				begin
				W=IN_operand[7:0]^W;
				if(W==8'd0)
					Z=1;
				else
					Z=0;
				end
				
			else if(IN_opcode==5'd16)//16_ADDWF_Z
				begin
				if((IN_SFR[7:0]+W)==9'b10000_0000)
					Z=1;
				else
					Z=0;
				if(IN_operand[7]==0)
					W=IN_SFR[7:0]+W;
				else
					OUT_SFR<=IN_SFR[7:0]+W;
				end
			else if(IN_opcode==5'd11)//11_SUBWF_Z
				begin
				if((IN_SFR[7:0]-W)==8'd0)
					Z=1;
				else
					Z=0;
				if(IN_operand[7]==0)
					W=IN_SFR[7:0]-W;
				else
					OUT_SFR<=IN_SFR[7:0]-W;
			   end
			else if(IN_opcode==5'd14)//14_ANDWF_Z
				begin
				if((IN_SFR[7:0]&W)==8'd0)
					Z=1;
				else
					Z=0;
				if(IN_operand[7]==0)
					W=IN_SFR[7:0]&W;
				else
					OUT_SFR<=IN_SFR[7:0]&W;
			   end
			else if(IN_opcode==5'd13)//13_IORWF_Z
				begin
				if((IN_SFR[7:0]|W)==8'd0)
					Z=1;
				else
					Z=0;
				if(IN_operand[7]==0)
					W=IN_SFR[7:0]|W;
				else
					OUT_SFR<=IN_SFR[7:0]|W;
				end	
			else if(IN_opcode==5'd15)//15_XORWF_Z
				begin
				if((IN_SFR[7:0]^W)==8'd0)
					Z=1;
				else
					Z=0;
				if(IN_operand[7]==0)
					W=IN_SFR[7:0]^W;
				else
					OUT_SFR<=IN_SFR[7:0]^W;
				end
				
			else if((IN_opcode==5'd12)||(IN_opcode==5'd19)||(IN_opcode==5'd17)||(IN_opcode==5'd18)||(IN_opcode==5'd20)||(IN_opcode==5'd24))
			//12_DECF_Z//19_INCF_Z//17_MOVF_Z//18_COMF_Z//20_DECFSZ_Z//24_INCFSZ_Z
				begin
				if(IN_operand[7]==0)
					W=IN_SFR;
				else
					W=W;
				end
			else if((IN_opcode==5'd21)||(IN_opcode==5'd22)||(IN_opcode==5'd23))
			//21_RRF//22_RLF//23_SWAPF
				if(IN_operand[7]==0)
					W=IN_SFR;
				else
					W=W;
			else if(IN_opcode==5'd29)//29_CLRW_Z
				begin
				W='b0000_0000;
				Z=1;
				end
			else if(IN_opcode==5'd30)//30_MOVWF
				OUT_SFR<=W;
			else
				begin
				OUT_SFR<=OUT_SFR;
				W<=W;
				Z<=0;//其他指令来的时候Z=0
				end
		else
			begin
			OUT_SFR<=OUT_SFR;
			W<=W;
			Z<=Z;//同一指令的其他周期内Z的值不变
			end
end

endmodule
				
