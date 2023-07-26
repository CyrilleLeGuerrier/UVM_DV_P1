// Write a code to change the verbosity of the entire verification environment to UVM_DEBUG. To demonstrate successful configuration, print the value of the verbosity level on the console.

module uvm_tb_top;


  `include "uvm_macros.svh"
  import uvm_pkg::*;
  
  initial 
    begin
      $display("Default Verbosity level : %0d ", uvm_top.get_report_verbosity_level);
      // get_report_verbosity_level
      // Gets the verbosity level in effect for this object.  
      // Reports issued with verbosity greater than this will be filtered out.
      uvm_top.set_report_verbosity_level(UVM_DEBUG);
      // This method sets the maximum verbosity level for reports for this component.  Any report from this component whose verbosity exceeds this maximum will be ignored.
      $display("Current Verbosity level : %0d ", uvm_top.get_report_verbosity_level);
  	end
  
  
endmodule
