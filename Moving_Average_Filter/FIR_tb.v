module FIR_TB ; 

parameter N = 8 ;

reg clk, reset ;
reg [N-1:0] data_in ;
wire [N-1:0] data_out ; 
reg [7:0] Address ; 
reg [N-1:0] MEM_IN [100:0] ; 
reg [N-1:0] MEM_OUT [100:0] ; 

FIR_Filter FIR(clk, reset, data_in, data_out) ;

always #1 clk = ~clk ;

initial
 begin
  $readmemh("input.txt", MEM_IN) ; 
  $readmemh("output.txt", MEM_OUT) ;
  Address = 0 ;
  clk = 0 ;
  reset = 0 ;  
  #200
  $stop ;
 end  

always@(posedge clk)
 begin
  data_in <= MEM_IN[Address] ;  
  if(Address > 4)
   begin
    if(data_out == MEM_OUT[Address])
	 $display("data_out = %0h , MEM_OUT[%0d] = %0h" , data_out , Address , MEM_OUT[Address]) ; 
   end
   Address = Address + 1 ;
 end     

endmodule