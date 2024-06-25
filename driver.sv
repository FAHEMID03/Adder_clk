class driver extends uvm_driver#(seq_item);
  virtual add_if vif;
  `uvm_component_utils(driver)
  function new(string name ="driver"uvm_component parent=null);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual.add_if)::get(this,"","vif",vif))
      `uvm_fatal(get_type_name(),"NOT SET AT TOP LEVEL");
  endfunction  

  task run_phase(uvm_phase phase)
    forever begin
      seq_item_port.get_next_item(req);
      `uvm_info(get_type_name,$sformartf("ip1=%0d,ip2=%0d",req.ip1,req.ip2),UVM_LOW)
      vif.ip1 <= req.ip1;
      vif.ip2 <= req.ip2;
      seq_item_port.item_done();
    end
  endtask
endclass
