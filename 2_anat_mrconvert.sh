#!/bin/sh

sub=$(</Users/marcusmeng/Documents/Bash_Scripts/subject_list.txt);

for i in $sub; do

cd /Users/marcusmeng/MRI_data_Marcus/Actual_Data/${i}/anat/

mrconvert ${i}_desc-preproc_T1w_deface.nii.gz -json_import ${i}_T1w.json ${i}_desc-preproc_T1w_deface.mif

done
