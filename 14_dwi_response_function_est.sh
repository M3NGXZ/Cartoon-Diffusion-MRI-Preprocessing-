#!/bin/sh

sub=$(</Users/marcusmeng/Documents/Bash_Scripts/subject_list.txt);

for i in $sub; do

cd /Users/marcusmeng/MRI_data_Marcus/Actual_Data/${i}/dwi/

dwi2response dhollander ${i}_dwi_den_unr_preproc_unbiased.mif ${i}_wm.txt ${i}_gm.txt ${i}_csf.txt -voxels ${i}_voxels.mif

# Inspect Results

mrview ${i}_dwi_den_unr_preproc_unbiased.mif -overlay.load ${i}_voxels.mif

shview ${i}_wm.txt

shview ${i}_gm.txt

shview ${i}_csf.txt

done
