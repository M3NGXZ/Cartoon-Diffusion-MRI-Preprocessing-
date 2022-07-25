#!/bin/sh

sub=$(</mnt/f/Neuroimaging/Actual_Data/Bash_Scripts/subject_list.txt);

for i in $sub; do

dwi2fod msmt_csd /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_dwi_den_unr_preproc_unbiased.mif -mask /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_mask_dwi_den_unr_preproc_unbiased.mif /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_wm.txt /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_wmfod.mif /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_gm.txt /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_gmfod.mif /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_csf.txt /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_csffod.mif

done
