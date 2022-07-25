#!/bin/sh

sub=$(</mnt/f/Neuroimaging/Actual_Data/Bash_Scripts/subject_list.txt);

for i in $sub; do

mrcat /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_mean_b0_AP.mif /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_mean_b0_PA.mif -axis 3 /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_b0_pair.mif

done
