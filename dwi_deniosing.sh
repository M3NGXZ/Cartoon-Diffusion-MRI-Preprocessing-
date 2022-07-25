#!/bin/sh

sub=$(</mnt/f/Neuroimaging/Actual_Data/Bash_Scripts/subject_list.txt);

for i in $sub; do

dwidenoise /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_dwi.mif /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_dwi_den.mif –noise /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_noise.mif

done

