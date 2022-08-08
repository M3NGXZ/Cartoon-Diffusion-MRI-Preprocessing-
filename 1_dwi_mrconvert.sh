#!/bin/sh

sub=$(</Users/marcusmeng/Documents/Bash_Scripts/subject_list.txt);

for i in $sub; do

cd /Users/marcusmeng/MRI_data_Marcus/Actual_Data/${i}/dwi/

mrconvert ${i}_dwi.nii ${i}_dwi.mif -fslgrad ${i}_dwi.bvec ${i}_dwi.bval -json_import ${i}_dwi.json

done
