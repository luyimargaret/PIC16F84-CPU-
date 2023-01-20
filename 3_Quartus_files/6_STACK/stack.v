module stack(
input clock,
input reset,
input [9:0]IN_PC,
input en,
input press_en,
input  out_en,
output reg[9:0]OUT_PC=0
);

reg [9:0]mem[0:7];/*synthese keep*/
always@(posedge clock,posedge reset)
begin
	if(reset)
		begin
			OUT_PC<=0;
			mem[0]<='b00_0000_0000;
			mem[1]<='b00_0000_0000;
			mem[2]<='b00_0000_0000;
			mem[3]<='b00_0000_0000;
			mem[4]<='b00_0000_0000;
			mem[5]<='b00_0000_0000;
			mem[6]<='b00_0000_0000;
			mem[7]<='b00_0000_0000;
		end
	else
		if(en)
			begin
				if(press_en)//进堆
					begin
						mem[7]=mem[6];
						mem[6]=mem[5];
						mem[5]=mem[4];
						mem[4]=mem[3];
						mem[3]=mem[2];
						mem[2]=mem[1];
						mem[1]=mem[0];
						mem[0]=IN_PC;
						OUT_PC=mem[0];
					end
				else if(out_en)//出栈
					begin
						mem[0]=mem[1];
						mem[1]=mem[2];
						mem[2]=mem[3];
						mem[3]=mem[4];
						mem[4]=mem[5];
						mem[5]=mem[6];
						mem[6]=mem[7];
						mem[7]='b00_0000_0000;
						OUT_PC=mem[0];
					end
				else
						OUT_PC<=mem[0];
			end
		else
			OUT_PC<=mem[0];
end

endmodule 



