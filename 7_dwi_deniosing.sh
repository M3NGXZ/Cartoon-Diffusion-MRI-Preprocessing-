#!/bin/sh

sub=$(</Users/marcusmeng/Documents/Bash_Scripts/subject_list.txt);

for i in $sub; do

cd /Users/marcusmeng/MRI_data_Marcus/Actual_Data/${i}/dwi/

dwidenoise ${i}_dwi.mif ${i}_dwi_den.mif –noise ${i}_noise.mif

# Inspect Results

mrcalc ${i}_dwi.mif ${i}_dwi_den.mif -subtract ${i}_residual.mif

mrview ${i}_noise.mif ${i}_residual.mif

done
