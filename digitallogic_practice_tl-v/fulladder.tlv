\m4_TLV_version 1d: tl-x.org
\SV
   m4_makerchip_module
\TLV
   $reset = *reset;

   //...
   $xor = $in1 ^ $in2;
   $out = $xor ^ $carry_in;
   $and1 = $xor & $carry_in;
   $and2 = $in1 & $in2;
   $carry_out = $and1 | $and2;

   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
