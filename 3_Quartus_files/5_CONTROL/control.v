module control(
input clock,
input reset,
input [1:0]sel,
output reg s0,//en_MEMORY
output reg s1,//en_DECODE
output reg s2,//en_SFR
output reg s3,//en_ALU
output reg s4,//en_SFR_to_write
output reg s5,//en_SFR_to_Z
output reg s6,//en_PC
output reg s7//en_STACK
);
reg [2:0] cnt;
always@(posedge clock,posedge reset)
begin
	if(reset==1)
		cnt<=0;
	else 
		if(cnt==7)
			cnt<=0;
		else
			cnt<=cnt+1'b1;
end
	
always@(*)
	begin
		case(cnt)//synthesis full_case
		0:begin//en_MEMORY
			s0<=1;s1<=0;s2<=0;s3<=0;s4<=0;s5<=0;s6<=0;s7<=0;
		  end
		1:begin//en_DECODE
			s0<=0;s1<=1;s2<=0;s3<=0;s4<=0;s5<=0;s6<=0;s7<=0;
		  end
		2:begin//en_SFR||en_ALU
			if(sel==2'b11) 
			begin
				s0<=0;s1<=0;s2<=0;s3<=0;s4<=0;s5<=0;s6<=0;s7<=0;
			end
			else if(sel==2'b01)//先使能ALU
			begin
				s0<=0;s1<=0;s2<=0;s3<=1;s4<=0;s5<=0;s6<=0;s7<=0;
			end
			else 
			begin
				s0<=0;s1<=0;s2<=1;s3<=0;s4<=0;s5<=0;s6<=0;s7<=0;
			end
		  end
		3:begin//en_ALU||en_SFR
		   if(sel==2'b11) 
			begin
				s0<=0;s1<=0;s2<=0;s3<=0;s4<=0;s5<=0;s6<=0;s7<=0;
			end
			else if(sel==2'b01)//后使能SFR
			begin
				s0<=0;s1<=0;s2<=1;s3<=0;s4<=0;s5<=0;s6<=0;s7<=0;
			end
			else
			begin
				s0<=0;s1<=0;s2<=0;s3<=1;s4<=0;s5<=0;s6<=0;s7<=0;	
			end
		  end
		4:begin//en_SFR_to_write
			if(sel==2'b10)
			begin
				s0<=0;s1<=0;s2<=0;s3<=0;s4<=1;s5<=0;s6<=0;s7<=0;
			end
			else
			begin
				s0<=0;s1<=0;s2<=0;s3<=0;s4<=0;s5<=0;s6<=0;s7<=0;
			end
		  end
		5:begin//Z_en
			if(sel==2'b11) 
				begin
				s0<=0;s1<=0;s2<=0;s3<=0;s4<=0;s5<=0;s6<=0;s7<=0;
				end
			else
				begin
			   s0<=0;s1<=0;s2<=0;s3<=0;s4<=0;s5<=1;s6<=0;s7<=0;
				end
		  end
		6:begin
			s0<=0;s1<=0;s2<=0;s3<=0;s4<=0;s5<=0;s6<=1;s7<=0;
		  end
		7:begin//STACK_en
			if (sel==2'b11) 
				begin
				s0<=0;s1<=0;s2<=0;s3<=0;s4<=0;s5<=0;s6<=0;s7<=0;
				end
			else
				begin
			   s0<=0;s1<=0;s2<=0;s3<=0;s4<=0;s5<=0;s6<=0;s7<=1;
				end
		  end
		endcase
	end
endmodule
		  
