\m4_TLV_version 1d -p verilog --bestsv --noline: tl-x.org
\SV
   m4_include_lib(['https://raw.githubusercontent.com/BalaDhinesh/Virtual-FPGA-Lab/main/viz_libraries/fpga_includes.tlv'])                   
\SV
   m4_ifelse_block(M4_MAKERCHIP, 1,['
   m4_makerchip_module   
   '],['
   module top(input clk, input reset, output [15:0] led);
   '])    
\TLV
   |led_pipe
      @0  
         m4+fpga_refresh($refresh, m4_ifelse(M4_MAKERCHIP, 1, 1, 50000000)) 
         $reset = *reset;
         ?$refresh
            $Leds[15:0] <= $reset ? 1 : $Leds+1;
         m4_ifelse_block(M4_MAKERCHIP, 1, [''],['
         *led = $Leds;
         '])
   // M4_BOARD numbering
   // 1 - Zedboard
   // 2 - Artix-7
   // 3 - Basys3
   // 4 - Icebreaker
   // 5 - Nexys
   m4_define(M4_BOARD, 1)
   m4+fpga_init(|top_pipe, @0)
   m4+fpga_led(|led_pipe, @0, $Leds)
\SV
   endmodule