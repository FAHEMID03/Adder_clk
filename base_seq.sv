class base_seqs extend uvm_sequences#(seq_item);
  seq_item req;
  `uvm_object_utils("base_seqs");  
  function new(string name="base_seqs"uvm object parent=null);
    super.new(name);
  endfunction

  task body();
    `uvm_info(get_type_name(),"Base_seq:Insides Body",UVM_LOW);
    `uvm_do(req);
  endtask
endclass
  
