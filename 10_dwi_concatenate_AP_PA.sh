#!/bin/sh

sub=$(</Users/marcusmeng/Documents/Bash_Scripts/subject_list.txt);

for i in $sub; do

cd /Users/marcusmeng/MRI_data_Marcus/Actual_Data/${i}/dwi/

#Order Matters! First image in PE direction, second image in reversed PE direction

mrcat ${i}_mean_b0_AP.mif ${i}_mean_b0_PA.mif -axis 3 ${i}_b0_pair.mif

# View both b0-paired EPI-distortion correction

mrview ${i}_mean_b0_AP.mif -overlay.load ${i}_mean_b0_PA.mif

done
