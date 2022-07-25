#!/bin/sh

sub=$(</mnt/f/Neuroimaging/Actual_Data/Bash_Scripts/subject_list.txt);

for i in $sub; do

dwifslpreproc /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_dwi_den_unr.mif /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_dwi_den_unr_preproc.mif -rpe_pair -se_epi /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/${i}_b0_pair.mif -pe_dir PA -eddy_options ' --slm=linear'

done
