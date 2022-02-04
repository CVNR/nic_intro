# NIC Introductory Pre-Processing Guide


## Tutorials

Below are links to the FSL neuroimaging course videos covering an introduction to neuroimaging, navigating the Linux/Unix computing environment, as well as more advanced videos on many of the tools used in NIC processing pipelines; what the tool is doing and why.  It is recommended to look over the Unix, FSLeyes, and AFNI videos first to get a good idea of what is involved in neuroimaging analyses and how to view input and output images.  Then you can review videos which relate to aspects of your project in the FSL Main Course Material series at your own pace.

[Introduction to Unix](https://www.youtube.com/playlist?list=PLvgasosJnUVnnFifxecbyEno7jnqrl8fQ)

[FSLeyes Image Viewer](https://www.youtube.com/watch?v=80d9FoqvuGo&list=PLvgasosJnUVku_GE64BfFuftEvh3Y8lHC&index=2)

[Using AFNI](https://afni.nimh.nih.gov/pub/dist/edu/latest/afni_handouts/afni03_interactive.pdf)

[FSL Main Course Material](https://open.win.ox.ac.uk/pages/fslcourse/website/online_materials.html)


## General Considerations

Before running each script in a processing pipeline, review the script to make sure your environment variables are set up to specify which subject/session to process as well as where this data is located.  If the following commands are not expressed at the beginning of a script, then they will each need to be executed before running the script. Open a bash Terminal window, and enter the environment variables below. You should fill in the `project`, `pipeline`, `subID`, and `sesID` labels appropriate to your project[^1].

```Bash
export PROJECT_DIR=/data/qb/Atlanta/projects/project
export SUBJECT=sub-subID
export SESSION=ses-sesID
```

For example, when working on the Woodbury-CDA2 project with subject `sub-CES01` and session `ses-bl`, the command-line input would be:

```Bash
export PROJECT_DIR=/data/qb/Atlanta/projects/Woodbury-CDA2
export SUBJECT=sub-CES01
export SESSION=ses-bl
```

After exporting these environment variables, you can test to see if they’ve been set up properly by running the `echo` command.  Run the following commands from the same terminal where the variables were exported.  Each command should return the values you exported in the previous step:

```Bash
echo $PROJECT_DIR
echo $SUBJECT
echo $SESSION
```

Unless otherwise noted, each script should be run from the project code directory where the script is located.  To run a script from the command line, key in a `./` followed by the script name.  For example, when working on the Woodbury-CDA2 project and running the `01_deobliq-RPI.sh` script, the command-line input would be:

```Bash
cd /data/qb/Atlanta/projects/Woodbury-CDA2/code/anat-T1w
./01_deobliq-RPI.sh
```

### Important considerations prior to image pre-processing:

You will be running a number of preprocessing steps to “clean up” the images.  Some of these steps produce numerical indicators of data quality.  It is also recommended that you review the output images at each step for errors.  No automated tool is as good at finding errors as the human eye.  Common image quality issues are listed in the script details sections below.

As of June 2020, new NIC neuroimaging projects are organized in the BIDS format (see [dcm2bids guide](https://github.com/CVNR/nic_intro/blob/5639d75472671571dcfefe2aaf0dc62bb6af1b79/docs/dcm2bids_guide.md) for help in converting sourcedata from the scanner to BIDS format).  Each script in a pipeline adds a label to the end of the image filename.  For example, the `02_Matlab_denoise.sh` script adds the `_denoised` label to the end of the input anatomical image filename:

Input image:   `sub-123_ses-pre_T1w_deoblq_RPI.nii.gz`

Output image:  `sub-123_ses-abc_T1w_deoblq_RPI_denoised.nii.gz`

 
  [^1]: Some scripts may utilize “PROJ_DIR” instead of “PROJECT_DIR”, review the script in a text editor to check
