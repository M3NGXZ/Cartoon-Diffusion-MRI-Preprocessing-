#!/bin/sh

sub=$(</Users/marcusmeng/Documents/Bash_Scripts/subject_list.txt);

for i in $sub; do

cd /Users/marcusmeng/MRI_data_Marcus/Actual_Data/${i}/dwi/

dwi2fod msmt_csd ${i}_dwi_den_unr_preproc_unbiased.mif -mask ${i}_mask_dwi_den_unr_preproc_unbiased.mif ${i}_wm.txt ${i}_wmfod.mif ${i}_gm.txt ${i}_gmfod.mif ${i}_csf.txt ${i}_csffod.mif

#Inspect Results

mrconvert -coord 3 0 ${i}_wmfod.mif - | mrcat ${i}_csffod.mif ${i}_gmfod.mif - ${i}_vf.mif

mrview ${i}_vf.mif -odf.load_sh ${i}_wmfod.mif

done
