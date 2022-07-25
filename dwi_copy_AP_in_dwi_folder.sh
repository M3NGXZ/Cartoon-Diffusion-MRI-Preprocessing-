#!/bin/sh

sub=$(</mnt/f/Neuroimaging/Actual_Data/Bash_Scripts/subject_list.txt);

for i in $sub; do

cp /mnt/f/Neuroimaging/Actual_Data/${i}/fmap/${i}_acq-01_dir-AP_run-02_epi.mif /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_mean_b0_AP.mif

done
