set_host_options -max_cores 16

set search_path [list .]
 
set edk_home /home/espanol/libraries/SAED32_EDK_01132015/
set io_dir $edk_home/lib/io_std
set pll_dir $edk_home/lib/pll
set stdcell_dir $edk_home/lib/stdcell_hvt

set io_db_dir $io_dir/db_nldm
set pll_db_dir $pll_dir/db_nldm
set stdcell_db_dir $stdcell_dir/db_nldm
 
set synthetic_library dw_foundation.sldb

set link_library "*  $stdcell_db_dir/saed32hvt_ss0p95v125c.db   $pll_db_dir/saed32pll_ss0p95v125c_2p25v.db  $io_db_dir/saed32io_fc_ss0p95v125c_2p25v.db     $synthetic_library"
set target_library "  $stdcell_db_dir/saed32hvt_ss0p95v125c.db  $pll_db_dir/saed32pll_ss0p95v125c_2p25v.db   $io_db_dir/saed32io_fc_ss0p95v125c_2p25v.db  "


sh rm -rf ./WORK
define_design_lib WORK -path WORK

set SOURCE_FILES {
    ./accumulator.v
    ./Buffer_32bit.v
    ./BitFusion_column.v
    ./PE_register.v
    ./bitbrick.v
    ./bitbrick_shift.v
    ./PE_adder.v
    ./PE.v
    ./signed3bit_MUL.v
    ./Weight_MUX_REG.v
}

analyze -format verilog $SOURCE_FILES -library WORK
elaborate BitFusion_column


set reports_dir reports
set final_reports_dir final_reports
set design_dir designs

if { ! [ file exists $reports_dir ] } {
	file mkdir $reports_dir
}
if { ! [ file exists $final_reports_dir ] } {
	file mkdir $final_reports_dir
}
if { ! [ file exists $design_dir] } {
	file mkdir $design_dir
}

# set current_design top
link

create_clock clk -period 3

ungroup -all -flatten
link
compile_ultra
#compile

report_design > $design_dir/column_design

report_synthetic > $reports/dir/column_synthetic

report_timing > $final_reports_dir/column_timing.txt
sh cat $final_reports_dir/column_timing.txt

# set current design PE.v

report_area > $final_reports_dir/column_area.txt
sh cat $final_reports_dir/column_area.txt

report_power > $final_reports_dir/column_power.txt
sh cat $final_reports_dir/column_power.txt

write_file -f verilog -hier -output ./output/column_syn.v
write_file -f ddc -hier -output ./output/column_syn.ddc

#exit
