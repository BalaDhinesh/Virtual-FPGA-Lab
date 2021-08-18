\m4_TLV_version 1d -p verilog --bestsv --noline: tl-x.org
\SV
   m4_include_lib(['https://raw.githubusercontent.com/BalaDhinesh/Virtual-FPGA-Lab/main/viz_libraries/fpga_includes.tlv'])
\SV
   m4_ifelse_block(M4_MAKERCHIP, 1,['
   m4_makerchip_module   
   '],['
   module top(input clk, input reset, output lcd_e, output lcd_rs, output [7:0] data);
   ']
   )
\TLV
   |lcd_pipe
      @0
         m4+fpga_refresh($refresh, m4_ifelse(M4_MAKERCHIP, 1, 1, 500000))
         $reset = *reset;
         ?$refresh
            $I[3:0] <= $reset ? 5'b0 : ($I < 4) ? $I + 1 : 0;
            $J[4:0] <= $reset ? 0 : ($I == 4) ? $J + 1 : ($J == 25) ? 4 : $J;
            $datas[25*8-1:0] = {8'h18, 8'h2D, 8'h2D, 8'hC0, 8'h21, 8'h21, 8'h21, 8'h6E, 8'h75, 8'h66, 8'h20, 8'h65, 8'h72, 8'h61,
                           8'h20, 8'h73, 8'h41, 8'h47, 8'h50, 8'h46, 8'h80, 8'h01, 8'h06, 8'h0C, 8'h38};
            $out[7:0] = $reset ? 0 : ($I <= 2) ? $datas >> 8*$J : >>1$out;
            $lcd_enable = $reset ? 0 : ($I <= 2) ?  1 : ($I > 2 & $I < 4) ? 0 : >>1$lcd_enable;;
            $lcd_reset = ($J > 4 & $J != 21 & $J != 24) ? 1 : 0;
         m4_ifelse_block(M4_MAKERCHIP, 1, [''],['
         *data = $out;
         *lcd_e = $lcd_enable;
         *lcd_rs = $lcd_reset;
         '])
   // M4_BOARD numbering
   // 1 - Zedboard
   // 2 - Artix-7
   // 3 - Basys3
   // 4 - Icebreaker
   // 5 - Nexys
   m4_define(M4_BOARD, 2)
   m4+fpga_init(|top_pipe, @0)
   m4+fpga_lcd(|lcd_pipe, @0, $out, $lcd_enable, $lcd_reset) 
\SV
   endmodule