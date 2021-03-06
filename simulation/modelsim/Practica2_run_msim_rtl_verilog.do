transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/UAG/9_Cuatrimestre/ArquitecturaDeComputadoras/Laboratory/P02 {D:/UAG/9_Cuatrimestre/ArquitecturaDeComputadoras/Laboratory/P02/Practica2.v}
vlog -vlog01compat -work work +incdir+D:/UAG/9_Cuatrimestre/ArquitecturaDeComputadoras/Laboratory/P02 {D:/UAG/9_Cuatrimestre/ArquitecturaDeComputadoras/Laboratory/P02/ControlUnit.v}
vlog -vlog01compat -work work +incdir+D:/UAG/9_Cuatrimestre/ArquitecturaDeComputadoras/Laboratory/P02 {D:/UAG/9_Cuatrimestre/ArquitecturaDeComputadoras/Laboratory/P02/top.v}

vlog -vlog01compat -work work +incdir+D:/UAG/9_Cuatrimestre/ArquitecturaDeComputadoras/Laboratory/P02 {D:/UAG/9_Cuatrimestre/ArquitecturaDeComputadoras/Laboratory/P02/finalTest.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  finalTest

add wave *
view structure
view signals
run -all
