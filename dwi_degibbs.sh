#!/bin/sh

sub=$(</mnt/f/Neuroimaging/Actual_Data/Bash_Scripts/subject_list.txt);

for i in $sub; do

mrdegibbs /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_dwi_den.mif /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_dwi_den_unr.mif -axes 0,1

done
