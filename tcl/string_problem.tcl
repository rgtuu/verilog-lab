set p0 DAT_LOT3
set p1 DAT_LOT1
set p2 DTT_PHDA4
set p3 HHUI_EE2

regsub -nocase {(\w+)_(\w+)(\d)} $p0 {\2-\3\1} p0_result
puts $p0_result

regsub -nocase {(\w+)_(\w+)(\d)} $p1 {\2-\3\1} p1_result
puts $p1_result

regsub -nocase {(\w+)_(\w+)(\d)} $p2 {\2-\3\1} p2_result
puts $p2_result

regsub -nocase {(\w+)_(\w+)(\d)} $p3 {\2-\3\1} p3_result
puts $p3_result

