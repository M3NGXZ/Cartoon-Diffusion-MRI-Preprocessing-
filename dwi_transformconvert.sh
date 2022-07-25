#!/bin/sh

sub=$(</mnt/f/Neuroimaging/Actual_Data/Bash_Scripts/subject_list.txt);

for i in $sub; do

transformconvert /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/diff2struct_fsl_dof6_intenT1.mat /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/mean_b0_preprocessed_${i}.nii.gz /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_desc-preproc_T1w_deface_deskull_ero.mif flirt_import /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/diff2struct_mrtrix_dof6_normalizedT1.txt

done
