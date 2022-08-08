#!/bin/sh

sub=$(</Users/marcusmeng/Documents/Bash_Scripts/subject_list.txt);

for i in $sub; do

cd /Users/marcusmeng/MRI_data_Marcus/Actual_Data/${i}/dwi/

dwiextract ${i}_dwi_den_unr.mif - -bzero | mrmath - mean ${i}_mean_b0_PA.mif -axis 3

done
