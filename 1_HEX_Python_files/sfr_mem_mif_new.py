# 1_sfr_mem_0
sfr_mem_0 = open("D:\\Quartus_file\\1_PIC\\test\\sfr_mem_0.txt", "w", encoding="utf-8")
i = 0
for i in range(128):
    if i == 3:
        sfr_mem_0.write("mem_0[{0:}]<=8'd{1:};\n".format(i, 24))  # 0001_1000
    else:
        sfr_mem_0.write("mem_0[{0:}]<=8'd{1:};\n".format(i, 0))
    i += 1
sfr_mem_0.close()
print("sfr_mem_0生成完毕")
# 1_sfr_mem_1
sfr_mem_1 = open("D:\\Quartus_file\\1_PIC\\test\\sfr_mem_1.txt", "w", encoding="utf-8")
i = 0
for i in range(128):
    if i == 3:
        sfr_mem_1.write("mem_1[{0:}]<=8'd{1:};\n".format(i, 24))  # 0001_1000
    elif (i == 1) | (i == 5) | (i == 6):
        sfr_mem_1.write("mem_1[{0:}]<=8'd{1:};\n".format(i, 255))  # 1111_1111
    else:
        sfr_mem_1.write("mem_1[{0:}]<=8'd{1:};\n".format(i, 0))
    i += 1
sfr_mem_1.close()
print("sfr_mem_1生成完毕")
'''
# 1_sfr_mef
sfr_mif = open("D:\\Quartus_file\\1_PIC\\test\\sfr_mif.mif", "w", encoding="utf-8")
sfr_mif.write("DEPTH = 256;\n")
sfr_mif.write("WIDTH = 8;\n")
sfr_mif.write("ADDRESS_RADIX = DEC;\n")
sfr_mif.write("DATA_RADIX = DEC;\n")
sfr_mif.write("CONTENT\n")
sfr_mif.write("BEGIN\n")
i = 0
for i in range(256):
    if (i == 3) | (i == 131):
        sfr_mif.write("mem[{0:}]<=8'd{1:};\n".format(i, 24))  # 0001_1000
    elif (i == 129) | (i == 133) | (i == 134):
        sfr_mif.write("mem[{0:}]<=8'd{1:};\n".format(i, 255))  # 1111_1111
    else:
        sfr_mif.write("mem[{0:}]<=8'd{1:};\n".format(i, 0))
    i += 1
sfr_mif.write("END")
sfr_mif.close()
print("sfr_mif生成完毕")
'''





