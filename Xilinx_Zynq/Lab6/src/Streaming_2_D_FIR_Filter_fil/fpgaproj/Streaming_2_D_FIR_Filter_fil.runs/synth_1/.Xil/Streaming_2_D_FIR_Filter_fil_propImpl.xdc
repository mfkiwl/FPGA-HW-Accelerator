set_property SRC_FILE_INFO {cfile:D:/HDA/2_sem/DesignAndTestOfMicroelectronics/Lab/Lab3/Streaming_2_D_FIR_Filter_fil/filsrc/Streaming_2_D_FIR_Filter_fil.xdc rfile:../../../../filsrc/Streaming_2_D_FIR_Filter_fil.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y9 [get_ports sysclk]
set_property src_info {type:XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN P16 [get_ports sysrst]
set_property src_info {type:XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out1_clk_wiz_0] -to [get_clocks TCK]
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks TCK] -to [get_clocks clk_out1_clk_wiz_0]