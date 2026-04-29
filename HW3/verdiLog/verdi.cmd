verdiSetActWin -dock widgetDock_<Decl._Tree>
debImport "-f" "flist.f"
nsMsgSwitchTab -tab general
debLoadSimResult /home/st81/HW3/waves.fsdb
wvCreateWindow
nsMsgSwitchTab -tab cmpl
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcSignalView -on
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "adder_tb.sum"
srcSignalViewSelect "adder_tb.in1" "adder_tb.in2" "adder_tb.sum"
srcSignalViewSelect "adder_tb.reset" "adder_tb.in1" "adder_tb.in2" "adder_tb.sum"
srcSignalViewSelect "adder_tb.clk" "adder_tb.reset" "adder_tb.in1" "adder_tb.in2" \
           "adder_tb.sum"
srcSignalViewSelect "adder_tb.WIDTH" "adder_tb.clk" "adder_tb.reset" \
           "adder_tb.in1" "adder_tb.in2" "adder_tb.sum"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvUnknownSaveResult -win $_nWave2 -file /home/st81/HW3/unknownSignals.txt
verdiSetActWin -win $_nWave2
debExit
