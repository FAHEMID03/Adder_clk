
module_Tb_top;
bit clk;
bit reset;
always #clk =~clk;
initial begin
// clk=0
reset=1;
#5
reset=0;
end
adder_if vif(clk,reset);
adder DUT(.clk(vif.clk),.reset(vif.reset),.in1(vif.ip1),.in2(vif.ip2))
initial begin
uvm_config_db#(virtual.add_if):: set(uvm_root::get(),"*","vif",vif);
end
initial begin
run_test("base_test");
end
endmodule
