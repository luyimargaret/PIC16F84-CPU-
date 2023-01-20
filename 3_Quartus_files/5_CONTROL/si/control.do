view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue HiZ -period 50ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/control/clock 
wave create -driver freeze -pattern clock -initialvalue 1 -period 1000ns -dutycycle 1 -starttime 0ns -endtime 1000ns sim:/control/reset 
wave create -driver freeze -pattern constant -value 00 -range 1 0 -starttime 0ns -endtime 350ns sim:/control/sel 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 01 -range 1 0 -starttime 350ns -endtime 650ns Edit:/control/sel 
wave modify -driver freeze -pattern constant -value 10 -range 1 0 -starttime 650ns -endtime 950ns Edit:/control/sel 
WaveCollapseAll -1
wave clipboard restore
