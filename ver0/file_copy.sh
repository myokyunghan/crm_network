#/bin/bash
echo "file copy"
declare -a ele_list
ele_list=("Al2O3" "White Carbon (SiO2)" "Fumed Silica (SiO2)" "Colloidal Silica (SiO2)" "TiO2" "ZrO2" "BaTiO3" "Y2O3" "CeO2" "MgO" "V2O5" "WO3" "Co-Oxide" "Cu-Oxide" "SiC" "WC" "GaN" "BN" "Si3N4" "AlN" "LiOH" "Li2CO3" "NiSO4" "Ni(OH)2" "Quartz Glass" "CMC" "PA6 compound" "TPU")
                
option=$1

for ele in "${ele_list[@]}"; do
	echo $ele
	echo $option
	echo "--------------------"
	new_file_nm="${option}_TERGM_11ele_${ele}.Rmd"
	echo $new_file_nm
	echo ${option}_TERGM_11ele.Rmd
	cp ./${option}_TERGM_11ele.Rmd "$new_file_nm"

    	safe_ele=$(printf '%s\n' "$ele" | sed 's/[&/\]/\\&/g')
   	sed -i '' "s/ELEMENT_NAME_HERE/${safe_ele}/g" "$new_file_nm"
done
