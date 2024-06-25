class seq_item extends uvm_seq_item;
  rand bit [7:0]ip1, ip2;
  bit[8:0];
  function new(string name="seq_item");
    super.new(name);
  endfunction
  `uvm_object_utils_begin(seq_item)
  `uvm_field_int(ip1,UVM_ALL_ON)
  `uvm_field_int(ip2,UVM_ALL_ON)
  constraint ip_c{ ip1 < ip2; ip2 < 100;}
endclass
