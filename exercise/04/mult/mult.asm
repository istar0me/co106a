// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
// int R0 = 3;
@3
D=A
@R0
M=D

// int R1 = 5;
@5
D=A
@R1
M=D

// int R3 = 0;
@0
D=A
@sum
M=D

// loop:
(loop)

// if (R0 <= 0) goto exit1;
@R0
D=A
@exit1
D;JLE

// R2 = R2 + R1;
@R1
D=M
@R2
M=M+D

// r0 = r0 - 1;
@r0
M=M-1

// goto loop;
@loop
0;JMP

// exit1:
(exit1)
@exit1
0;JMP