/*
Curtis Fodor
CWID: A20327891
February 3, 2022
ECEN 3233
Lab2
*/

`timescale 1ns/1ps
module stimulus;

   logic [63:0]  key;
   logic [63:0]  plaintext;
   logic encrypt;
   logic [7:0] OddParity;
   logic [63:0]  ciphertext;

   logic clk;
   logic [31:0]  BadKeys;
   logic [31:0]  errors;
   logic [31:0]  vectornum;
   logic [63:0]  result;
   logic [7:0] 	 op;   
   logic [199:0] testvectors[512:0];
     
   
   integer 	 handle3;
   integer 	 desc3;
   integer 	 i;  
   integer   j;

   DES dut (key, plaintext, encrypt, OddParity, ciphertext);

   // 1 ns clock
   initial 
     begin	
        clk = 1'b1;
        forever #5 clk = ~clk;
     end

   initial
     begin
        handle3 = $fopen("des.out");
        $readmemh("des.tv", testvectors);	
        vectornum = 0;
        errors = 0;
        BadKeys = 0;		
        desc3 = handle3;
     end

   // apply test vectors on rising edge of clk
   always @(posedge clk)
     begin
        #1; {plaintext, op, key, result} = testvectors[vectornum];
        #0 encrypt = op[0];		  
     end  

   // check results on falling edge of clk
  always @(negedge clk)
    begin
      if (result != ciphertext)
	      begin
	        errors = errors + 1;
	      end
      if (OddParity != 8'b11111111)
        begin
          BadKeys = BadKeys + 1;
        end
      $fdisplay(desc3, "%h %h %b || %h || %h %b", 
      plaintext, key, encrypt, ciphertext, result, (result == ciphertext));
      vectornum = vectornum + 1;
      if (testvectors[vectornum] === 200'bx) 
	      begin 
          $display("%d tests completed with %d errors and %d Bad Keys",
          vectornum, errors, BadKeys);
          $finish;
	      end
    end

endmodule // stimulus
