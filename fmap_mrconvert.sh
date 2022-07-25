#!/bin/sh

sub=$(</mnt/f/Neuroimaging/Actual_Data/Bash_Scripts/subject_list.txt);

for i in $sub; do 

mrconvert /mnt/f/Neuroimaging/Actual_Data/${i}/fmap/${i}_acq-01_dir-AP_run-02_epi.nii -json_import /mnt/f/Neuroimaging/Actual_Data/${i}/fmap/${i}_acq-01_dir-AP_run-02_epi.json /mnt/f/Neuroimaging/Actual_Data/${i}/fmap/${i}_acq-01_dir-AP_run-02_epi.mif

done
