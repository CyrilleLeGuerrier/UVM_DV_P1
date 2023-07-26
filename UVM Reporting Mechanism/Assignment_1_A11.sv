module uvm_tb_top ();
  
  import uvm_pkg::*; // Imports the UVM package (uvm_pkg)
  `include "uvm_macros.svh" // Includes the UVM macros (uvm_macros)

  
	initial
    	begin
          `uvm_info("uvm_tb_top_module", "First RTL : Your_System_Name", UVM_NONE); // ID, message, verbosity
    	end
  
endmodule
