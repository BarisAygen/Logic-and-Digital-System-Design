/*
 * Generated by Digital. Don't modify this file!
 * Any changes will be lost if this file is regenerated.
 */
module DIG_D_FF_1bit
  #(
     parameter Default = 0
   )
   (
     input D,
     input C,
     output Q,
     output \~Q
   );
  reg state;

  assign Q = state;
  assign \~Q = ~state;

  always @ (posedge C)
  begin
    state <= D;
  end

  initial
  begin
    state = Default;
  end
endmodule


module \4_bit_comparator  (
    input [3:0] A,
    input [3:0] B,
    output greater,
    output less,
    output equal
  );
  wire s0;
  wire s1;
  wire s2;
  wire s3;
  wire s4;
  wire s5;
  wire s6;
  wire s7;
  wire greater_temp;
  wire equal_temp;
  wire s8;
  wire s9;
  wire s10;
  assign s0 = A[0];
  assign s1 = A[1];
  assign s2 = A[2];
  assign s3 = A[3];
  assign s4 = B[0];
  assign s5 = B[1];
  assign s6 = B[2];
  assign s7 = B[3];
  assign s8 = ~ (s3 ^ s7);
  assign s9 = ~ (s2 ^ s6);
  assign s10 = ~ (s1 ^ s5);
  assign greater_temp = ((s8 & (s2 & ~ s6)) | (s3 & ~ s7) | (s8 & s9 & (s1 & ~ s5)) | (s8 & s9 & s10 & (s0 & ~ s4)));
  assign equal_temp = (s8 & s9 & s10 & ~ (s0 ^ s4));
  assign less = ~ (greater_temp | equal_temp);
  assign greater = greater_temp;
  assign equal = equal_temp;
endmodule

module DIG_Register
  (
    input C,
    input en,
    input D,
    output Q
  );

  reg  state = 'h0;

  assign Q = state;

  always @ (posedge C)
  begin
    if (en)
      state <= D;
  end
endmodule

module DIG_Register_BUS #(
    parameter Bits = 1
  )
  (
    input C,
    input en,
    input [(Bits - 1):0]D,
    output [(Bits - 1):0]Q
  );

  reg [(Bits - 1):0] state = 'h0;

  assign Q = state;

  always @ (posedge C)
  begin
    if (en)
      state <= D;
  end
endmodule

module Mux_4x1_NBits #(
    parameter Bits = 2
  )
  (
    input [1:0] sel,
    input [(Bits - 1):0] in_0,
    input [(Bits - 1):0] in_1,
    input [(Bits - 1):0] in_2,
    input [(Bits - 1):0] in_3,
    output reg [(Bits - 1):0] out
  );
  always @ (*)
  begin
    case (sel)
      2'h0:
        out = in_0;
      2'h1:
        out = in_1;
      2'h2:
        out = in_2;
      2'h3:
        out = in_3;
      default:
        out = 'h0;
    endcase
  end
endmodule


