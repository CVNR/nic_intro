#!/bin/bash -ef

# Script for running dcm2bids, to convert dicoms to raw nifti, then rename them
# and place them in directories in accordance to BIDS format
# (https://bids-specification.readthedocs.io/en/stable/01-introduction.html)

# Make sure to export environment variables before running this script!

# export PROJECT_DIR=/data/qb/Atlanta/projects/<project>
# (e.g. PROJECT_DIR=/data/qb/Atlanta/projects/Woodbury-CDA2)

# export SUBJECT=sub-<subID>
# (e.g. SUBJECT=sub-CES01)

# export SESSION=ses-<sesID>
# (e.g. SESSION=ses-bl)

SOURCE_DIR=`echo ${PROJECT_DIR/projects/sourcedata}`

# Activate dcm2bids conda environment
source ~/miniconda3/etc/profile.d/conda.sh
conda activate dcm2bids

# Strip out subject and session labels
SUB_LABEL=`echo ${SUBJECT} | cut -c 5-`
SES_LABEL=`echo ${SESSION} | cut -c 5-`

# Runs dcm2bids with options
echo "dcm2bids -d ${SOURCE_DIR}/${SUB_LABEL}/${SES_LABEL} \
         -p ${SUB_LABEL} \
         -s ${SES_LABEL} \
         -c ${PROJECT_DIR}/code/dcm2bids_config.json \
         -o ${PROJECT_DIR}"
         
         
