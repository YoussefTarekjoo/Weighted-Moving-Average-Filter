module FIR_Filter(clk, reset, data_in, data_out);

 parameter N = 8 ;
 input clk, reset ;
 input [N-1:0] data_in ;
 output reg [N-1:0] data_out ;
 
 wire [5:0] b0 =  6'b000001 ; 
 wire [5:0] b1 =  6'b000010 ; 
 wire [5:0] b2 =  6'b000100 ; 
 wire [5:0] b3 =  6'b001000 ;
 
 reg [N-1:0] x1, x2, x3 ; 
 
 wire [N-1:0] div0, div1, div2, div3 ;  
 
 assign div0 = data_in / b0 ; 
 assign div1 = x1 / b1 ;  
 assign div2 = x2 / b2 ;  
 assign div3 = x3 / b3 ;
 
 wire [N-1:0] Add_final ; 
 
 assign Add_final = div0 + div1 + div2 + div3 ; 
 
always@(posedge clk or posedge reset)
 begin
  if(reset)
   begin
    data_out <= 0 ;
    x1 <= 0 ;
    x2 <= 0 ;
    x3 <= 0 ;
   end
  else
   begin
    data_out <= Add_final;
    x1 <= data_in ;
    x2 <= x1 ;
    x3 <= x2 ;
   end
 end
 
endmodule