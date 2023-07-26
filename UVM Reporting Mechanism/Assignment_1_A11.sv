module uvm_tb_top ();
  
  import uvm_pkg::*; // Imports the UVM package (uvm_pkg)
  `include "uvm_macros.svh" // Includes the UVM macros (uvm_macros)

  
	initial
    	begin
	  // UVM_DISPLAY: output to the screen
	  // The default actions assigned to uvm_info severity. 
          // UVM_INFO -       UVM_DISPLAY
          `uvm_info("uvm_tb_top_module", "First RTL : Your_System_Name", UVM_NONE); // ID, message, verbosity
    	end
  
endmodule
