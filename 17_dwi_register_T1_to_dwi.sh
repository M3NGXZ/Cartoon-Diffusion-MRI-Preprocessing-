#!/bin/sh

sub=$(</Users/marcusmeng/Documents/Bash_Scripts/subject_list.txt);

for i in $sub; do

cd /Users/marcusmeng/MRI_data_Marcus/Actual_Data/${i}/dwi/

dwiextract ${i}_dwi_den_unr_preproc_unbiased.mif - -bzero | mrmath - mean mean_b0_preprocessed_${i}.mif -axis 3

mrconvert mean_b0_preprocessed_${i}.mif mean_b0_preprocessed_${i}.nii.gz

# FLIRT generates .omat matrices files that instructs the coregistration, later used by T1_coreg

# If you use FLIRT in your research, please quote the articles:

# 1. M. Jenkinson and S.M. Smith. A global optimisation method for robust affine registration of brain images. Medical Image Analysis, 5(2):143-156, 2001.

# 2. M. Jenkinson, P.R. Bannister, J.M. Brady, and S.M. Smith. Improved optimisation for the robust and accurate linear registration and motion correction of brain images. NeuroImage, 17(2):825-841, 2002.

flirt -in mean_b0_preprocessed_${i}.nii.gz -ref ${i}_desc-preproc_T1w_deface_deskull_ero.nii.gz -dof 6 -omat diff2struct_fsl_dof6_intenT1.mat

#transformconvert Convert linear transformation matrices

transformconvert diff2struct_fsl_dof6_intenT1.mat mean_b0_preprocessed_${i}.nii.gz ${i}_desc-preproc_T1w_deface_deskull_ero.mif flirt_import diff2struct_mrtrix_dof6_normalizedT1.txt

mrtransform ${i}_desc-preproc_T1w_deface_deskull_ero.mif -linear diff2struct_mrtrix_dof6_normalizedT1.txt -inverse ${i}_T1_coreg.mif

# Inspect Results, dwi should align with T1_coreg but not raw T1

mrview ${i}_dwi_den_unr_preproc_unbiased.mif -overlay.load ${i}_desc-preproc_T1w_deface_deskull_ero.mif -overlay.colourmap 2 ${i}_T1_coreg.mif -overlay.colourmap 1

done
