\m4_TLV_version 1d: tl-x.org
\SV
   m4_makerchip_module
   /* verilator lint_on WIDTH */
\TLV
   $reset = *reset;

   // Fibonacci FF
   $num[31:0] = $reset ? 1 : (>>1$num + >>2$num);
   

   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
   
\SV
   endmodule
