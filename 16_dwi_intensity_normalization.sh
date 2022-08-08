#!/bin/sh

sub=$(</Users/marcusmeng/Documents/Bash_Scripts/subject_list.txt);

for i in $sub; do

cd /Users/marcusmeng/MRI_data_Marcus/Actual_Data/${i}/dwi/

mtnormalise ${i}_wmfod.mif ${i}_wmfod_norm.mif ${i}_gmfod.mif ${i}_gmfod_norm.mif ${i}_csffod.mif ${i}_csffod_norm.mif -mask ${i}_mask_dwi_den_unr_preproc_unbiased.mif

#Inspect Results

mrconvert -coord 3 0 ${i}_wmfod_norm.mif - | mrcat ${i}_csffod_norm.mif ${i}_gmfod_norm.mif - ${i}_vf_norm.mif

mrview ${i}_vf_norm.mif -odf.load_sh ${i}_wmfod_norm.mif

done
