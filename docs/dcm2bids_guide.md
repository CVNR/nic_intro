# Initialization of Data Format and File Structure (BIDS)

The [Brain Imaging Data Structure](https://bids-specification.readthedocs.io/en/stable/01-introduction.html) (BIDS) is a standardized way of organizing neuroimaging data which was developed with the input of the neuroscientist community.  The BIDS format makes it easier to reproduce data analysis from researcher to researcher as well as utilize a growing number of data analysis packages which accept BIDS datasets as input.  Fortunately, the `dcm2bids` tool is available to rename and organize neuroimaging scan data into BIDS format for you.  Contact the Neuroimaging Core to setup a time to have `dcm2bids` set up for your NIC user account.

The `dcm2bids` tool has been incorporated into a script to assist in the standardization and automation of formatting datasets.  This script converts the raw dicom `.dcm` files into the compressed NIfTI `.nii.gz` format, then renames these NIfTI files and places them in the project directory organized into folders according to the BIDS format.

## Set up environment variables

Before running the dcm2bids.sh script, first setup your environment variables; substituting in your project directory, subject, and session:

```Bash
export PROJECT_DIR=/data/qb/Atlanta/projects/<projectName>
export SUBJECT=sub-<subID>
export SESSION=ses-<sesID>
```

## Run dcm2bids.sh script

Change directories to your project code directory and run the dcm2bids.sh script:

```Bash
cd ${PROJECT_DIR}/code
./dcm2bids.sh
```

## Review dcm2bids output

Review the output of the dcm2bids script by changing directories to the dcm2bids log directory and loading the log file for that subject/session; filling in for whatever the time stamp is for that particular log file:

```Bash
cd ${PROJECT_DIR}/tmp_dcm2bids/log
ls
cat ${SUBJECT}_${SESSION}_<timeStamp>.log
```

Look for any error messages, such as multiple scans being matched to the same datatype or task.  The `dcm2bids` tool handles these duplicate matches by assigning a run label `run-01`, `run-02` etc... to the filename.  A duplicate generally occurs when a scan is repeated due to excessive participant motion in the scanner or some technical error during the scan. Often, the second scan (i.e. the one labeled `run-2`) is the image to keep, but this is not always the case.

Change directories to the BIDS output NIfTI folders and review the images with your PI and/or someone from the NIC to help identify the image to be kept and rename this image to remove the unnecessary run label from the file name. Delete the duplicate NIfTI images and their associated .json sidecars. Use the `mv` command to rename images; filling in the specifics of the image to be kept. In the following example, the second duplicate (`run-02`) of the T1w scan is being kept:

```Bash
cd ${PROJECT_DIR}/${SUBJECT}/${SESSION}/anat
mv ${SUBJECT}_${SESSION}_T1w_run-02.nii.gz ${SUBJECT}_${SESSION}_T1w.nii.gz
mv ${SUBJECT}_${SESSION}_T1w_run-02.json ${SUBJECT}_${SESSION}_T1w.json
```
