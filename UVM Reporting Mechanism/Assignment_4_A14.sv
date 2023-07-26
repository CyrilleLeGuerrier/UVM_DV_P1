// Code your testbench here
// or browse Examples

`include "uvm_macros.svh"
import uvm_pkg::*;

class component extends uvm_component;
  `uvm_component_utils(component)
  
  function new(string path , uvm_component parent);
    super.new(path, parent);
  endfunction
 
  
  task run();
    `uvm_info("CMP1", "Executed CMP1 Code", UVM_DEBUG);
    `uvm_info("CMP2", "Executed CMP2 Code", UVM_DEBUG);
  endtask
  
endclass

module uvm_tb_top();
  
  component component_instance;
  
  initial
    begin
      component_instance = new("COMPONENT", null);
      component_instance.set_report_id_verbosity("CMP1",UVM_DEBUG);
      component_instance.run();
    end
  
endmodule
