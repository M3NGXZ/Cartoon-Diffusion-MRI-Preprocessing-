#!/bin/sh

sub=$(</mnt/f/Neuroimaging/Actual_Data/Bash_Scripts/subject_list.txt);

for i in $sub; do

mrtransform /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_desc-preproc_T1w_deface_deskull_ero.mif -linear /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/diff2struct_mrtrix_dof6_normalizedT1.txt -inverse /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_T1_coreg.mif

done