module \4_bit_adder  (
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] S,
    output Cout
  );
  wire s0;
  wire s1;
  wire s2;
  wire s3;
  wire s4;
  wire s5;
  wire s6;
  wire s7;
  wire s8;
  wire s9;
  wire s10;
  wire s11;
  wire s12;
  wire s13;
  wire s14;
  wire s15;
  wire s16;
  wire s17;
  wire s18;
  wire const1b0;
  wire s19;
  wire s20;
  wire s21;
  wire s22;
  wire s23;
  wire s24;
  wire s25;
  wire s26;
  assign const1b0 = 1'b0;
  assign s0 = A[0];
  assign s1 = A[1];
  assign s2 = A[2];
  assign s3 = A[3];
  assign s4 = B[0];
  assign s5 = B[1];
  assign s6 = B[2];
  assign s7 = B[3];
  assign s8 = (s0 ^ s4);
  assign s11 = (s1 ^ s5);
  assign s14 = (s2 ^ s6);
  assign s17 = (s3 ^ s7);
  assign s9 = (s8 ^ Cin);
  assign s10 = ((Cin & s8) | (s0 & s4));
  assign s12 = (s11 ^ s10);
  assign s13 = ((s10 & s11) | (s1 & s5));
  assign s19 = (s9 ^ const1b0);
  assign s15 = (s14 ^ s13);
  assign s16 = ((s13 & s14) | (s2 & s6));
  assign s20 = ((const1b0 & s19) | (s9 & const1b0));
  assign s18 = (s17 ^ s16);
  assign s21 = ((s18 & s15) | ((s16 & s17) | (s3 & s7)) | (s18 & s12));
  assign s22 = (s12 ^ s21);
  assign s24 = (s15 ^ s21);
  assign s23 = ((s20 & s22) | (s12 & s21));
  assign s25 = ((s23 & s24) | (s15 & s21));
  assign s26 = (s18 ^ null);
  assign Cout = ((s25 & s26) | (s18 & null));
  assign S[0] = (s19 ^ const1b0);
  assign S[1] = (s22 ^ s20);
  assign S[2] = (s24 ^ s23);
  assign S[3] = (s26 ^ s25);
endmodule

