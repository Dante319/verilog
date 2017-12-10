module binary_clock ( clk ,reset ,h2,h1,m2,m1,s2, s1);

output[3:0] h2;
output[1:0] h1;
output[3:0] m2;
output[2:0] m1;
output [3:0] s2;
output[2:0] s1;

reg [3:0] h2;
reg[1:0] h1;
reg [3:0] m2;
reg[2:0] m1;
reg [3:0] s2;
reg[2:0] s1;

input clk ;
wire clk ;
input reset ;
wire reset ;

initial h2=0;
initial h1=0;
initial m2=0;
initial m1=0;
initial s2 = 0;
initial s1 = 0;

always @ (posedge (clk)) begin
 if (reset)
begin
  h2<=0;
  h1<=0;
  m2 <=0;
  m1<=0;
  s2 <= 0;
  s1 <=0;
end
 else if (s2<9)
  s2 <= s2 + 1;
 else
begin
  s2 <= 0;
 if(s1 <5)
s1 <= s1+1;
else
begin
s1 <=0;
if(m2<9)
m2 <= m2+1;
else
begin
m2<=0;
if(m1<5)
m1 <= m1+1;
else
begin
m1 <=0;
if(h2<9)
h2<=h2+1;
else
begin
h2<=0;
if(h1<2)
h1<=h1+1;
else
h1<=0;
end
end
end
end
end
end
      
endmodule