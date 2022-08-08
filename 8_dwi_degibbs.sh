#!/bin/sh

sub=$(</Users/marcusmeng/Documents/Bash_Scripts/subject_list.txt);

for i in $sub; do

cd /Users/marcusmeng/MRI_data_Marcus/Actual_Data/${i}/dwi/

mrdegibbs ${i}_dwi_den.mif ${i}_dwi_den_unr.mif -axes 0,1

# Inspect Results

mrcalc ${i}_dwi_den.mif ${i}_dwi_den_unr.mif -subtract ${i}_residualUnringed.mif

mrview ${i}_dwi_den_unr.mif ${i}_residualUnringed.mif

done
