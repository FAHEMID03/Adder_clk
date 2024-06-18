`include"package.sv"
class base_test extends uvm_test;
  env env_o;
  base_seq bseq;
  `uvm_object_utils(base_test);
  function new(string name="base_test"uvm object parent=null);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.new build_phase(phase);
    env_0=env::type_id::create("env_o",this);
  endfunction
  function run_phase(uvm_phase phase);
    phase.raise_objection(this);
    bseq=bseq::type_id::create("bseq",this);
    repet(10)begin
      #5;bseq.start(env_o.agt.seqr);
    end
    phase.drop_objection(this);
    `uvm_info(get_type_name,"End_of_testcase",UVM_LOW);
    endtask
    endclass
