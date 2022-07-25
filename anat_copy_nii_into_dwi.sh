#!/bin/sh

sub=$(</mnt/f/Neuroimaging/Actual_Data/Bash_Scripts/subject_list.txt);

for i in $sub; do

cp /mnt/f/Neuroimaging/Actual_Data/${i}/anat/${i}_desc-preproc_T1w_deface_deskull_ero.nii.gz /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/

done
