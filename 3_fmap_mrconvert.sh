#!/bin/sh

sub=$(</Users/marcusmeng/Documents/Bash_Scripts/subject_list.txt);

for i in $sub; do

cd /Users/marcusmeng/MRI_data_Marcus/Actual_Data/${i}/fmap/

mrconvert ${i}_acq-01_dir-AP_run-02_epi.nii -json_import ${i}_acq-01_dir-AP_run-02_epi.json ${i}_acq-01_dir-AP_run-02_epi.mif

done
