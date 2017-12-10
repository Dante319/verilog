module stopwatch ( clk ,reset ,dout1, dout2);

output [3:0] dout1;
output[2:0] dout2;
reg [3:0] dout1;
reg[2:0] dout2;

input clk ;
wire clk ;
input reset ;
wire reset ;

initial dout1 = 0;
initial dout2 = 0;

always @ (posedge (clk)) begin
 if (reset)
begin
  dout1 <= 0;
  dout2 <=0;
end
 else if (dout1<9)
  dout1 <= dout1 + 1;
 else
begin
  dout1 <= 0;
 if(dout2 <5)
dout2 <= dout2+1;
else
dout2 <=0;
end
end
      
endmodule