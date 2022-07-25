#!/bin/sh

sub=$(</mnt/f/Neuroimaging/Actual_Data/Bash_Scripts/subject_list.txt);

for i in $sub; do 

mrconvert /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_dwi.nii /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_dwi.mif -fslgrad /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_dwi.bvec /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_dwi.bval -json_import /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_dwi.json

done
