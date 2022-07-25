#!/bin/sh

sub=$(</mnt/f/Neuroimaging/Actual_Data/Bash_Scripts/subject_list.txt);

for i in $sub; do 

mrconvert /mnt/f/Neuroimaging/Actual_Data/${i}/anat/${i}_desc-preproc_T1w_deface.nii.gz -json_import /mnt/f/Neuroimaging/Actual_Data/${i}/anat/${i}_T1w.json /mnt/f/Neuroimaging/Actual_Data/${i}/anat/${i}_desc-preproc_T1w_deface.mif

done


