#!/bin/sh

sub=$(</mnt/f/Neuroimaging/Actual_Data/Bash_Scripts/subject_list.txt);

for i in $sub; do

dwiextract /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_dwi_den_unr_preproc_unbiased.mif - -bzero | mrmath - mean /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/mean_b0_preprocessed_${i}.mif -axis 3

done
