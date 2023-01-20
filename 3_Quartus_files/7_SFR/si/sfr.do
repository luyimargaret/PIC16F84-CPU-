view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue HiZ -period 50ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/sfr/clock 
wave create -driver freeze -pattern clock -initialvalue 1 -period 1000ns -dutycycle 1 -starttime 0ns -endtime 1000ns sim:/sfr/reset 
wave create -driver freeze -pattern clock -initialvalue 0 -period 1000ns -dutycycle 99 -starttime 0ns -endtime 1000ns sim:/sfr/en 
wave create -driver freeze -pattern counter -startvalue 000000 -endvalue 111111 -type Range -direction Up -period 50ns -step 1 -repeat forever -range 5 0 -starttime 0ns -endtime 1000ns sim:/sfr/IN_opcode 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 01100001111 -range 10 0 -starttime 0ns -endtime 1000ns sim:/sfr/IN_operand 
WaveExpandAll -1
wave create -driver freeze -pattern clock -initialvalue 0 -period 1000ns -dutycycle 99 -starttime 0ns -endtime 1000ns sim:/sfr/en_DECODE 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns sim:/sfr/write_en 
wave modify -driver freeze -pattern counter -startvalue 000000 -endvalue 111111 -type Range -direction Up -period 100ns -step 1 -repeat forever -range 5 0 -starttime 0ns -endtime 1000ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern counter -startvalue 001010 -endvalue 111111 -type Range -direction Up -period 100ns -step 1 -repeat forever -range 5 0 -starttime 0ns -endtime 1000ns Edit:/sfr/IN_opcode 
wave create -driver freeze -pattern constant -value 00111100 -range 7 0 -starttime 0ns -endtime 1000ns sim:/sfr/IN_ALU 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 1 -starttime 100ns -endtime 200ns Edit:/sfr/write_en 
wave modify -driver freeze -pattern constant -value 0 -starttime 150ns -endtime 200ns Edit:/sfr/write_en 
wave modify -driver freeze -pattern constant -value 01110001111 -range 10 0 -starttime 250ns -endtime 300ns Edit:/sfr/IN_operand 
wave modify -driver freeze -pattern constant -value 01110001111 -range 10 0 -starttime 350ns -endtime 400ns Edit:/sfr/IN_operand 
wave modify -driver freeze -pattern constant -value 01100001111 -range 10 0 -starttime 350ns -endtime 400ns Edit:/sfr/IN_operand 
wave modify -driver freeze -pattern constant -value 1 -starttime 350ns -endtime 400ns Edit:/sfr/write_en 
wave modify -driver freeze -pattern constant -value 1 -starttime 300ns -endtime 350ns Edit:/sfr/write_en 
wave modify -driver freeze -pattern constant -value 0 -starttime 350ns -endtime 400ns Edit:/sfr/write_en 
wave modify -driver freeze -pattern constant -value 1 -starttime 400ns -endtime 450ns Edit:/sfr/write_en 
wave modify -driver freeze -pattern constant -value 01011101 -range 7 0 -starttime 400ns -endtime 500ns Edit:/sfr/IN_ALU 
wave modify -driver freeze -pattern clock -initialvalue 1 -period 100ns -dutycycle 50 -starttime 500ns -endtime 700ns Edit:/sfr/write_en 
wave modify -driver freeze -pattern constant -value 01011101 -range 7 0 -starttime 600ns -endtime 700ns Edit:/sfr/IN_ALU 
wave modify -driver freeze -pattern constant -value 01110001111 -range 10 0 -starttime 750ns -endtime 800ns Edit:/sfr/IN_operand 
wave modify -driver freeze -pattern constant -value 01110001111 -range 10 0 -starttime 850ns -endtime 900ns Edit:/sfr/IN_operand 
wave modify -driver freeze -pattern constant -value 01110001111 -range 10 0 -starttime 950ns -endtime 1000ns Edit:/sfr/IN_operand 
wave modify -driver freeze -pattern counter -startvalue 010100 -endvalue 111111 -type Range -direction Up -period 100ns -step 1 -repeat forever -range 5 0 -starttime 0ns -endtime 1000ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern counter -startvalue 010011 -endvalue 111111 -type Range -direction Up -period 100ns -step 1 -repeat forever -range 5 0 -starttime 0ns -endtime 1000ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern constant -value 01110001111 -range 10 0 -starttime 150ns -endtime 200ns Edit:/sfr/IN_operand 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 100ns Edit:/sfr/write_en 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/sfr/write_en 
wave modify -driver freeze -pattern counter -startvalue 010011 -endvalue 111111 -type Range -direction Up -period 100ns -step 1 -repeat forever -range 5 0 -starttime 100ns -endtime 1000ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern constant -value 01100001111 -range 10 0 -starttime 150ns -endtime 200ns Edit:/sfr/IN_operand 
wave modify -driver freeze -pattern constant -value 01110001111 -range 10 0 -starttime 0ns -endtime 200ns Edit:/sfr/IN_operand 
wave modify -driver freeze -pattern constant -value 01110001111 -range 10 0 -starttime 350ns -endtime 400ns Edit:/sfr/IN_operand 
wave modify -driver freeze -pattern constant -value 01110001111 -range 10 0 -starttime 450ns -endtime 500ns Edit:/sfr/IN_operand 
wave modify -driver freeze -pattern constant -value 01110001111 -range 10 0 -starttime 550ns -endtime 600ns Edit:/sfr/IN_operand 
wave modify -driver freeze -pattern counter -startvalue 011100 -endvalue 111111 -type Range -direction Up -period 100ns -step 1 -repeat forever -range 5 0 -starttime 100ns -endtime 1000ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern constant -value 11 -range 5 0 -starttime 0ns -endtime 100ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern constant -value 10011 -range 5 0 -starttime 0ns -endtime 100ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern constant -value 010100 -range 5 0 -starttime 100ns -endtime 200ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern constant -value 011000 -range 5 0 -starttime 200ns -endtime 300ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern constant -value 001100 -range 5 0 -starttime 100ns -endtime 200ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern constant -value 011000 -range 5 0 -starttime 100ns -endtime 200ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern constant -value 010100 -range 5 0 -starttime 100ns -endtime 200ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern constant -value 001100 -range 5 0 -starttime 100ns -endtime 200ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern constant -value 10100 -range 5 0 -starttime 200ns -endtime 300ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern constant -value 011000 -range 5 0 -starttime 300ns -endtime 400ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern constant -value 01100 -range 5 0 -starttime 0ns -endtime 100ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern constant -value 10011 -range 5 0 -starttime 100ns -endtime 200ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern constant -value 11000 -range 5 0 -starttime 100ns -endtime 200ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern constant -value 01100001111 -range 10 0 -starttime 100ns -endtime 150ns Edit:/sfr/IN_operand 
wave modify -driver freeze -pattern constant -value 01100001111 -range 10 0 -starttime 0ns -endtime 100ns Edit:/sfr/IN_operand 
wave modify -driver freeze -pattern constant -value 01110001111 -range 10 0 -starttime 0ns -endtime 100ns Edit:/sfr/IN_operand 
wave modify -driver freeze -pattern constant -value 010001 -range 5 0 -starttime 0ns -endtime 100ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern constant -value 1100 -range 5 0 -starttime 400ns -endtime 1000ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern constant -value 10011 -range 5 0 -starttime 400ns -endtime 600ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern constant -value 01110001111 -range 10 0 -starttime 650ns -endtime 700ns Edit:/sfr/IN_operand 
wave modify -driver freeze -pattern constant -value 11000 -range 5 0 -starttime 200ns -endtime 300ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern constant -value 010100 -range 5 0 -starttime 300ns -endtime 400ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern constant -value 11000 -range 5 0 -starttime 400ns -endtime 500ns Edit:/sfr/IN_opcode 
wave modify -driver freeze -pattern constant -value 010100 -range 5 0 -starttime 400ns -endtime 500ns Edit:/sfr/IN_opcode 
WaveCollapseAll -1
wave clipboard restore
