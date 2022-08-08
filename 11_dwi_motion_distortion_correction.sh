#!/bin/sh

sub=$(</Users/marcusmeng/Documents/Bash_Scripts/subject_list.txt);

for i in $sub; do

cd /Users/marcusmeng/MRI_data_Marcus/Actual_Data/${i}/dwi/

# Additional parameters

# -rpe_pair Specify that a set of images (typically b=0 volumes) will be provided for use in inhomogeneity field estimation only (using the -se_epi option)

# -se_epi image Provide an additional image series consisting of spin-echo EPI images, which is to be used exclusively by topup for estimating the inhomogeneity field (i.e. it will not form part of the output image series)

# -pe_dir PE Manually specify the phase encoding direction of the input series; can be a signed axis number (e.g. -0, 1, +2), an axis designator (e.g. RL, PA, IS), or NIfTI axis codes (e.g. i-, j, k)

# -eddy_options ” EddyOptions” Manually provide additional command-line options to the eddy command (provide a string within quotation marks that contains at least one space, even if only passing a single command-line option to eddy)

# Note that eddy_options are passed within double quotes. After the opening quote, an empty space must follow. Inportantly, the options within the eddy_options are called with a double hyphen rather than with a single hyphen!

dwifslpreproc ${i}_dwi_den_unr.mif ${i}_dwi_den_unr_preproc.mif -rpe_pair -se_epi ${i}_b0_pair.mif -pe_dir PA -eddy_options ' --slm=linear'

done
