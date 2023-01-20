for name in ["LED_flow", "black_gold_seg", "hex_test", "LCD", "lesson2"]:
    base_dir = "D:\\5_MAPLAB8.7_files\\"
    out_dir = "D:\\5_MAPLAB8.7_files\\"
    fi = open(base_dir+name+".mif", "r", encoding="utf-8")
    fo = open(out_dir+name+"_mem.txt", "w", encoding="utf-8")
    # mif文件
    i = 0
    for line in fi.readlines()[6:-1]:
        fo.write("mem[{0:}]<='h{1:}".format(i, line.split(":")[1]))
        i += 1
    print(name + "转换完毕")

