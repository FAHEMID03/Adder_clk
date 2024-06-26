# Adder_clk
Adder_Clk  for Design and Verification
**Design For Adder_clk.
Adder Design**
Adder design produces the resultant addition of two variables on the positive edge of the clock. A reset signal is used to clear out signal.
Note: Adder can be easily developed with combinational logic. A clock and reset are introduced to have the flavour of a clock and reset in testbench code.

Make a verification Plan for Adder

**Testbench Top**
The testbench top is a static container that has an instantiation of DUT and interfaces.

****Enviorment**
An environment provides a container for agents, scoreboards, and other verification components.

**Agent**
An agent is a container that holds and connects the driver, monitor, and sequencer instances.

**Sequence Item**
The sequence item class contains necessary stimulus generation data members.

**Sequence**
The sequence creates the stimus and drives them to the driver via sequencer.

**Driver**
The driver drives randomized transactions or sequence items to DUT as a pin-level activity using an interface.

**Monitor**
A UVM monitor is a passive component used to capture DUT signals using a virtual interface and translate them into a sequence item format.

**Scoreboard**
The UVM scoreboard is a component that checks the functionality of the DUT. It receives transactions from the monitor using the analysis export for checking purposes.

**Test**
The test is at the top of the hierarchical component that initiates the environment component construction.

**Interface**
The interface is at to communicate with use to initiate the dut and ENV
** package** 
 Include all the TB inviorment file into package .



