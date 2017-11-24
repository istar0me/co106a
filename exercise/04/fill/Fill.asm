// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here
// forever() {
(forever)

// scrAddr = RAM[SCREEN]
@SCREEN
D=A
@scrAddr
M=D

// n = 8192
@8192
D=A
@n
M=D

// i = 0
@0
D=A
@i
M=D

// function loop() {
// if((n-i) == 0) {goto end}
@i
D=M
@n
D=M-D
@end
D;JEQ

// if (KBD == 0) {else()}
@KBD
D=M
@else
D;JEQ

// if (KBD != 0 ) {RAM[scrAddr + i] = -1}
@scrAddr
D=M
@i
A=D+M
M=-1

// endif()
@endif
0;JEQ

// function else()
(else)
@scrAddr
D=M
@i
A=D+M
M=0

// function endif()
@i
M=M+1

// loop()
@loop
0;JEQ

// function end() {goto forever}
(end)
@forever
0;JEQ