debImport "-f" "flist.f"
nsMsgSwitchTab -tab general
debLoadSimResult /home/st81/HW2/waves.fsdb
wvCreateWindow
nsMsgSwitchTab -tab cmpl
verdiWindowResize -win $_Verdi_1 "769" "31" "766" "784"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "tb.foreach" -win $_nTrace1
srcHBSelect "tb.foreach" -win $_nTrace1
srcSetScope "tb.foreach" -delim "." -win $_nTrace1
srcHBSelect "tb.foreach" -win $_nTrace1
srcHBSelect "tb.dut" -win $_nTrace1
srcSetScope "tb" -delim "." -win $_nTrace1
srcSetScope "tb" -delim "." -win $_nTrace1
verdiSetActWin -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 5.909290
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "tb" -win $_nTrace1
wvSelectGroup -win $_nWave2 {G1}
verdiSetActWin -win $_nWave2
wvSelectGroup -win $_nWave2 {G1}
wvSelectGroup -win $_nWave2 {G1}
verdiWindowResize -win $_Verdi_1 "836" "31" "699" "784"
verdiWindowResize -win $_Verdi_1 "763" "31" "772" "784"
wvSelectGroup -win $_nWave2 {G1}
wvSelectGroup -win $_nWave2 {G1}
wvSelectGroup -win $_nWave2 {G1}
wvSelectGroup -win $_nWave2 {G1}
wvSelectGroup -win $_nWave2 {G1}
verdiDockWidgetSetCurTab -dock windowDock_OneSearch
verdiSetActWin -win $_OneSearch
srcHBSelect "tb" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
verdiSetActWin -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tb"
wvGetSignalSetScope -win $_nWave2 "/tb"
wvGetSignalSetScope -win $_nWave2 "/tb/dut"
wvGetSignalSetScope -win $_nWave2 "/tb/unnamed\$\$_0"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvCollapseGroup -win $_nWave2 "G1"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvCollapseGroup -win $_nWave2 "G1"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvGetSignalSetScope -win $_nWave2 "/tb/unnamed\$\$_1"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvCollapseGroup -win $_nWave2 "G1"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvCollapseGroup -win $_nWave2 "G1"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvCollapseGroup -win $_nWave2 "G1"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvGetSignalSetScope -win $_nWave2 "/tb/unnamed\$\$_2"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvCollapseGroup -win $_nWave2 "G1"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvCollapseGroup -win $_nWave2 "G1"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvCollapseGroup -win $_nWave2 "G1"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvCollapseGroup -win $_nWave2 "G1"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvGetSignalClose -win $_nWave2
wvSelectGroup -win $_nWave2 {G1}
wvSelectGroup -win $_nWave2 {G1}
srcSignalView -on
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewExpand "tb.data_read_queue\[0:0\]"
srcSignalViewSelect "tb.i"
srcSignalViewSelect "tb.data_read_queue\[0\]" "tb.data_out" \
           "tb.data_read_queue\[0:0\]" "tb.i"
srcSignalViewSelect "tb.data_read_queue\[0\]" "tb.data_in" "tb.data_out" \
           "tb.data_read_queue\[0:0\]" "tb.i"
srcSignalViewSelect "tb.data_read_queue\[0\]" "tb.address" "tb.data_in" \
           "tb.data_out" "tb.data_read_queue\[0:0\]" "tb.i"
srcSignalViewSelect "tb.data_read_queue\[0\]" "tb.write" "tb.address" \
           "tb.data_in" "tb.data_out" "tb.data_read_queue\[0:0\]" "tb.i"
srcSignalViewSelect "tb.data_read_queue\[0\]" "tb.read" "tb.write" "tb.address" \
           "tb.data_in" "tb.data_out" "tb.data_read_queue\[0:0\]" "tb.i"
srcSignalViewSelect "tb.data_read_queue\[0\]" "tb.clk" "tb.read" "tb.write" \
           "tb.address" "tb.data_in" "tb.data_out" "tb.data_read_queue\[0:0\]" \
           "tb.i"
wvDrop -win $_nWave2
srcSignalViewSelect "tb.i"
srcSignalViewSelect "tb.data_read_queue\[0\]" "tb.i"
srcSignalViewSelect "tb.data_read_queue\[0\]" "tb.read" "tb.write" "tb.address" \
           "tb.data_in" "tb.data_out" "tb.data_read_queue\[0:0\]" "tb.i"
srcSignalViewSelect "tb.data_read_queue\[0\]" "tb.clk" "tb.read" "tb.write" \
           "tb.address" "tb.data_in" "tb.data_out" "tb.data_read_queue\[0:0\]" \
           "tb.i"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvUnknownSaveResult -win $_nWave2 -file /home/st81/HW2/unknownSignals.txt
verdiSetActWin -win $_nWave2
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 69.015283 86.791947
wvSetCursor -win $_nWave2 1.577551 -snap {("G1" 0)}
