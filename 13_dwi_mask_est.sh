#!/bin/sh

sub=$(</Users/marcusmeng/Documents/Bash_Scripts/subject_list.txt);

for i in $sub; do

cd /Users/marcusmeng/MRI_data_Marcus/Actual_Data/${i}/dwi/

dwi2mask ${i}_dwi_den_unr_preproc_unbiased.mif ${i}_mask_dwi_den_unr_preproc_unbiased.mif

# Inspect Results

mrview ${i}_mask_dwi_den_unr_preproc_unbiased.mif -colourmap 3

done
