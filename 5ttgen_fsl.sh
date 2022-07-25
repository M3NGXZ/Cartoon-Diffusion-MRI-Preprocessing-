#!/bin/sh

sub=$(</mnt/f/Neuroimaging/Actual_Data/Bash_Scripts/subject_list.txt);

for i in $sub; do

5ttgen fsl /mnt/f/Neuroimaging/Actual_Data/${i}/anat/${i}_desc-preproc_T1w_deface.nii.gz /mnt/f/Neuroimaging/Actual_Data/${i}/anat/5ttgen_${i}.mif

done

