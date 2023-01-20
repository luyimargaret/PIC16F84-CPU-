import os
# 第一步：写入
# hex文件读入
for name in ["LED_flow", "black_gold_seg", "hex_test", "LCD", "lesson2"]:
    base_dir = "D:\\5_MAPLAB8.7_files\\"+name+"\\"
    out_dir = "D:\\5_MAPLAB8.7_files\\"
    fi = open(base_dir+name+".hex", "r", encoding="utf-8")
    # 中间文件
    fo = open(base_dir+"temp.txt", "w+", encoding="utf-8")
    # mif文件
    fm = open(out_dir+name+".mif", "w", encoding="utf-8")
    fo.write("DEPTH = 1024;\n")
    fo.write("WIDTH = 14;\n")
    fo.write("ADDRESS_RADIX = HEX;\n")
    fo.write("DATA_RADIX = HEX;\n")
    fo.write("CONTENT\n")
    fo.write("BEGIN\n")
    for line in fi:
        address = hex(int(float(eval("0x"+line[3:7]))/2))
        if eval(address) > 1023:  # 可以跨进制比较
            continue
        # 先取出地址转换为真十六进制的str，然后eval转换为十进制数，因为这个十进制是int型不能做除法
        # 所以就再转成float型除以2再转回int型再转成十六进制,再把它写入文档里
        for i in range(9, len(line)-4, 4):
            fo.write(address[2:]+":")
            fo.write(line[i+2])
            fo.write(line[i+3])
            fo.write(line[i])
            fo.write(line[i+1]+";")
            fo.write("\n")
            address = hex((eval(address))+1)
    fo.write("END")
    fi.close()

    # 第二步：寻找
    # 将中间文件的指针写回头部
    fo.seek(0)
    num = 0
    temp = 0
    num_last = 0
    num_now = 0
    # 上一个数
    for line in fo.readlines()[7:-1]:
        num = eval("0x" + line.split(":")[0])
        if num - temp != 1:
            num_last = temp
            num_now = num
            # print("num_last:", num_last, hex(num_last))
            # print("num_now", num_now, hex(num_now))
            break # 找到第一个断点就结束寻找
        temp = num

    # 第三步：生成mif
    # 将中间文件的指针写回头部
    fo.seek(0)
    for line in fo.readlines()[0:7+num_last]:
        fm.write(line)
    for i in range(num_last+1, num_now):
        fm.write(hex(i)[2:]+":"+"3fff;"+"\n")
    fo.seek(0)
    # 将中间文件的指针写回头部
    for line in fo.readlines()[7+num_last:]:
        fm.write(line)

    fo.close()
    fm.close()
    os.remove(base_dir + "temp.txt")
    print(name+"转换完毕")

