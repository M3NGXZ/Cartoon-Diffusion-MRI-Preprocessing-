#!/bin/sh

sub=$(</Users/marcusmeng/Documents/Bash_Scripts/subject_list.txt);

for i in $sub; do

cd /Users/marcusmeng/MRI_data_Marcus/Actual_Data/${i}/dwi/

# -seed_image image (multiple uses permitted) seed streamlines entirely at random within a mask image

# -mask spec (multiple uses permitted) specify a masking region of interest, as either a binary mask image, or as a sphere using 4 comma-separared values (x,y,z,radius). If defined, streamlines exiting the mask will be truncated.

tckgen ${i}_wmfod_norm.mif ${i}_tracks10mio_fodgen.tck -seed_image ${i}_mask_dwi_den_unr_preproc_unbiased.mif -mask ${i}_mask_dwi_den_unr_preproc_unbiased.mif -select 10000000

# Inspect Results

tckedit ${i}_tracks10mio_fodgen.tck -number 200k ${i}_smallerTracks_200k.tck

mrview ${i}_wmfod_norm.mif -tractography.load ${i}_smallerTracks_200k.tck

done
