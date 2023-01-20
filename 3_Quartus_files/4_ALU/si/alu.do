view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue HiZ -period 50ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/alu/clock 
wave create -driver freeze -pattern clock -initialvalue 0 -period 1000ns -dutycycle 99 -starttime 0ns -endtime 1000ns sim:/alu/en 
wave create -driver freeze -pattern clock -initialvalue 1 -period 1000ns -dutycycle 1 -starttime 0ns -endtime 1000ns sim:/alu/reset 
wave create -driver freeze -pattern clock -initialvalue 0 -period 1000ns -dutycycle 99 -starttime 0ns -endtime 1000ns sim:/alu/en_DECODE 
wave create -driver freeze -pattern constant -value 111 -range 5 0 -starttime 0ns -endtime 1000ns sim:/alu/IN_opcode 
wave create -driver freeze -pattern constant -value 111 -range 5 0 -starttime 0ns -endtime 100ns sim:/alu/IN_opcode 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 1111101010101 -range 10 0 -starttime 0ns -endtime 1000ns sim:/alu/IN_operand 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 11101011010 -range 10 0 -starttime 0ns -endtime 1000ns Edit:/alu/IN_operand 
wave create -driver freeze -pattern constant -value 1110010110 -range 9 0 -starttime 0ns -endtime 1000ns sim:/alu/IN_SER 
WaveExpandAll -1
wave modify -driver freeze -pattern counter -startvalue 00111 -endvalue 11001 -type Range -direction Up -period 50ns -step 1 -repeat forever -range 5 0 -starttime 50ns -endtime 1000ns Edit:/alu/IN_opcode 
wave modify -driver freeze -pattern counter -startvalue 10001 -endvalue 11110 -type Range -direction Up -period 50ns -step 1 -repeat forever -range 5 0 -starttime 250ns -endtime 1000ns Edit:/alu/IN_opcode 
wave modify -driver freeze -pattern counter -startvalue 01011 -endvalue 100001 -type Range -direction Up -period 50ns -step 1 -repeat forever -range 5 0 -starttime 50ns -endtime 1000ns Edit:/alu/IN_opcode 
wave modify -driver freeze -pattern counter -startvalue 001011 -endvalue 100001 -type Range -direction Up -period 100ns -step 1 -repeat forever -range 5 0 -starttime 50ns -endtime 1000ns Edit:/alu/IN_opcode 
wave modify -driver freeze -pattern repeater -initialvalue 11101011010 -period 100ns -sequence { 11110101010  } -repeat forever -range 10 0 -starttime 0ns -endtime 1000ns Edit:/alu/IN_operand 
wave modify -driver freeze -pattern repeater -initialvalue 11101011010 -period 100ns -sequence { 11110101010  } -repeat forever -range 10 0 -starttime 0ns -endtime 100ns Edit:/alu/IN_operand 
wave modify -driver freeze -pattern constant -value 11101011010 -range 10 0 -starttime 0ns -endtime 100ns Edit:/alu/IN_operand 
wave modify -driver freeze -pattern constant -value 11101011010 -range 10 0 -starttime 150ns -endtime 200ns Edit:/alu/IN_operand 
wave modify -driver freeze -pattern constant -value 11101011010 -range 10 0 -starttime 350ns -endtime 400ns Edit:/alu/IN_operand 
wave modify -driver freeze -pattern constant -value 11101011010 -range 10 0 -starttime 250ns -endtime 300ns Edit:/alu/IN_operand 
wave modify -driver freeze -pattern constant -value 11101011010 -range 10 0 -starttime 450ns -endtime 500ns Edit:/alu/IN_operand 
wave modify -driver freeze -pattern constant -value 11101011010 -range 10 0 -starttime 550ns -endtime 600ns Edit:/alu/IN_operand 
WaveCollapseAll -1
wave clipboard restore
