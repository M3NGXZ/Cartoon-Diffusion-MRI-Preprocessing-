#!/bin/sh

sub=$(</mnt/f/Neuroimaging/Actual_Data/Bash_Scripts/subject_list.txt);

for i in $sub; do

flirt -in /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/mean_b0_preprocessed_${i}.nii.gz -ref /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_desc-preproc_T1w_deface_deskull_ero.nii.gz -dof 6 -omat /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/diff2struct_fsl_dof6_intenT1.mat

done
