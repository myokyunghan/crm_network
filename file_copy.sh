#/bin/bash
echo "file copy"
declare -a ele_list
ele_list=("TPU" "GaN" "Ni(OH)2" "White Carbon (SiO2)" "BaTiO3" "Al2O3" "Co-Oxide" "Cu-Oxide" "NiSO4" "TiO2" "Li2CO3")
                
for ele in "${ele_list[@]}"; do
	echo $ele
	echo "--------------------"
	new_file_nm="O_TERGM_11ele_$ele.Rmd"
	echo $new_file_nm
	cp ./TERGM_11ele.Rmd "$new_file_nm"

	sed -i '' "s/"ELEMENT_NAME_HERE"/${ele}/g" "$new_file_nm"
done
