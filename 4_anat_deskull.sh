#!/bin/sh

sub=$(</Users/marcusmeng/Documents/Bash_Scripts/subject_list.txt);

for i in $sub; do

cd /Users/marcusmeng/MRI_data_Marcus/Actual_Data/${i}/anat/

mrconvert ${i}_desc-preproc_T1w_deface.mif ${i}_desc-preproc_T1w_deface1.nii.gz

bet ${i}_desc-preproc_T1w_deface1.nii.gz ${i}_desc-preproc_T1w_deface_deskull.nii.gz

fslmaths ${i}_desc-preproc_T1w_deface_deskull.nii.gz ${i}_desc-preproc_T1w_deface_deskull_ero.nii.gz

mrconvert ${i}_desc-preproc_T1w_deface_deskull_ero.nii.gz ${i}_desc-preproc_T1w_deface_deskull_ero.mif

cp ${i}_desc-preproc_T1w_deface_deskull_ero.mif  /Users/marcusmeng/MRI_data_Marcus/Actual_Data/${i}/dwi/

done
