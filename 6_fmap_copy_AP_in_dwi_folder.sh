#!/bin/sh

sub=$(</Users/marcusmeng/Documents/Bash_Scripts/subject_list.txt);

for i in $sub; do

cd /Users/marcusmeng/MRI_data_Marcus/Actual_Data/${i}/fmap/

cp ${i}_acq-01_dir-AP_run-02_epi.mif /Users/marcusmeng/Actual_Data/${i}/dwi/${i}_mean_b0_AP.mif

done
