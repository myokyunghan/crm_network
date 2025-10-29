#!/bin/bash

declare -a ele_list
ele_list=("TPU" "GaN" "Ni(OH)2" "SiO2" "BaTiO3" "Al2O3" "Co-Oxide" "Cu-Oxide" "NiSO4" "TiO2" "Li2CO3")
                
for ele in "${ele_list[@]}"; do
	echo $ele
	echo "--------------------"
	new_file_nm="TERGM_11ele_$ele.Rmd"
	echo $new_file_nm
	cp ./TERGM_11ele.Rmd $new_file_nm
done
