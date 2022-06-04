\m4_TLV_version 1d: tl-x.org

\SV
m4+definitions(['

   m4_def(board_png, ['['['https://raw.githubusercontent.com/os-fpga/Virtual-FPGA-Lab/8f89133defd725253e10a8cdc28b65f830a87f89/viz/$1']']'])

   // Board definitions:
   m4_def(
      ['# 1st CLaaS'],
      BOARD_0_IMAGE_URL,  ['['https://raw.githubusercontent.com/stevehoover/1st-CLaaS/1a0a1894f1fe2d831374968a69f3c2697f458145/doc/img/simple.png']'],
      BOARD_0_IMAGE_SIZE, ['['width: 593, height: 238']'],
      BOARD_0_FPGA_WHERE, ['M4_FPGA_WHERE_COMMON['left: 440, top: 72, width: 90, height: 90']'],
      BOARD_0_LED_CNT,    0,
      BOARD_0_SSEG_CNT,   0,
      BOARD_0_THANKS_ARGS, ['['['left: 390, top: 250, width: 100'], ['']']'],
      
      ['# Zedboard'],
      BOARD_1_IMAGE_URL,  m4_board_png(zedboard.png),
      BOARD_1_IMAGE_SIZE, ['['width: 2692, height: 2256']'],
      BOARD_1_FPGA_WHERE, ['M4_FPGA_WHERE_COMMON['left: 1258, top: 1058, width: 260, height: 260']'],
      BOARD_1_LED_CNT,    8,
      BOARD_1_LED_WHERE,  ['['left: 992.7, top: 1863, scale: 3.33']'],
      BOARD_1_SSEG_CNT,   0,
      BOARD_1_SWITCH_CNT, 8,
      BOARD_1_SWITCH_WHERE, ['['top: 1930, left: 950, scale: 6']'],
      BOARD_1_PUSH_CNT, 5,
      BOARD_1_PUSH_WHERE, ['['top: 360, left: 125, scale: 1.18']'],
      BOARD_1_THANKS_ARGS, ['['['left: 2200, top: 2265, width: 350'], ['AVNET, Xilinx, and ']']'],
      
      ['# Artix-7'],
      BOARD_2_IMAGE_URL,  m4_board_png(artix7.png),
      BOARD_2_IMAGE_SIZE, ['['width: 3108, height: 2640']'],
      BOARD_2_FPGA_WHERE, ['M4_FPGA_WHERE_COMMON['left: 1459, top: 1490, width: 390, height: 390']'],
      BOARD_2_LED_CNT,    16,
      BOARD_2_LED_WHERE,  ['['left: 340, top: 2089, scale: 4.698']'],
      BOARD_2_SSEG_CNT,   4,
      BOARD_2_SSEG_WHERE, ['['left: 220, top: 1610, scale: 5.15']'],
      BOARD_2_SWITCH_CNT, 16,
      BOARD_2_SWITCH_WHERE, ['['top: 2200, left: 250, scale: 8.5']'],
      BOARD_2_PUSH_CNT, 5,
      BOARD_2_PUSH_WHERE, ['['top: 1650, left: 2200, scale: 8.5']'],
      BOARD_2_LCD_WHERE, ['['top: 2450, left: 180, width: 300']'],
      BOARD_2_THANKS_ARGS, ['['['left: 2700, top: 2750, width: 400'], ['Xilinx and ']']'],
      
      ['# Basys3'],
      BOARD_3_IMAGE_URL,  m4_board_png(basys3.png),
      BOARD_3_IMAGE_SIZE, ['['width: 5773, height: 4330']'],
      BOARD_3_FPGA_WHERE, ['M4_FPGA_WHERE_COMMON['left: 2540, top: 1965, width: 400, height: 400']'],
      BOARD_3_LED_CNT,    16,
      BOARD_3_LED_WHERE,  ['['left: 675, top: 3116, scale: 8.5, angle: -0.5']'],
      BOARD_3_SSEG_CNT,   4,
      BOARD_3_SSEG_WHERE, ['['left: 880, top: 2600, scale: 9.45']'],
      BOARD_3_SWITCH_CNT, 16,
      BOARD_3_SWITCH_WHERE, ['['top: 3300, left: 550, scale: 15.5']'],
      BOARD_3_PUSH_CNT, 5,
      BOARD_3_PUSH_WHERE, ['['top: 2300, left: 125, scale: 20']'],
      BOARD_3_THANKS_ARGS, ['['['left: 5000, top: 4400, width: 700'], ['Digilent, Xilinx, and ']']'],
      
      ['# Icebreaker'],
      BOARD_4_IMAGE_URL,  m4_board_png(icebreaker.png),
      BOARD_4_IMAGE_SIZE, ['['width: 621, height: 1021']'],
      BOARD_4_FPGA_WHERE, ['M4_FPGA_WHERE_COMMON['left: 302.5, top: 562.5, angle: -45, width: 90, height: 90']'],
      BOARD_4_LED_CNT,    0,
      BOARD_4_SSEG_CNT,   0,
      BOARD_4_THANKS_ARGS, ['['['left: 500, top: 1030, width: 130'], ['Lattice, 1BitSquared, and ']']'],
      
      ['# Nexys'],
      BOARD_5_IMAGE_URL,  m4_board_png(nexys.png),
      BOARD_5_IMAGE_SIZE, ['['width: 577, height: 433']'],
      BOARD_5_FPGA_WHERE, ['M4_FPGA_WHERE_COMMON['left: 272.5, top: 205.5, width: 45, height: 45']'],
      BOARD_5_LED_CNT,    16,
      BOARD_5_LED_WHERE,  ['['left: 135, top: 342, scale: 0.656']'],
      BOARD_5_SSEG_CNT,   8,
      BOARD_5_SSEG_WHERE, ['['left: 163, top: 306, scale: 0.778']'],
      BOARD_5_SWITCH_CNT, 16,
      BOARD_5_SWITCH_WHERE, ['['top: 360, left: 125, scale: 1.18']'],
      BOARD_5_PUSH_CNT, 5,
      BOARD_5_PUSH_WHERE, ['['top: 360, left: 125, scale: 1.18']'],
      BOARD_5_THANKS_ARGS, ['['['left: 450, top: 438, width: 80'], ['Digilent, Xilinx, and ']']'])



   // These macros parameterize the top-level FPGA module interface and signal declarations.
   // Currently, they could be used by m4_lab(), but we currently define a fixed module interface defining the superset
   // of all possible interface signals. So there's no point to all these macros, unless we change our approach.
   
   // A helper macro.
   m4_def(fpga_ios_list, [''])  // E.g: ['m4_fpga_io_sig(in, ['[7:0] led'])']...

   // Declare LEDs.
   m4_func(fpga_io_leds, ['
      m4_def(fpga_io_leds_defined, 1)
      m4_ifelse(['$1'], [''], ['m4_errprint(['m4_fpga_ios leds arg requires (max:0)'])'])
      m4_append(fpga_ios_list, ['m4_fpga_io_sig(out, ['[$1] led'])'])
   '])
   
   // Declare RGB LEDs.
   // TODO: RGB LEDs need to be debugged.
   m4_func(fpga_io_rgb_leds, ['
      m4_def(fpga_io_rgb_leds_defined, 1)
      m4_ifelse(['$1'], [''], ['m4_errprint(['m4_fpga_ios rgb_leds arg requires (max:0)'])'])
      m4_append(fpga_ios_list, ['m4_fpga_io_sig(out, ['[$1] led_r'])']['m4_fpga_io_sig(out, ['[$1] led_g'])']['m4_fpga_io_sig(out, ['[$1] led_b'])'])
   '])
   
   // Declare LCD (JHD 162A).
   m4_func(fpga_io_lcd, ['
      m4_def(fpga_io_lcd_defined, 1)
      m4_append(fpga_ios_list, ['m4_fpga_io_sig(out, ['[7:0] out'])']['m4_fpga_io_sig(out, ['lcd_reset'])']['m4_fpga_io_sig(out, ['lcd_enable'])'])
   '])
   
   // Declare switches .
   m4_func(fpga_io_switch, ['
      m4_def(fpga_io_switch_defined, 1)
      m4_append(fpga_ios_list, ['m4_fpga_io_sig(out, ['[15:0] switch'])'])
   '])
                             
   // Declare pushbuttons.
   m4_func(fpga_io_push, ['
      m4_def(fpga_io_push_defined, 1)
      m4_append(fpga_ios_list, ['m4_fpga_io_sig(out, ['[4:0] push'])'])
   '])
                
   // Declare seven-segment.
   m4_func(fpga_io_sseg, ['
      m4_def(fpga_io_sseg_defined, 1)
      m4_append(fpga_ios_list, ['m4_fpga_io_sig(out, ['[6:0] sseg_segment_n'])']['m4_fpga_io_sig(out, ['sseg_decimal_point_n'])']['m4_fpga_io_sig(out, ['[$1] sseg_digit_n'])'])
   '])
   
   
   // Define IOs as, e.g.:
   //   m4_fpga_ios(leds(7:0), ...)
   m4_func(fpga_ios, ['
      m4_ifelse(['$1'], [''], [''], ['
         m4_fpga_io_$1
         m4_fpga_ios(m4_shift($@))
      '])
   '])
   
   // Definition of appropriate top-level module.
   m4_func(fpga_module, ['
      m4_fpga_ios($@)
      m4_ifexpr(M4_MAKERCHIP, ['
         // Makerchip module.
         m4_def(fpga_io_sig, [' logic ']m4_arg(2)[';'])
         m4_output(['m4_makerchip_module m4_echo(m4_fpga_ios_list)'])
      '], ['
         // FPGA module.
         m4_def(fpga_io_sig, [', ']m4_arg(1)['put reg ']m4_arg(2))
         m4_output(['module top(input clk, input reset['']m4_echo(m4_fpga_ios_list))'])
      '])
   '])

   m4_func(lab, ['
      // Possible parameters:
      //   leds(x:0): Defines logic [x:0] led: lit when asserted
      //   rgb_leds(x:0): Defines logic [x:0] led_r/g/b: lit with corresponding color component when asserted
      //   lcd...
      //   sseg(x:0) Defines:
      //              logic [6:0] sseg_segment_n: corresponding segments are lit for selected digit(s) when deasserted 
      //              logic sseg_decimal_point_n: decimal point is lit for selected digit(s) when deasserted
      //              logic [x:0] sseg_digit_n: corresponding digits are enabled when deasserted
      // Eg: m4_fpga_module(leds(7:0), sseg(3:0))
      //m4_output(['m4_fpga_module(leds(15:0), sseg(7:0))'])
      m4_output(['module top(input wire clk, input wire reset, input wire [31:0] cyc_cnt, output wire passed, output wire failed);    /* verilator lint_save */ /* verilator lint_off UNOPTFLAT */  bit [256:0] RW_rand_raw; bit [256+63:0] RW_rand_vect; pseudo_rand #(.WIDTH(257)) pseudo_rand (clk, reset, RW_rand_raw[256:0]); assign RW_rand_vect[256+63:0] = {RW_rand_raw[62:0], RW_rand_raw};  /* verilator lint_restore */  /* verilator lint_off WIDTH */ /* verilator lint_off UNOPTFLAT */  
         logic [15:0] led; logic [6:0] sseg_segment_n; logic sseg_decimal_point_n; logic [7:0] sseg_digit_n;
   		logic [15:0] switch;
         logic [4:0] push;
         logic [7:0] out;
         logic lcd_reset;
         logic lcd_enable;
         logic [3:0] vga_r;
         logic [3:0] vga_g;
         logic [3:0] vga_b;
         logic vga_hsync;
         logic vga_vsync;
         '])
         '])
   
   
   // Macro constants
   m4_def(RED_LED_COLOR, "#ff4040b0")
   m4_def(OFF_SEGMENT_COLOR, "#b0b0c8")
   m4_def(RED_SEGMENT_COLOR, "red")
   m4_def(FPGA_WHERE_COMMON, ['['visible: true, justifyX: "center", justifyY: "center", fill: "#303030a0", ']'])

                            
                            
'])
// Defines $_var that provides a pulse every #_delay'th cycle.
// This can be used to artificially slow the logic on the real FPGA.
// FPGA logic should be designed to operate at the frequency of $_var, with the clock running at a reasonable speed.
\TLV fpga_refresh($_var, #_delay)
   /* verilator lint_save */
   /* verilator lint_off UNSIGNED */
   $rst['']m4_plus_inst_id = *reset;
   $count['']m4_plus_inst_id[31:0] = ($RETAIN >= #_delay - 1) | >>1$rst['']m4_plus_inst_id ? 1'b0 : $RETAIN + 1 ;
   $_var = ($count['']m4_plus_inst_id == #_delay - 1) ? 1'b1 : 1'b0 ;
   /* verilator lint_restore */
   


// Instantiates a board.
// params:
//   /_board: The scope in which this is instantiated.
//   /_fpga: A scope for the FPGA.
//   #_board: The board number (also M4_BOARD)
//   _sig_prefix: "*" to use global SV signals; "$" to use /_board-local pipesignals.
//                 See "lab" macro for definion of standard I/O signals.
//   _where: The 'where' properties for the board VIZ.
\TLV board(/_board, /_fpga, #_board, _sig_prefix, _where)
   m4+board_defs(#_board)
   m4+thanks(M4_BOARD_THANKS_ARGS)
   
   // Board VIZ.
   
   // Board Image.
   \viz_js
      box: {strokeWidth: 0},
      init() {
         ret = {}
         ret.img = this.newImageFromURL(
               "M4_BOARD_IMAGE_URL",
               {  left: 0,
                  top: 0,
                  fill: "#30483c",
                  strokeWidth: 1,
                  width: (function () {return {M4_BOARD_IMAGE_SIZE}})().width,
                  height: (function () {return {M4_BOARD_IMAGE_SIZE}})().height,
               },
               {  angle: 0,
                  strokeWidth: 0
               }
            )
         return ret;
      },
      where: {_where},
   
   // LEDs.
   m4_ifelse(M4_BOARD_LED_CNT, 0, , ['m4+fpga_leds(/_board, #_board, _sig_prefix)'])
   
   // 7-Segment
   m4_ifelse(M4_BOARD_SSEG_CNT, 0, , ['m4+fpga_sseg(/_board, #_board, _sig_prefix)'])
   m4_ifelse(1, 0, , ['m4+fpga_lcd(/_board, #_board, _sig_prefix)'])
   m4_ifelse(1, 0, , ['m4+fpga_vga(/_board, #_board, _sig_prefix)'])
   m4_ifelse(1, 0, , ['m4+fpga_switch(/_board, #_board, _sig_prefix)'])
   m4_ifelse(1, 0, , ['m4+fpga_push(/_board, #_board, _sig_prefix)'])

// VIZ providing a "Thanks to our sponsors" message.
\TLV thanks(_where, _who)
   /thanks
      \viz_js
         box: {width: 300, height: 180, strokeWidth: 0, stroke: "#e0e0e0"},
         init() {
            return {
               thanks: new fabric.Text("Thanks to _who['']our sponsors: ", {
                  left: 10,
                  top: 10,
                  fontSize: 20
               }),
               osfpgaImg: this.newImageFromURL("https://user-images.githubusercontent.com/64545984/131954393-6e21a24e-ee4e-44dc-b30f-2347c2229812.jpg", {
                  left: 80,
                  top: 50,
                  width: 100,
                  hieght: 30,
               }),
               gsocImg: this.newImageFromURL("https://upload.wikimedia.org/wikipedia/commons/0/08/GSoC_logo.svg", {
                  left: 190,
                  top: 40,
                  width: 80,
                  height: 80,
               })
            }
         },
         where: {_where}

// Defines constants to characterize the selected #_board.
\TLV board_defs(#_board)
   m4_nothing(
      m4_def(BOARD, ['#_board'])
      m4_def(BOARD_IMAGE_URL,  m4_echo(['M4_BOARD_']M4_BOARD['_IMAGE_URL']),
             BOARD_IMAGE_SIZE, m4_echo(['M4_BOARD_']M4_BOARD['_IMAGE_SIZE']),
             BOARD_FPGA_WHERE, m4_echo(['M4_BOARD_']M4_BOARD['_FPGA_WHERE']),
             BOARD_LED_CNT,    m4_echo(['M4_BOARD_']M4_BOARD['_LED_CNT']),
             BOARD_LED_WHERE,  m4_echo(['M4_BOARD_']M4_BOARD['_LED_WHERE']),
             BOARD_SSEG_CNT,   m4_echo(['M4_BOARD_']M4_BOARD['_SSEG_CNT']),
             BOARD_SSEG_WHERE, m4_echo(['M4_BOARD_']M4_BOARD['_SSEG_WHERE']),
             BOARD_SWITCH_CNT, m4_echo(['M4_BOARD_']M4_BOARD['_SWITCH_CNT']),
             BOARD_SWITCH_WHERE,m4_echo(['M4_BOARD_']M4_BOARD['_SWITCH_WHERE']),
             BOARD_PUSH_CNT,   m4_echo(['M4_BOARD_']M4_BOARD['_PUSH_CNT']),
             BOARD_PUSH_WHERE, m4_echo(['M4_BOARD_']M4_BOARD['_PUSH_WHERE']),
             BOARD_THANKS_ARGS,m4_echo(['M4_BOARD_']M4_BOARD['_THANKS_ARGS']),
             BOARD_LCD_WHERE, m4_echo(['M4_BOARD_']M4_BOARD['_LCD_WHERE'])             )
  )
   
   
\TLV fpga_leds(/_board, #_board, _sig_prefix)
   /led[m4_eval(M4_BOARD_LED_CNT - 1):0]
      $viz_lit = ['_sig_prefix']led[v_led];
      \viz_js
         box: {width: 12, height: 16, fill: M4_RED_LED_COLOR,
               rx: 4, ry: 5,
               strokeWidth: 0},
         layout: {left: -32},
         renderFill() {
            return '$viz_lit'.asBool(false) ? M4_RED_LED_COLOR : "transparent"
         },
         where: {M4_BOARD_LED_WHERE}

\TLV fpga_sseg(/_board, #_board, _sig_prefix)
   /digit[m4_eval(M4_BOARD_SSEG_CNT - 1):0]
      \viz_js
         all: {
            box: {
               fill: "#2a2a2a",
               strokeWidth: 0,
            }
         },
         box: {
            width: 35,
            height: m4_ifelse(#_board, 3, 47, #_board, 5, 47, 60),
            strokeWidth: 0,
         },
         layout: {left: -35},
         where: {M4_BOARD_SSEG_WHERE}
      /led[7:0]
         $viz_lit = (! ['_sig_prefix']sseg_digit_n[digit]) && ! ((v_led == 7) ? ['_sig_prefix']sseg_decimal_point_n : ['_sig_prefix']sseg_segment_n[v_led % 7]);
         \viz_js
            box: {left: 0, top: 0, strokeWidth: 0},
            init() {
               let led = this.getIndex()
               let digit = this.getIndex("digit")
               let squash = m4_ifelse(#_board, 3, 2.5, #_board, 5, 2.5, 0)
               let sseg = (this.getIndex() == 7) ? new fabric.Circle({
                     left: 26,
                     top: m4_ifelse(#_board, 3, 37, #_board, 5, 37, 48),
                     radius: 2.5,
                     opacity: 1,
                     fill: M4_OFF_SEGMENT_COLOR
                  })
                  :
                  new fabric.Rect({
                     top: 15 + ((led == 1 || led == 5) ? -4 - squash : (led == 2 || led == 4) ? 16 - 3*squash : (led == 3) ? 31 - 4*squash : (led == 6) ? 11 - 2*squash : -9),
                     left: 10 + ((led == 6) ? -1 : (led == 5) ? 13 : (led == 4) ? 11 : (led == 3) ? -3 : (led == 2) ? -8 : (led == 1) ? -6 : 1),
                     width: ((led == 6) || (led == 3) || (led == 0)) ? 13 : 4,
                     height: ((led == 5) || (led == 4) || (led == 2) || (led == 1)) ? 14 : 4,
                     fill: M4_OFF_SEGMENT_COLOR,
                     skewX: ((led == 5) || (led == 4) || (led == 2) || (led == 1)) ? -7 : 0,
                     opacity: 1
                  })
               return{sseg};
            },
            render() {
               debugger
               let digit = this.getIndex("digit")
               let segment = this.getIndex()
               let digit_selected = (((this.sigVal("sseg_digit_n").asInt() >> digit) & 1) == 0)
               this.getObjects().sseg.set({fill: '$viz_lit'.asBool() ? M4_RED_SEGMENT_COLOR : M4_OFF_SEGMENT_COLOR})
            },
            layout: {left: 0, top: 0}
            
\TLV fpga_switch(/_board, #_board, _sig_prefix)
   /switch[m4_eval(M4_BOARD_SWITCH_CNT - 1):0]
      \viz_js
         box: { width: 18, height: 35, strokeWidth: 0, fill: "#7f8b55"},
         where: {M4_BOARD_SWITCH_WHERE},
         init() {
            let box = new fabric.Rect({
                        top: 5,
                        left: 3 ,
                        width: 12, 
                        height: 26, 
                        fill: "#EEEEEE",
                        rx:2,
                        ry:2
                     })
             let state = new fabric.Rect({
                        top: 18,
                        left: 2 ,
                        width: 15, 
                        height: 15, 
                        fill: "#423F3E",
                        rx:2,
                        ry:2
               })
              return{box, state}
         },
         render(){
            debugger
            var mod = (((this.sigVal("switch").asInt() >> this.getScope("switch").index) & 1) == 1);
            this.getInitObject("state").set(mod ? {top: 3} : {top: 18});
         }
         
\TLV fpga_push(/_board, #_board, _sig_prefix)
   |fpga_push_macro
      @0
         m4_ifelse_block(M4_MAKERCHIP, 1, ['
         $pb[\$size(*push)-1:0] = *push;
         m4_ifelse_block(M4_BOARD, 1,['
         /pb[4:0]
            \viz_alpha
               initEach(){
                  let push = new fabric.Circle({
                           originX: "center",
                           originY: "center",
                           top: scopes.pb.index == 0 ? 218 : scopes.pb.index == 1 ? 292 : 254,
                           left: scopes.pb.index == 2 ? 211 : scopes.pb.index == 3 ? 307 : 259,
                           radius: 10,
                           opacity: 1,
                           fill: M4_RED_LED_COLOR
                        }) 
                  return {objects:{push}}
               },
               renderEach(){
                  var mod = ((('/_board|fpga_push_macro$pb'.asInt(-1) >> this.getScope("pb").index) & 1) == 1);
                  if(mod){
                     this.getInitObjects().push.set({fill: M4_RED_LED_COLOR})
                  }else{
                     this.getInitObjects().push.set({fill: "black"})
                  }
               }
         '],['
         m4_ifelse_block(M4_BOARD, 2,['
         /pb[4:0]
            \viz_js
               init(){
                  let push = new fabric.Circle({
                           originX: "center",
                           originY: "center",
                           top: scopes.pb.index == 0 ? 40 : scopes.pb.index == 1 ? 121 : 79,
                           left: scopes.pb.index == 2 ? 113 : scopes.pb.index == 3 ? 203 : 155,
                           radius: 10,
                           opacity: 1,
                           fill: M4_RED_LED_COLOR
                        }) 
                  return {objects:{push}}
               },
               render(){
                  var mod = ((('/_board|fpga_push_macro$pb'.asInt(-1) >> this.getScope("pb").index) & 1) == 1);
                  if(mod){
                     this.getInitObjects().push.set({fill: M4_RED_LED_COLOR})
                  }else{
                     this.getInitObjects().push.set({fill: "black"})
                  }
               }
         '],['
         m4_ifelse_block(M4_BOARD, 3,['
         /pb[4:0]
            \viz_alpha
               initEach(){
                  let push = new fabric.Circle({
                           originX: "center",
                           originY: "center",
                           top: scopes.pb.index == 0 ? 27 : scopes.pb.index == 1 ? 81 : 54,
                           left: scopes.pb.index == 2 ? 65 : scopes.pb.index == 3 ? 130 : 98,
                           radius: 7,
                           opacity: 1,
                           fill: M4_RED_LED_COLOR
                        }) 
                  return {objects:{push}}
               },
               renderEach(){
                  var mod = ((('/_board|fpga_push_macro$pb'.asInt(-1) >> this.getScope("pb").index) & 1) == 1);
                  if(mod){
                     this.getInitObjects().push.set({fill: M4_RED_LED_COLOR})
                  }else{
                     this.getInitObjects().push.set({fill: "black"})
                  }
               }
         '],['
         m4_ifelse_block(M4_BOARD, 4,['
         /pb[2:0]
            \viz_alpha
               initEach(){
                  let push = new fabric.Circle({
                           originX: "center",
                           originY: "center",
                           top: 240,
                           left: scopes.pb.index == 2 ? -175 : scopes.pb.index == 1 ? -128 : -80,
                           radius: 10,
                           opacity: 1,
                           fill: M4_RED_LED_COLOR
                        }) 
                  return {objects:{push}}
               },
               renderEach(){
                  var mod = ((('/_board|fpga_push_macro$pb'.asInt(-1) >> this.getScope("pb").index) & 1) == 1);
                  if(mod){
                     this.getInitObjects().push.set({fill: M4_RED_LED_COLOR})
                  }else{
                     this.getInitObjects().push.set({fill: "black"})
                  }
               }
         '],['
         m4_ifelse_block(M4_BOARD, 5,['
         /pb[4:0]
            \viz_alpha
               initEach(){
                  let push = new fabric.Circle({
                           originX: "center",
                           originY: "center",
                           top: scopes.pb.index == 0 ? 24 : scopes.pb.index == 1 ? 84 : 54,
                           left: scopes.pb.index == 2 ? 89 : scopes.pb.index == 3 ? 150 : 120,
                           radius: 5,
                           opacity: 1,
                           fill: M4_RED_LED_COLOR
                        }) 
                  return {objects:{push}}
               },
               renderEach(){
                  var mod = ((('/_board|fpga_push_macro$pb'.asInt(-1) >> this.getScope("pb").index) & 1) == 1);
                  if(mod){
                     this.getInitObjects().push.set({fill: M4_RED_LED_COLOR})
                  }else{
                     this.getInitObjects().push.set({fill: "black"})
                  }
               }
         '])
         '])
         '])
         '])
         '])
         '])
\TLV fpga_led_rgb(/_board, |_pipe, @_stage, $_dutyr, $_dutyg, $_dutyb)
   |_pipe
      @_stage
         /led[4:0]
            \viz_alpha
               initEach() {
                  let led = new fabric.Rect({
                        top: (this.getIndex() == 1) ? 166 : (this.getIndex() == 2) ? 208 : 188,
                        left: (this.getIndex() == 3) ? -112 : (this.getIndex() == 4) ?  -153 : -132,
                        width: 8, 
                        height: 7, 
                        fill: "transparent",
                        opacity: 1
                     })
                  return{objects : {led}}; 
               }, 
               renderEach() {
                     let r = '/_board|_pipe$_dutyr'.asInt()
                     let g = '/_board|_pipe$_dutyg'.asInt()
                     let b = '/_board|_pipe$_dutyb'.asInt()
                     let value = "rgb(" + r + "," + g + "," + b + ")"
                     this.getInitObjects().led.set({fill: value})
                     //this.getInitObjects().g.set({opacity: g})
                     //this.getInitObjects().b.set({opacity: b})
                     //var mod = ((('/_board|_pipe$leds'.asInt(-1) >> this.getScope("led").index) & 1) == 1);
                     //this.getInitObject("led").set(mod ? {opacity: 1} : {opacity: 0});
                  } 
  
\TLV fpga_lcd(/_board, #_board, _sig_prefix)
   //for viz part
   |fpga_lcd_macro
      @0
         m4_ifelse_block(M4_MAKERCHIP, 1, ['
         $reset = *reset;
         $out[\$size(*out)-1:0] = *out;
         $lcd_enable = *lcd_enable;
         $lcd_reset = *lcd_reset;
         // This code supports only 8 bit mode (4 bit mode not supported)
         $one_or_two[1:0] = $reset ? 0 : $out == 8'h38 ? 2 : $out == 8'h30 ? 1 : >>1$one_or_two;    // 1-line mode or 2-line mode
         $line[1:0] = $reset ? 0 : $lcd_reset == 0 ? ($out == 8'h80 | $out == 8'h01 |$out == 8'h02) & !$one_or_two == 0 ? 1 : 
                      $out == 8'hC0 & $one_or_two == 2 ? 2 :
                      $RETAIN: 
                      $RETAIN;    // assign line number
         $inc_or_dec[1:0] = $reset ? 0 : $out == 8'h06 ? 1 : 
                            $out == 8'h04 ? 2 : 
                            >>1$inc_or_dec;    // increment or decrement cursor command
         $read_enable = $lcd_enable == 1 && >>1$lcd_enable == 0;
         $shift_left[5:0] = $reset | >>1$shift_left == 40 ? 0 : 
                            ($out == 8'h18 & !$lcd_reset & $read_enable ? >>1$shift_left + 1 : 
                            $RETAIN);          // no of shift lefts
         $shift_right[5:0] = $reset | >>1$shift_right == 40 ? 0 : 
                             ($out == 8'h1C & $lcd_reset == 0 & $read_enable ? >>1$shift_right + 1 : 
                             $RETAIN);         // no of shift rights
         $wr_index1[6:0] = (($reset | $out == 8'h01 | $out == 8'h80) & $lcd_reset == 0) ? 0 : 
                             $read_enable && $line == 1 && $lcd_reset == 0 ? ($out == 8'h14 ? >>1$wr_index1 + 1 : 
                            ($out == 8'h10 ? >>1$wr_index1 - 1 : $RETAIN)) : 
                             $read_enable && $line == 1 && $lcd_reset == 1 ? ($inc_or_dec == 1 ? >>1$wr_index1 + 1 : 
                             $inc_or_dec == 2 ? >>1$wr_index1 - 1 : >>1$wr_index1) : 
                             >>1$wr_index1;    // cursor index if line 1
         $wr_index2[5:0] = (($reset | $out == 8'h01 | $out == 8'hC0) & $lcd_reset == 0) ? 0 : 
                             $read_enable && $line == 2 && $lcd_reset == 0 ? ($out == 8'h14 ? >>1$wr_index2 + 1 : 
                            ($out == 8'h10 ? >>1$wr_index2 - 1 : $RETAIN)) : 
                             $read_enable && $line == 2 && $lcd_reset == 1 ? ($inc_or_dec == 1 ? >>1$wr_index2 + 1 : 
                             $inc_or_dec == 2 ? >>1$wr_index2 - 1 : >>1$wr_index2) : 
                             >>1$wr_index2;    // cursor index if line 2
         /chars1[40-1:0]
            $char1[7:0] = |fpga_lcd_macro$out == 8'h01 & |fpga_lcd_macro$lcd_reset == 0 ? 8'h20 : 
                          |fpga_lcd_macro>>1$wr_index1 == #chars1 && |fpga_lcd_macro$line == 1 && |fpga_lcd_macro$read_enable && |fpga_lcd_macro$lcd_reset == 1 ? |fpga_lcd_macro$out : 
                          $RETAIN;
         /chars2[40-1:0]
            $char2[7:0] = |fpga_lcd_macro$out == 8'h01 & |fpga_lcd_macro$lcd_reset == 0 ? 8'h20 : 
                          ((|fpga_lcd_macro>>1$wr_index2 == #chars2 && |fpga_lcd_macro$line == 2) | (|fpga_lcd_macro>>1$wr_index1 - 40 == #chars2 && |fpga_lcd_macro$line == 1)) && |fpga_lcd_macro$read_enable && |fpga_lcd_macro$lcd_reset == 1 ? |fpga_lcd_macro$out : 
                          $RETAIN;
         $str1[8*16-1:0] = (/chars1[*]$char1 >> 8*$shift_left) << 8*$shift_right;
         $str2[8*16-1:0] = (/chars2[*]$char2 >> 8*$shift_left) << 8*$shift_right;
         \viz_alpha
            initEach() {
                  let block_square = new fabric.Rect(
                     {originX: "center",
                      originY: "center",
                      fill : "transparent"
                     }
                  )
                  let logic_block = new fabric.Group([block_square],
                  {originX: "center",
                   originY: "center",
                  })
                  let lcd_img_url = "https://user-images.githubusercontent.com/64545984/130668318-5d9c4c9a-d19e-4ddf-aa61-13e4e8624f9c.png"
                  let lcd_img = new fabric.Image.fromURL(
                        lcd_img_url,
                        function (img) {
                           logic_block.add(img)
                           global.canvas.renderAll()
                        },
                        {originX: "center",
                         originY: "center",
                         left: -35,
                         top: 320,
                         scaleX: 0.2,
                         scaleY: 0.2,
                         angle: 0.4
                        }
                     )
                    let lcd = new fabric.Rect({
                        top: 280,
                        left: -165,
                        width: 295,
                        height: 80,
                        fill: "#FDFF32",
                        opacity: 1
                     })
                     let line1 = new fabric.Text("", {
                       left: -160,
                       top: 290,
                       fontSize: 30,
                       fontFamily: "Courier New",
                     })
                     let line2 = new fabric.Text("", {
                       left: -160,
                       top: 320,
                       fontSize: 30,
                       fontFamily: "Courier New",
                     })
                     let info = new fabric.Text("", {
                       left: -300,
                       top: -250,
                       fontSize: 15,
                       fontFamily: "Courier New",
                     })
                return {objects :{logic_block, lcd, line1, line2, info}};
                },
             renderEach(){
                 let str1 = '/_board|fpga_lcd_macro$str1'.asString().split("").reverse().join("")
                 let str2 = '/_board|fpga_lcd_macro$str2'.asString().split("").reverse().join("")
                 let lcd_rst = '/_board|fpga_lcd_macro$lcd_reset'.asBool()
                 this.getInitObjects().line1.set({text: str1})
                 this.getInitObjects().line2.set({text: str2})
                 let value_bin = '/_board|fpga_lcd_macro$out'.asBinaryStr();
                 if(!lcd_rst){
                 if (value_bin == "00111000"){
                    //8'h38
                    //Function Set: 8-bit, 2 Line, 5x7 Dots
                    this.getInitObjects().info.set({text: "Function Set: 8-bit, 2 Line, 5x7 Dots"})
                 }else if (value_bin == "00110000"){
                    //Function Set: 8-bit,  Line, 5x7 Dots
                    //8'h30
                    this.getInitObjects().info.set({text: "Function Set: 8-bit, 1 Line, 5x7 Dots"})
                 }else if (value_bin == "00001100"){
                    //Display on Cursor off
                    //8'h0C
                    this.getInitObjects().info.set({text: "Display on Cursor off"})
                 }else if (value_bin == "00000110"){
                    //Entry Mode
                    //8'h06
                    this.getInitObjects().info.set({text: "Entry Mode: Increment, entire shift off"})
                 }else if (value_bin == "00000100"){
                    //Entry Mode
                    //8'h04
                    this.getInitObjects().info.set({text: "Entry Mode: Decrement, entire shift off"})
                 }else if (value_bin == "00000001"){
                    //Clear Display
                    //8'h01
                    this.getInitObjects().info.set({text: "Clear Display"})
                 }else if (value_bin == "00000010"){
                    //Return home
                    //8'h02
                    this.getInitObjects().info.set({text: "Return home"})
                 }else if (value_bin == "10000000"){
                    //force cursor to begin at first line
                    //8'h80
                    this.getInitObjects().info.set({text: "force cursor to begin at first line"})
                 }else if (value_bin == "11000000"){
                    //force cursor to begin at second line
                    //8'hC0
                    this.getInitObjects().info.set({text: "force cursor to begin at second line"})
                 }else if (value_bin == "00011000"){
                    //Shift display left
                    //8'h18
                    this.getInitObjects().info.set({text: "Shift entire display to the left"})
                 }else if (value_bin == "00011100"){
                    //Shift display right
                    //8'h1C
                    this.getInitObjects().info.set({text: "Shift entire display to the right"})
                 }else if (value_bin == "00010000"){
                    //Shift cursor left 
                    //8'h10
                    this.getInitObjects().info.set({text: "Shift cursor to the left"})
                 }else if (value_bin == "00010100"){
                    //Shift cursor right
                    //8'h14
                    this.getInitObjects().info.set({text: "Shift cursor to the right"})
                 }
              }else {
                 this.getInitObjects().info.set({text: "data instruction"})
              }
             }
          
         '],
         ['
         ']
         )
\TLV fpga_vga(/_board, #_board, _sig_prefix)
   |vga_pipe_macro
      @0
         m4_ifelse_block(M4_MAKERCHIP, 1,['
         $reset = *reset;
         $vga_hsync = *vga_hsync;
         $vga_vsync = *vga_vsync;
         $vga_r[\$size(*vga_r)-1:0] = *vga_r;
         $vga_g[\$size(*vga_g)-1:0] = *vga_g;
         $vga_b[\$size(*vga_b)-1:0] = *vga_b;
         $sx[\$size(*sx)-1:0] = *sx;
         $sy[\$size(*sy)-1:0] = *sy;
         m4_define(M4_MAX_H, 640 / M4_COUNTER)
         m4_define(M4_MAX_V, 480 / M4_COUNTER)
         $hori_counter[9:0] = $reset ? 10'b0 : >>1$sx >= M4_LINE ? 0 : >>1$hori_counter + 1;
         $vert_counter[9:0] = $reset ? 10'b0 : $sy == 0 ? 0 : >>1$sx >=  M4_LINE ? >>1$vert_counter + 1 : $RETAIN;
         $width[9:0] = (800 % M4_COUNTER) > 0 ? 800 / M4_COUNTER + 2 : 800 / M4_COUNTER + 1;
         $height[9:0] = (525 % M4_COUNTER) > 0 ? 525 / M4_COUNTER + 2 : 525 / M4_COUNTER + 1;
         $tot_cyc[19:0] = $width * $height;
         *passed = !clk || *cyc_cnt > ($tot_cyc * M4_FRAMES) - 1;
         *failed = !clk || 1'b0;
         \viz_alpha
            initEach(){
            // https://www.google.com/search?q=monitor&tbm=isch&tbs=il:cl&client=ubuntu&hs=JlM&hl=en&sa=X&ved=0CAAQ1vwEahcKEwjgkNDes_DxAhUAAAAAHQAAAAAQAg&biw=1846&bih=978#imgrc=q9qZvDIpiEqJBM
                  let monitor_img_url = "https://user-images.githubusercontent.com/64545984/130668406-24040e0c-cdff-4672-8818-bbb84d8041a5.png"
                  let monitor_img = new fabric.Image.fromURL(
                        monitor_img_url,
                        function (img) {
                           global.canvas.add(img)
                           global.canvas.renderAll()
                        },
                        {originX: "center",
                         originY: "center",
                         left: 216,
                         top: -150,
                         scaleX: 0.606,
                         scaleY: 0.72,
                         angle: 0
                        }
                     )
               let frame = new fabric.Text("", {
                 left: -330,
                 top: -300,
                 fontSize: 20,
                 fontFamily: "Courier New",
               })
               let hsync = new fabric.Text("hsync:", {
                 left: -200,
                 top: -300,
                 fontSize: 20,
                 fontFamily: "Courier New",
               })
               let vsync = new fabric.Text("vsync:", {
                 left: -80,
                 top: -300,
                 fontSize: 20,
                 fontFamily: "Courier New",
               })
               let row_pointer = new fabric.Text("->", {
                     top: -270,
                     left: 75,
                     fill: "black",
                     fontSize: 14,
                     fontFamily: "monospace"
                  })
               let column_pointer = new fabric.Text("->", {
                     top: - 300,
                     left: 110,
                     fill: "black",
                     angle: 90,
                     fontSize: 14,
                     fontFamily: "monospace"
                  })
               return {objects: {frame, hsync, vsync, row_pointer, column_pointer}}
            },
            renderEach(){
               let hori_cnt_now = '/_board|vga_pipe_macro$hori_counter'.asInt() - 1
               let vert_cnt_now = '/_board|vga_pipe_macro$vert_counter'.asInt()
               let vga_hsync = '/_board|vga_pipe_macro$vga_hsync'.asInt()
               let vga_vsync = '/_board|vga_pipe_macro$vga_vsync'.asInt()
               let width = '/_board|vga_pipe_macro$width'.asInt()
               let height = '/_board|vga_pipe_macro$height'.asInt()
               let cycle = '/_board|vga_pipe_macro$hori_counter'.getCycle()
               let count = '/_board|vga_pipe_macro$tot_cyc'.asInt()
               let frame = parseInt(cycle / count)
               console.log("hori", hori_cnt_now)
               let sq_width = Math.sqrt(40000 / (M4_MAX_H * M4_MAX_V))
               this.getInitObjects().frame.set({text: "Frame: " + (frame + 1)})
               this.getInitObjects().hsync.set({text: "hsync: " + vga_hsync})
               this.getInitObjects().vsync.set({text: "vsync: " + vga_vsync})
               if (vert_cnt_now < M4_MAX_V){
               this.getInitObjects().row_pointer.set({top:-270 + (sq_width * vert_cnt_now), opacity : 1})
               }else{
               this.getInitObjects().column_pointer.set({opacity : 0})
               }
               if (hori_cnt_now < M4_MAX_H){
               this.getInitObjects().column_pointer.set({left:110 + (sq_width * hori_cnt_now), opacity: 1})
               }else{
               this.getInitObjects().column_pointer.set({opacity : 0})
               }
               for(j=0; j<M4_MAX_H; j++){
                   for(k=0; k<M4_MAX_V; k++){
                      let grid = new fabric.Rect({
                      top: (sq_width * k) - 269,
                      left: (sq_width * j) + 100,
                      width: sq_width,
                      height: sq_width,
                      fill:"black"
                   })
                   i = k * width + j
                   if(frame)
                     {
                     let red = '/_board|vga_pipe_macro$vga_r'.goTo(((frame-1) * count)+i).asBinaryStr()
                     red = red.concat(red)
                     red = parseInt(red, 2);
                     let green = '/_board|vga_pipe_macro$vga_g'.goTo(((frame-1) * count)+i).asBinaryStr()
                     green = green.concat(green)
                     green = parseInt(green, 2);
                     let blue = '/_board|vga_pipe_macro$vga_b'.goTo(((frame-1) * count)+i).asBinaryStr()
                     blue = blue.concat(blue)
                     blue = parseInt(blue, 2);
                     let color = "rgb(" + red + "," + green + "," + blue + ")"
                     grid.set({fill:color, stroke:color, strokeWidth:1})
                   }
                     let red = '/_board|vga_pipe_macro$vga_r'.goTo(((frame) * count) + i).asBinaryStr()
                     red = red.concat(red)
                     red = parseInt(red, 2);
                     let green = '/_board|vga_pipe_macro$vga_g'.goTo(((frame) * count) + i).asBinaryStr()
                     green = green.concat(green)
                     green = parseInt(green, 2);
                     let blue = '/_board|vga_pipe_macro$vga_b'.goTo(((frame) * count) + i).asBinaryStr()
                     blue = blue.concat(blue)
                     blue = parseInt(blue, 2);
                     color = "rgb(" + red + "," + green + "," + blue + ")"
                   if(k<vert_cnt_now){
                     grid.set({fill:color, stroke:color, strokeWidth:1})
                   }else if(k==vert_cnt_now){
                      if(j<=hori_cnt_now){
                         grid.set({fill:color, stroke:color, strokeWidth:1})
                      }
                   }
                   global.canvas.add(grid)
                   }
                }
            }
         ']
         )
\TLV fpga_viz(/_board, /_fpga, #_board)
   m4+board(/_board, /_fpga, #_board)   

\TLV simple_main()
   \SV_plus
    
      logic[15:0] led_n;
      assign led = ~led_n;
    
      always_ff @(posedge clk) begin
         // LEDs
         led_n <= reset ? 0 : led_n + 1;
    
         // 7-segment display (if present)
         sseg_digit_n = ~(4'b1 << (led[2] ? led[1:0] : 3 - led[1:0]));
         sseg_segment_n = ~(7'b1 << (led[2] ? 3 : 0));
         sseg_decimal_point_n = 1'b1;
      end
   
   *passed = *cyc_cnt > 30;
   
\TLV riscv_main()
   \SV_plus
    
    
    always_ff @(posedge clk) begin
    
       // LEDs
       led <= $cpu_out; //reset ? 0 : led + 1;
    
       // 7-segment display (if present)
       sseg_digit_n = ~ (4'b1 << *cyc_cnt[1:0]);
       sseg_segment_n = 7'b1111111;
       sseg_decimal_point_n = 1'b0;
    
    end
    
    
   
   /fpga
      m4_def(NUM_CORES, 1)
      m4+cpu(/fpga)
   /* verilator lint_off WIDTH */
   |led_pipe
      @0
         m4+fpga_refresh($refresh, m4_ifelse(M4_MAKERCHIP, 1, 1, 50000000)) 
         $reset = *reset;
         ?$refresh
            $Leds[15:0] <= $reset ? 1 : $Leds + 1;
         //*led = $Leds;


   *passed = *cyc_cnt > 60;
   $cpu_out[31:0] = /fpga|fetch/instr/regs[3]>>4$value;
