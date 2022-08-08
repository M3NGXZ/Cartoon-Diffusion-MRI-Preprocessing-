#!/bin/sh

sub=$(</Users/marcusmeng/Documents/Bash_Scripts/subject_list.txt);

for i in $sub; do

cd /Users/marcusmeng/MRI_data_Marcus/Actual_Data/${i}/dwi/

tcksift ${i}_tracks10mio_fodgen.tck ${i}_wmfod_norm.mif ${i}_sift_1mio_fodgen_proc_mask.tck -proc_mask ${i}_mask_dwi_den_unr_preproc_unbiased._sift_1mio_fodgen_proc_mask

# Inspect Results

tckedit ${i}_sift_1mio_fodgen_proc_mask.tck -number 200k ${i}_smallerSIFT_200k.tck

mrview ${i}_wmfod_norm.mif -tractography.load ${i}_smallerSIFT_200k.tck

done
