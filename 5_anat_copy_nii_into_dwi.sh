#!/bin/sh

sub=$(</Users/marcusmeng/Documents/Bash_Scripts/subject_list.txt);

for i in $sub; do

cd /Users/marcusmeng/MRI_data_Marcus/Actual_Data/${i}/anat/

cp ${i}_desc-preproc_T1w_deface_deskull_ero.nii.gz /Users/marcusmeng/MRI_data_Marcus/Actual_Data/${i}/dwi/

done
