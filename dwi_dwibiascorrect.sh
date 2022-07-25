#!/bin/sh

sub=$(</mnt/f/Neuroimaging/Actual_Data/Bash_Scripts/subject_list.txt);

for i in $sub; do

dwibiascorrect ants /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_dwi_den_unr_preproc.mif /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_dwi_den_unr_preproc_unbiased.mif -bias /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_bias.mif

done
