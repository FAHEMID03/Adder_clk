class scoreboard extends uvm_scoreboard;
  uvm_analysis_imp#(seq_item,scoreboard) item_collect_export;
  seq_item item_q[$];
  `uvm_component_utils(scoreboard)
  
  function new(string name= "scoreboard"uvm_component parent= null);
    super.new(name, parent);
    item_collect_export = new("item_collect_export",this);
  endfunction

  function viod build_phase(uvm_phase phase);
    super. build_phase(phase)
    endfunction
  function void write(seq_item req);
    item_q.push_back(req);
  endfunction
  task run_phase(uvm_phase phase)
    seq_item sb_item;
    forever begin
      wait(item_q.size > 0);
      if(item_q.size > 0)begin
        sb_item =item_q.pop_front();
        $display("....................................................................");
        if(sb_item.ip1+sb_item.ip2==sb_item.out)begin
          `uvm_info(get_type_name,$sformartf("Matched:ip1=%0d,ip2=%0d,out=%0d",sb_item.ip1,sb_item.ip2,sb_item.out),UVMLOW);
        end
        else
          `uvm_error(get_name,$sformartf("NOT Matched: ip1=%0d,ip2=%0d,out=%0d",sb_item.ip1,sb_item.ip2,sb_item.out));
        $display("......................................................................");
      end
      end
      endtask
endclass
          
