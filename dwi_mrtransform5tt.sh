#!/bin/sh

sub=$(</mnt/f/Neuroimaging/Actual_Data/Bash_Scripts/subject_list.txt);

for i in $sub; do

mrtransform /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/5ttgen_${i}.mif -linear /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/diff2struct_mrtrix_dof6_normalizedT1.txt -inverse /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_5tt_coreg.mif

done
