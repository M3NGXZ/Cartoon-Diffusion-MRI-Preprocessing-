#!/bin/sh

sub=$(</mnt/f/Neuroimaging/Actual_Data/Bash_Scripts/subject_list.txt);

for i in $sub; do

dwi2mask /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_dwi_den_unr_preproc_unbiased.mif /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_mask_dwi_den_unr_preproc_unbiased.mif

done
