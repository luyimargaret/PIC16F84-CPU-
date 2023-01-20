module pc(
input clock,
input reset,
input [9:0]IN_SFR,
input [9:0]IN_STACK,
input goto_en,
input en,
input call_en,
input out_en,
input short_jump_en,
output reg[9:0]OUT_STACK=0,
output reg[9:0]OUT_MEMORY=0
);



reg[9:0]OUT_MEMORY_next;
always@(posedge clock,posedge reset)
begin
	if(reset)
		OUT_MEMORY<=0;
	else
		if(en)
			begin
				if(goto_en)
					OUT_MEMORY<=IN_SFR;
				else if(call_en)
					begin
						OUT_STACK=OUT_MEMORY+'b1;
						OUT_MEMORY=IN_SFR;
					end
				else if(out_en)
						OUT_MEMORY<=IN_STACK;
				else if(short_jump_en)
						OUT_MEMORY<=OUT_MEMORY+'b10;
				else
						OUT_MEMORY<=OUT_MEMORY+'b1;
			end
		else
			begin
				OUT_MEMORY<=OUT_MEMORY;
				OUT_STACK<=OUT_STACK;
			end
end

endmodule 



