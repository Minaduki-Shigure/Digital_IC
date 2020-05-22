# 实验七 综合验证

Copyright (c) 2020 Minaduki Shigure.  
专业：电子科学与技术  
学号：171180571  
姓名：吴康正

## 实验源码

使用提供的代码进行综合验证。

## 测试结果

测试一结果：

```plain
#   *************************************************************
#   *        THE FOLLOWING DEBUG TASKS ARE AVAILABLE:             *
#   *  load the 1st diagnostic program, then continue simulation. *
# 
# ***		RUNNING CPUtest1	 ***
# *** (THIS TEST SHOULD HALT WITH PC = 17) ***
# 
#  PC    INSTR    OP   DATA   ADR
#  --    -----    --   ----   ---
#  xx     HLT      0    zz     00
#  00     JMP      7    fe     00
#  1e     JMP      7    e3     1e
#  03     LDA      5    ba     03
#  04     SKZ      1    20     04
#  06     LDA      5    bb     06
#  07     SKZ      1    20     07
#  08     JMP      7    ea     08
#  0a     STO      6    dc     0a
#  0b     LDA      5    ba     0b
#  0c     STO      6    dc     0c
#  0d     LDA      5    bc     0d
#  0e     SKZ      1    20     0e
#  10     XOR      4    9b     10
#  11     SKZ      1    20     11
#  12     JMP      7    f4     12
#  14     XOR      4    9b     14
#  15     SKZ      1    20     15
#  17     HLT      0    00     17
# 
# ***   A HALT INSTRUCTION WAS PROCESSED	 ***
```

测试二结果：

```plain
# ***		RUNNING CPUtest2	 ***
# *** (THIS TEST SHOULD HALT WITH PC = 10) ***
# 
#  PC    INSTR    OP   DATA   ADR
#  --    -----    --   ----   ---
#  xx     HLT      0    zz     00
#  00     LDA      5    bb     00
#  01     AND      3    7c     01
#  02     XOR      4    9b     02
#  03     SKZ      1    20     03
#  05     ADD      2    5a     05
#  06     SKZ      1    20     06
#  07     JMP      7    e9     07
#  09     XOR      4    9c     09
#  0a     ADD      2    5a     0a
#  0b     STO      6    dd     0b
#  0c     LDA      5    ba     0c
#  0d     ADD      2    5d     0d
#  0e     SKZ      1    20     0e
#  10     HLT      0    00     10
# 
# ***   A HALT INSTRUCTION WAS PROCESSED	 ***
```

测试三结果：

```plain
# ***		RUNNING CPUtest3	 ***
# ***  This program calculates the fibonacci  ***
# ***  number sequence from 0 to 144          ***
# 
#  	 FIBONACCI NUMBER
#  	 ----------------
# 		  0
# 		  1
# 		  1
# 		  2
# 		  3
# 		  5
# 		  8
# 		 13
# 		 21
# 		 34
# 		 55
# 		 89
# 		144
# 
# ***   A HALT INSTRUCTION WAS PROCESSED	 ***
```

测试结果表明，模块设计正确，各个功能工作正常。
