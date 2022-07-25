#!/bin/sh

sub=$(</mnt/f/Neuroimaging/Actual_Data/Bash_Scripts/subject_list.txt);

for i in $sub; do

mtnormalise /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_wmfod.mif /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_wmfod_norm.mif /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_gmfod.mif /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_gmfod_norm.mif /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_csffod.mif /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_csffod_norm.mif -mask /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_mask_dwi_den_unr_preproc_unbiased.mif

done
