#!/bin/sh

sub=$(</mnt/f/Neuroimaging/Actual_Data/Bash_Scripts/subject_list.txt);

for i in $sub; do

cp /mnt/f/Neuroimaging/Actual_Data/${i}/anat/5ttgen_${i}.mif /mnt/f/Neuroimaging/Actual_Data/${i}/dwi

done
