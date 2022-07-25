#!/bin/sh

sub=$(</mnt/f/Neuroimaging/Actual_Data/Bash_Scripts/subject_list.txt);

for i in $sub; do

mrconvert /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/mean_b0_preprocessed_${i}.mif /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/mean_b0_preprocessed_${i}.nii.gz

done
