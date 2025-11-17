#/bin/bash
echo "file copy"
declare -a ele_list
ele_list=("TPU" "GaN" "Ni(OH)2" "White Carbon (SiO2)" "BaTiO3" "Al2O3" "Co-Oxide" "Cu-Oxide" "NiSO4" "TiO2" "Li2CO3")
                
option=$1

for ele in "${ele_list[@]}"; do
	echo $ele
	echo $option
	echo "--------------------"
	new_file_nm="${option}_TERGM_11ele_${ele}.Rmd"
	echo $new_file_nm
	cp ./TERGM_11ele.Rmd "$new_file_nm"

    	safe_ele=$(printf '%s\n' "$ele" | sed 's/[&/\]/\\&/g')
   	sed -i '' "s/ELEMENT_NAME_HERE/${safe_ele}/g" "$new_file_nm"
done
