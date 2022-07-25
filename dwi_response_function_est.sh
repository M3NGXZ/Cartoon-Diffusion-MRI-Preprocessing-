#!/bin/sh

sub=$(</mnt/f/Neuroimaging/Actual_Data/Bash_Scripts/subject_list.txt);

for i in $sub; do

dwi2response dhollander /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_dwi_den_unr_preproc_unbiased.mif /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_wm.txt /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_gm.txt /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_csf.txt -voxels /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_voxels.mif

done
