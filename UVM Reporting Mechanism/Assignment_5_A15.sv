// Exit Simulation with UVM_WARNING

`include "uvm_macros.svh"
import uvm_pkg::*;
 
//////////////////////////////////////////////////
class a extends uvm_component;
  `uvm_component_utils(a)
  
  function new(string path , uvm_component parent);
    super.new(path, parent);
  endfunction
 
 
  
  
  task run();
    /////////////////add four independent warning messages in this task(Main task)
    ////////////Add ID as "a" and Messages as Warning 1, Warning 2, Warning 3 and Warning 4
    ////////////Send the warning message one after another starting from warning 1 at an interval of 10 ns (warning 1 must trigger at 0 ns , warning 2 must trigger at 10 ns and so on)
    
    `uvm_warning("a", "Warning 1");
    #10;
    `uvm_warning("a", "Warning 2");
    #10;
    `uvm_warning("a", "Warning 3");
    #10;
    `uvm_warning("a", "Warning 4");
    
  endtask
  
 
  
endclass
 
/////////////////////////////////////////////
 
 
module tb;
 
///////////// Add a code to execute main task of a
//////////// Override the behavior of the UVM_WARNING such that it should be counted in UVM_QUIT COUNT
////////Set the quit count threshold to be 4
  a a_inst;

  initial
    begin
      a_inst = new("A", null);
      a_inst.set_report_max_quit_count(4);
      a_inst.set_report_severity_action(UVM_WARNING, UVM_DISPLAY | UVM_COUNT);
      
      a_inst.run();
    end
  
endmodule
