module uvm_tb_top;
  
  
  initial 
    begin
    
      uvm_top.set_report_max_quit_count(4);
      uvm_top.set_report_severity_action(UVM_WARNING, UVM_DISPLAY | UVM_COUNT);
      `uvm_warning("uvm_tb_top_module", "Potential Error1");
      `uvm_warning("uvm_tb_top_module", "Potential Error2");
      `uvm_warning("uvm_tb_top_module", "Potential Error3");
      `uvm_warning("uvm_tb_top_module", "Potential Error4");

    end
  
endmodule
