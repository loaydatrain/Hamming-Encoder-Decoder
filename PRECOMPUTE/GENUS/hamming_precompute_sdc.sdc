# ####################################################################

#  Created by Genus(TM) Synthesis Solution 16.21-s018_1 on Sun Nov 24 21:52:10 +0530 2019

# ####################################################################

set sdc_version 1.7

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design hamming_precompute

set_clock_gating_check -setup 0.0 
set_wire_load_mode "enclosed"
set_dont_use [get_lib_cells slow/HOLDX1]