module calculator (
    input [3:0] DATA,
    input DA,
    input CLK,
    output [3:0] D0,
    output [3:0] D1,
    output [3:0] D2,
    output [3:0] D3,
    output [3:0] D4,
    output [3:0] D5,
    output [3:0] D6,
    output [3:0] D7
  );
  wire [3:0] D0_temp;
  wire [3:0] D1_temp;
  wire [3:0] D2_temp;
  wire [3:0] D3_temp;
  wire [3:0] D4_temp;
  wire [3:0] D5_temp;
  wire [3:0] D6_temp;
  wire [3:0] D7_temp;
  wire [3:0] s0;
  wire s1;
  wire [3:0] s2;
  wire [3:0] s3;
  wire [3:0] s4;
  wire s5;
  wire [1:0] s6;
  wire [1:0] s7;
  wire [3:0] s8;
  wire [3:0] s9;
  wire [3:0] s10;
  wire [3:0] s11;
  wire s12;
  wire [3:0] s13;
  wire [3:0] s14;
  wire [3:0] s15;
  wire [3:0] s16;
  wire s17;
  wire [3:0] s18;
  wire [3:0] s19;
  wire [3:0] s20;
  wire [3:0] s21;
  wire s22;
  wire [3:0] s23;
  wire [3:0] s24;
  wire [3:0] s25;
  wire [3:0] s26;
  wire s27;
  wire [3:0] s28;
  wire [3:0] s29;
  wire [3:0] s30;
  wire [3:0] s31;
  wire s32;
  wire [3:0] s33;
  wire [3:0] s34;
  wire [3:0] s35;
  wire [3:0] s36;
  wire s37;
  wire [3:0] s38;
  wire [3:0] s39;
  wire [3:0] s40;
  wire [3:0] s41;
  wire s42;
  wire s43;
  wire s44;
  wire s45;
  wire s46;
  wire s47;
  wire s48;
  wire s49;
  wire s50;
  wire s51;
  wire s52;
  DIG_D_FF_1bit #(
                  .Default(0)
                )
                DIG_D_FF_1bit_i0 (
                  .D( DA ),
                  .C( CLK ),
                  .Q( s43 ),
                  .\~Q ( s42 )
                );
  \4_bit_comparator  \4_bit_comparator_i1 (
    .A( DATA ),
    .B( 4'b1110 ),
    .greater( s44 ),
    .less( s48 ),
    .equal( s45 )
  );
  assign s7[0] = (s44 | ~ s45);
  assign s7[1] = (s44 | s45);
  assign s46 = (s44 & s43);
  DIG_Register DIG_Register_i2 (
                 .D( s46 ),
                 .C( CLK ),
                 .en( DA ),
                 .Q( s47 )
               );
  assign s6[0] = (~ (s48 | s45) | s44);
  assign s6[1] = ((s47 & s48) | s44 | s45);
  DIG_D_FF_1bit #(
                  .Default(0)
                )
                DIG_D_FF_1bit_i3 (
                  .D( s47 ),
                  .C( CLK ),
                  .Q( s49 )
                );
  assign s50 = (~ s47 & s49);
  DIG_Register DIG_Register_i4 (
                 .D( s50 ),
                 .C( CLK ),
                 .en( DA ),
                 .Q( s51 )
               );
  DIG_D_FF_1bit #(
                  .Default(0)
                )
                DIG_D_FF_1bit_i5 (
                  .D( s51 ),
                  .C( CLK ),
                  .\~Q ( s52 )
                );
  assign s1 = ((s51 & s52) | (DA & s42));
  DIG_Register_BUS #(
                     .Bits(4)
                   )
                   DIG_Register_BUS_i6 (
                     .D( s0 ),
                     .C( CLK ),
                     .en( s1 ),
                     .Q( D0_temp )
                   );
  DIG_Register_BUS #(
                     .Bits(4)
                   )
                   DIG_Register_BUS_i7 (
                     .D( s2 ),
                     .C( CLK ),
                     .en( s1 ),
                     .Q( s3 )
                   );
  Mux_4x1_NBits #(
                  .Bits(4)
                )
                Mux_4x1_NBits_i8 (
                  .sel( s6 ),
                  .in_0( DATA ),
                  .in_1( D0_temp ),
                  .in_2( 4'b0 ),
                  .in_3( s4 ),
                  .out( s0 )
                );
  Mux_4x1_NBits #(
                  .Bits(4)
                )
                Mux_4x1_NBits_i9 (
                  .sel( s7 ),
                  .in_0( s3 ),
                  .in_1( s3 ),
                  .in_2( 4'b0 ),
                  .in_3( s4 ),
                  .out( s2 )
                );
  DIG_Register_BUS #(
                     .Bits(4)
                   )
                   DIG_Register_BUS_i10 (
                     .D( s8 ),
                     .C( CLK ),
                     .en( s1 ),
                     .Q( D1_temp )
                   );
  DIG_Register_BUS #(
                     .Bits(4)
                   )
                   DIG_Register_BUS_i11 (
                     .D( s9 ),
                     .C( CLK ),
                     .en( s1 ),
                     .Q( s10 )
                   );
  Mux_4x1_NBits #(
                  .Bits(4)
                )
                Mux_4x1_NBits_i12 (
                  .sel( s6 ),
                  .in_0( D0_temp ),
                  .in_1( D1_temp ),
                  .in_2( 4'b0 ),
                  .in_3( s11 ),
                  .out( s8 )
                );
  Mux_4x1_NBits #(
                  .Bits(4)
                )
                Mux_4x1_NBits_i13 (
                  .sel( s7 ),
                  .in_0( s10 ),
                  .in_1( s10 ),
                  .in_2( 4'b0 ),
                  .in_3( s11 ),
                  .out( s9 )
                );
  DIG_Register_BUS #(
                     .Bits(4)
                   )
                   DIG_Register_BUS_i14 (
                     .D( s13 ),
                     .C( CLK ),
                     .en( s1 ),
                     .Q( D2_temp )
                   );
  DIG_Register_BUS #(
                     .Bits(4)
                   )
                   DIG_Register_BUS_i15 (
                     .D( s14 ),
                     .C( CLK ),
                     .en( s1 ),
                     .Q( s15 )
                   );
  Mux_4x1_NBits #(
                  .Bits(4)
                )
                Mux_4x1_NBits_i16 (
                  .sel( s6 ),
                  .in_0( D1_temp ),
                  .in_1( D2_temp ),
                  .in_2( 4'b0 ),
                  .in_3( s16 ),
                  .out( s13 )
                );
  Mux_4x1_NBits #(
                  .Bits(4)
                )
                Mux_4x1_NBits_i17 (
                  .sel( s7 ),
                  .in_0( s15 ),
                  .in_1( s15 ),
                  .in_2( 4'b0 ),
                  .in_3( s16 ),
                  .out( s14 )
                );
  DIG_Register_BUS #(
                     .Bits(4)
                   )
                   DIG_Register_BUS_i18 (
                     .D( s18 ),
                     .C( CLK ),
                     .en( s1 ),
                     .Q( D3_temp )
                   );
  DIG_Register_BUS #(
                     .Bits(4)
                   )
                   DIG_Register_BUS_i19 (
                     .D( s19 ),
                     .C( CLK ),
                     .en( s1 ),
                     .Q( s20 )
                   );
  Mux_4x1_NBits #(
                  .Bits(4)
                )
                Mux_4x1_NBits_i20 (
                  .sel( s6 ),
                  .in_0( D2_temp ),
                  .in_1( D3_temp ),
                  .in_2( 4'b0 ),
                  .in_3( s21 ),
                  .out( s18 )
                );
  Mux_4x1_NBits #(
                  .Bits(4)
                )
                Mux_4x1_NBits_i21 (
                  .sel( s7 ),
                  .in_0( s20 ),
                  .in_1( s20 ),
                  .in_2( 4'b0 ),
                  .in_3( s21 ),
                  .out( s19 )
                );
  DIG_Register_BUS #(
                     .Bits(4)
                   )
                   DIG_Register_BUS_i22 (
                     .D( s23 ),
                     .C( CLK ),
                     .en( s1 ),
                     .Q( D4_temp )
                   );
  DIG_Register_BUS #(
                     .Bits(4)
                   )
                   DIG_Register_BUS_i23 (
                     .D( s24 ),
                     .C( CLK ),
                     .en( s1 ),
                     .Q( s25 )
                   );
  Mux_4x1_NBits #(
                  .Bits(4)
                )
                Mux_4x1_NBits_i24 (
                  .sel( s6 ),
                  .in_0( D3_temp ),
                  .in_1( D4_temp ),
                  .in_2( 4'b0 ),
                  .in_3( s26 ),
                  .out( s23 )
                );
  Mux_4x1_NBits #(
                  .Bits(4)
                )
                Mux_4x1_NBits_i25 (
                  .sel( s7 ),
                  .in_0( s25 ),
                  .in_1( s25 ),
                  .in_2( 4'b0 ),
                  .in_3( s26 ),
                  .out( s24 )
                );
  DIG_Register_BUS #(
                     .Bits(4)
                   )
                   DIG_Register_BUS_i26 (
                     .D( s28 ),
                     .C( CLK ),
                     .en( s1 ),
                     .Q( D5_temp )
                   );
  DIG_Register_BUS #(
                     .Bits(4)
                   )
                   DIG_Register_BUS_i27 (
                     .D( s29 ),
                     .C( CLK ),
                     .en( s1 ),
                     .Q( s30 )
                   );
  Mux_4x1_NBits #(
                  .Bits(4)
                )
                Mux_4x1_NBits_i28 (
                  .sel( s6 ),
                  .in_0( D4_temp ),
                  .in_1( D5_temp ),
                  .in_2( 4'b0 ),
                  .in_3( s31 ),
                  .out( s28 )
                );
  Mux_4x1_NBits #(
                  .Bits(4)
                )
                Mux_4x1_NBits_i29 (
                  .sel( s7 ),
                  .in_0( s30 ),
                  .in_1( s30 ),
                  .in_2( 4'b0 ),
                  .in_3( s31 ),
                  .out( s29 )
                );
  DIG_Register_BUS #(
                     .Bits(4)
                   )
                   DIG_Register_BUS_i30 (
                     .D( s33 ),
                     .C( CLK ),
                     .en( s1 ),
                     .Q( D6_temp )
                   );
  DIG_Register_BUS #(
                     .Bits(4)
                   )
                   DIG_Register_BUS_i31 (
                     .D( s34 ),
                     .C( CLK ),
                     .en( s1 ),
                     .Q( s35 )
                   );
  Mux_4x1_NBits #(
                  .Bits(4)
                )
                Mux_4x1_NBits_i32 (
                  .sel( s6 ),
                  .in_0( D5_temp ),
                  .in_1( D6_temp ),
                  .in_2( 4'b0 ),
                  .in_3( s36 ),
                  .out( s33 )
                );
  Mux_4x1_NBits #(
                  .Bits(4)
                )
                Mux_4x1_NBits_i33 (
                  .sel( s7 ),
                  .in_0( s35 ),
                  .in_1( s35 ),
                  .in_2( 4'b0 ),
                  .in_3( s36 ),
                  .out( s34 )
                );
  DIG_Register_BUS #(
                     .Bits(4)
                   )
                   DIG_Register_BUS_i34 (
                     .D( s38 ),
                     .C( CLK ),
                     .en( s1 ),
                     .Q( D7_temp )
                   );
  DIG_Register_BUS #(
                     .Bits(4)
                   )
                   DIG_Register_BUS_i35 (
                     .D( s39 ),
                     .C( CLK ),
                     .en( s1 ),
                     .Q( s40 )
                   );
  Mux_4x1_NBits #(
                  .Bits(4)
                )
                Mux_4x1_NBits_i36 (
                  .sel( s6 ),
                  .in_0( D6_temp ),
                  .in_1( D7_temp ),
                  .in_2( 4'b0 ),
                  .in_3( s41 ),
                  .out( s38 )
                );
  Mux_4x1_NBits #(
                  .Bits(4)
                )
                Mux_4x1_NBits_i37 (
                  .sel( s7 ),
                  .in_0( s40 ),
                  .in_1( s40 ),
                  .in_2( 4'b0 ),
                  .in_3( s41 ),
                  .out( s39 )
                );
  \4_bit_adder  \4_bit_adder_i38 (
    .A( D0_temp ),
    .B( s3 ),
    .Cin( 1'b0 ),
    .S( s4 ),
    .Cout( s5 )
  );
  \4_bit_adder  \4_bit_adder_i39 (
    .A( D1_temp ),
    .B( s10 ),
    .Cin( s5 ),
    .S( s11 ),
    .Cout( s12 )
  );
  \4_bit_adder  \4_bit_adder_i40 (
    .A( D2_temp ),
    .B( s15 ),
    .Cin( s12 ),
    .S( s16 ),
    .Cout( s17 )
  );
  \4_bit_adder  \4_bit_adder_i41 (
    .A( D3_temp ),
    .B( s20 ),
    .Cin( s17 ),
    .S( s21 ),
    .Cout( s22 )
  );
  \4_bit_adder  \4_bit_adder_i42 (
    .A( D4_temp ),
    .B( s25 ),
    .Cin( s22 ),
    .S( s26 ),
    .Cout( s27 )
  );
  \4_bit_adder  \4_bit_adder_i43 (
    .A( D5_temp ),
    .B( s30 ),
    .Cin( s27 ),
    .S( s31 ),
    .Cout( s32 )
  );
  \4_bit_adder  \4_bit_adder_i44 (
    .A( D6_temp ),
    .B( s35 ),
    .Cin( s32 ),
    .S( s36 ),
    .Cout( s37 )
  );
  \4_bit_adder  \4_bit_adder_i45 (
    .A( D7_temp ),
    .B( s40 ),
    .Cin( s37 ),
    .S( s41 )
  );
  assign D0 = D0_temp;
  assign D1 = D1_temp;
  assign D2 = D2_temp;
  assign D3 = D3_temp;
  assign D4 = D4_temp;
  assign D5 = D5_temp;
  assign D6 = D6_temp;
  assign D7 = D7_temp;
endmodule
