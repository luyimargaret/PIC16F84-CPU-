module decode(
input clock,
input reset,
input en,
input[13:0]IN_MEMORY,
output reg[4:0]OUT_opcode=0,
output reg[9:0]OUT_operand=0,
output reg[1:0]sel=0
);

always@(posedge clock,posedge reset)
begin
	if(reset==1)
		begin
			OUT_opcode<=0;
			OUT_operand<=0;
			sel<=0;
		end
	else
		if(en==1)
			begin
				if(IN_MEMORY[13:11]=='b100)//1_CALL
				begin
					OUT_opcode<=5'd1;
					OUT_operand<=IN_MEMORY[9:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:11]=='b101)//2_GOTO
				begin
					OUT_opcode<=5'd2;
					OUT_operand<=IN_MEMORY[9:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:10]=='b0100)//3_BCF
				begin
					OUT_opcode<=5'd3;
					OUT_operand<=IN_MEMORY[9:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:10]=='b0101)//4_BSF
				begin
					OUT_opcode<=5'd4;
					OUT_operand<=IN_MEMORY[9:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:10]=='b0110)//5_BTFSC
				begin
					OUT_opcode<=5'd5;
					OUT_operand<=IN_MEMORY[9:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:10]=='b0111)//6_BTFSS
				begin
					OUT_opcode<=5'd6;
					OUT_operand<=IN_MEMORY[9:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:10]=='b1100)//7_MOVLW
				begin
					OUT_opcode<=5'd7;
					OUT_operand<=IN_MEMORY[9:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:10]=='b1101)//8_RETLW
				begin
					OUT_opcode<=5'd8;
					OUT_operand<=IN_MEMORY[9:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:9]=='b11110)//9_SUBLW
				begin
					OUT_opcode<=5'd9;
					OUT_operand<=IN_MEMORY[8:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:9]=='b11111)//10_ADDLW
				begin
					OUT_opcode<=5'd10;
					OUT_operand<=IN_MEMORY[8:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:8]=='b000010)//11_SUBWF
				begin
					OUT_opcode<=5'd11;
					OUT_operand<=IN_MEMORY[7:0];
					if(IN_MEMORY[7]==0)
						sel<='b00;
					else
						sel<='b10;//s2,s3,s4
				end
				else if(IN_MEMORY[13:8]=='b000011)//12_DECF
				begin
					OUT_opcode<=5'd12;
					OUT_operand<=IN_MEMORY[7:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:8]=='b000100)//13_IORWF
				begin
					OUT_opcode<=5'd13;
					OUT_operand<=IN_MEMORY[7:0];
					if(IN_MEMORY[7]==0)
						sel<='b00;
					else
						sel<='b10;//s2,s3,s4
				end
				else if(IN_MEMORY[13:8]=='b000101)//14_ANDWF
				begin
					OUT_opcode<=5'd14;
					OUT_operand<=IN_MEMORY[7:0];
					if(IN_MEMORY[7]==0)
						sel<='b00;
					else
						sel<='b10;//s2,s3,s4
				end
				else if(IN_MEMORY[13:8]=='b000110)//15_XORWF
				begin
					OUT_opcode<=5'd15;
					OUT_operand<=IN_MEMORY[7:0];
					if(IN_MEMORY[7]==0)
						sel<='b00;
					else
						sel<='b10;//s2,s3,s4
				end
				else if(IN_MEMORY[13:8]=='b000111)//16_ADDWF
				begin
					OUT_opcode<=5'd16;
					OUT_operand<=IN_MEMORY[7:0];
					if(IN_MEMORY[7]==0)
						sel<='b00;
					else
						sel<='b10;//s2,s3,s4
				end
				else if(IN_MEMORY[13:8]=='b001000)//17_MOVF
				begin
					OUT_opcode<=5'd17;
					OUT_operand<=IN_MEMORY[7:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:8]=='b001001)//18_COMF
				begin
					OUT_opcode<=5'd18;
					OUT_operand<=IN_MEMORY[7:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:8]=='b001010)//19_INCF
				begin
					OUT_opcode<=5'd19;
					OUT_operand<=IN_MEMORY[7:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:8]=='b001011)//20_DECFSZ
				begin
					OUT_opcode<=5'd20;
					OUT_operand<=IN_MEMORY[7:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:8]=='b001100)//21_RRF
				begin
					OUT_opcode<=5'd21;
					OUT_operand<=IN_MEMORY[7:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:8]=='b001101)//22_RLF
				begin
					OUT_opcode<=5'd22;
					OUT_operand<=IN_MEMORY[7:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:8]=='b001110)//23_SWAPF
				begin
					OUT_opcode<=5'd23;
					OUT_operand<=IN_MEMORY[7:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:8]=='b001111)//24_INCFSZ
				begin
					OUT_opcode<=5'd24;
					OUT_operand<=IN_MEMORY[7:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:8]=='b111000)//25_IORLW
				begin
					OUT_opcode<=5'd25;
					OUT_operand<=IN_MEMORY[7:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:8]=='b111001)//26_ANDLW
				begin
					OUT_opcode<=5'd26;
					OUT_operand<=IN_MEMORY[7:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:8]=='b111010)//27_XORLW
				begin
					OUT_opcode<=5'd27;
					OUT_operand<=IN_MEMORY[7:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:7]=='b0000011)//28_CLRF
				begin
					OUT_opcode<=5'd28;
					OUT_operand<=IN_MEMORY[6:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:7]=='b0000010)//29_CLRW
				begin
					OUT_opcode<=5'd29;
					OUT_operand<=IN_MEMORY[6:0];
					sel<='b00;
				end
				else if(IN_MEMORY[13:7]=='b0000001)//30_MOVWF
				begin
					OUT_opcode<=5'd30;
					OUT_operand<=IN_MEMORY[6:0];
					sel<='b01;
				end
				else if(IN_MEMORY=='b00_0000_0000_1000)//31_RETURN
				begin
					OUT_opcode<=5'd31;
					OUT_operand<=OUT_operand;
					sel<='b00;
				end
				else if(IN_MEMORY=='b00000000001001)//32_RETFIE
				begin
					OUT_opcode<=5'd32;
					OUT_operand<=OUT_operand;
					sel<='b00;
				end
				else
				begin
					OUT_opcode<=OUT_opcode;
					OUT_operand<=OUT_operand;
					sel<='b11;
				end
			end
		else
			begin
					OUT_opcode<=OUT_opcode;
					OUT_operand<=OUT_operand;
					sel<=sel;
			end
end
endmodule
	