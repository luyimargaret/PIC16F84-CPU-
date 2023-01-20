view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 1 -period 1000ns -dutycycle 1 -starttime 0ns -endtime 1000ns sim:/top/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 1000ns -endtime 10000ns Edit:/top/reset 
wave create -driver freeze -pattern clock -initialvalue HiZ -period 50ns -dutycycle 50 -starttime 0ns -endtime 10000ns sim:/top/clock 
wave modify -driver freeze -pattern clock -initialvalue HiZ -period 50ns -dutycycle 50 -starttime 0ns -endtime 60000ns Edit:/top/clock 
wave modify -driver freeze -pattern constant -value 0 -starttime 1000ns -endtime 60000ns Edit:/top/reset 
WaveCollapseAll -1
wave clipboard restore
