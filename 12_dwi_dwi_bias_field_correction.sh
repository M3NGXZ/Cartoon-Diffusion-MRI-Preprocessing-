#!/bin/sh

sub=$(</Users/marcusmeng/Documents/Bash_Scripts/subject_list.txt);

for i in $sub; do

cd /Users/marcusmeng/MRI_data_Marcus/Actual_Data/${i}/dwi/

dwibiascorrect ants ${i}_dwi_den_unr_preproc.mif ${i}_dwi_den_unr_preproc_unbiased.mif -bias ${i}_bias.mif

# Inspect bias

mrview ${i}_bias.mif -colourmap 2

done
