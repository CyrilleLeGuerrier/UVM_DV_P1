module uvm_tb_top;


  `include "uvm_macros.svh"
  import uvm_pkg::*;
  
  initial 
    begin
      $display("Default Verbosity level : %0d ", uvm_top.get_report_verbosity_level);
      uvm_top.set_report_verbosity_level(UVM_DEBUG);
      $display("Current Verbosity level : %0d ", uvm_top.get_report_verbosity_level);
  	end
  
  
endmodule
