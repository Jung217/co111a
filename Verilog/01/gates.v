module Nand(input a, b, output out);
 nand g1(out, a, b);
endmodule

module Not(input a, output out);
 Nand g1(a, a, out);
endmodule

module And(input a, b, output out);
 Nand g1(a, b, aNandb);
 Not g2(aNandb, out);
endmodule

module Or(input a, b, output out);
 Not g1(a, Nota);
 Not g2(b, Notb);
 Nand g3(Nota, Notb, out);
endmodule

module Xor(input a, b, output out);
 Or g1(a, b, aOrb);
 Nand g2(a, b, aNandb);
 And g3(aOrb, aNandb, out);
endmodule

module Or8Way(input [7:0] in,output out);
 Or g1(in[0], in[1], o1);
 Or g2(in[2], in[3], o2);
 Or g3(in[4], in[5], o3);
 Or g4(in[6], in[7], o4);
 Or g5(o1, o2, o5);
 Or g6(o3, o4, o6);
 Or g7(o5, o6, out);
endmodule