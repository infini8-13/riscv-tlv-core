\m4_TLV_version 1d: tl-x.org
\SV
   m4_makerchip_module
   /* verilator lint_on WIDTH */
\TLV
   $reset = *reset;

   // 16-bit free runing counter
   $cnt[15:0] = $reset ? 16'b0 : (>>1$cnt + 1);
   

   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
   
\SV
   endmodule
