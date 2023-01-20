view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue HiZ -period 50ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/pc/clock 
wave create -driver freeze -pattern clock -initialvalue 1 -period 1000ns -dutycycle 1 -starttime 0ns -endtime 1000ns sim:/pc/reset 
wave create -driver freeze -pattern clock -initialvalue 0 -period 1000ns -dutycycle 99 -starttime 0ns -endtime 1000ns sim:/pc/en 
wave create -driver freeze -pattern constant -value 11000011111 -range 9 0 -starttime 0ns -endtime 1000ns sim:/pc/IN_SFR 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 1100001111 -range 9 0 -starttime 0ns -endtime 1000ns Edit:/pc/IN_SFR 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 100ns sim:/pc/goto_en 
wave modify -driver freeze -pattern constant -value 0 -starttime 100ns -endtime 1000ns Edit:/pc/goto_en 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 100ns sim:/pc/call_en 
wave modify -driver freeze -pattern constant -value 1 -starttime 100ns -endtime 200ns Edit:/pc/call_en 
wave modify -driver freeze -pattern constant -value 0 -starttime 200ns -endtime 1000ns Edit:/pc/call_en 
wave modify -driver freeze -pattern constant -value 0011110000 -range 9 0 -starttime 100ns -endtime 200ns Edit:/pc/IN_SFR 
wave create -driver freeze -pattern constant -value 1 -starttime 300ns -endtime 400ns sim:/pc/out_en 
wave modify -driver freeze -pattern constant -value 0 -starttime 400ns -endtime 1000ns Edit:/pc/out_en 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 300ns Edit:/pc/out_en 
wave create -driver freeze -pattern constant -value 0011110011 -range 9 0 -starttime 0ns -endtime 1000ns sim:/pc/IN_STACK 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 0011110000 -range 9 0 -starttime 0ns -endtime 1000ns Edit:/pc/IN_STACK 
wave modify -driver freeze -pattern constant -value 0101010101 -range 9 0 -starttime 350ns -endtime 400ns Edit:/pc/IN_SFR 
wave modify -driver freeze -pattern constant -value 010101100101 -range 9 0 -starttime 350ns -endtime 400ns Edit:/pc/IN_STACK 
wave create -driver freeze -pattern constant -value 1 -starttime 500ns -endtime 600ns sim:/pc/short_jump_en 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 500ns Edit:/pc/short_jump_en 
wave modify -driver freeze -pattern constant -value 0 -starttime 600ns -endtime 1000ns Edit:/pc/short_jump_en 
wave modify -driver freeze -pattern constant -value 1100001111 -range 9 0 -starttime 350ns -endtime 400ns Edit:/pc/IN_SFR 
WaveCollapseAll -1
wave clipboard restore
