// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
//參考:https://www.facebook.com/ccckmit/videos/634802171556011/?idorvanity=266037214366597

//  int R0 = 3;
//  int R1 = 5;
//  int R2 = 0;

//  while(R0 > 0){
//      R2 = R1 + R2;
//      R0--;
//  }

@2   
M=0 

(loop)  
    @0
    D=M

    @end
    D;JLE

    @1
    D=M 

    @2
    M=D+M

    @0
    M=M-1
@loop  

0;JMP

(end)