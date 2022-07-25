#!/bin/sh

sub=$(</mnt/f/Neuroimaging/Actual_Data/Bash_Scripts/subject_list.txt);

for i in $sub; do

mv /mnt/f/Neuroimaging/Actual_Data/${i}/anat/${i}__desc-preproc_T1w_deface.mif /mnt/f/Neuroimaging/Actual_Data/${i}/anat/${i}_desc-preproc_T1w_deface.mif

mrconvert /mnt/f/Neuroimaging/Actual_Data/${i}/anat/${i}_desc-preproc_T1w_deface.mif /mnt/f/Neuroimaging/Actual_Data/${i}/anat/${i}_desc-preproc_T1w_deface1.nii.gz

bet /mnt/f/Neuroimaging/Actual_Data/${i}/anat/${i}_desc-preproc_T1w_deface1.nii.gz /mnt/f/Neuroimaging/Actual_Data/${i}/anat/${i}_desc-preproc_T1w_deface_deskull.nii.gz

fslmaths /mnt/f/Neuroimaging/Actual_Data/${i}/anat/${i}_desc-preproc_T1w_deface_deskull.nii.gz /mnt/f/Neuroimaging/Actual_Data/${i}/anat/${i}_desc-preproc_T1w_deface_deskull_ero.nii.gz

mrconvert /mnt/f/Neuroimaging/Actual_Data/${i}/anat/${i}_desc-preproc_T1w_deface_deskull_ero.nii.gz /mnt/f/Neuroimaging/Actual_Data/${i}/anat/${i}_desc-preproc_T1w_deface_deskull_ero.mif

cp /mnt/f/Neuroimaging/Actual_Data/${i}/anat/${i}_desc-preproc_T1w_deface_deskull_ero.mif  /mnt/f/Neuroimaging/Actual_Data/${i}/dwi/

done
