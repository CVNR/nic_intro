# NIC DATA RECOVERY GUIDE


## Background Information

Neuroimaging project data hosted by the Neuroimaging Core is backed-up via daily snapshots to a remote data storage server. These snapshots can then be used to restore project data that is inadvertently altered or deleted. All snapshots come with a timestamp (month and day) assoicated with them, therefore, it is important that you know when your data was altered so it can be restored to a prior state.



## How to Recover Data

1. The first step is to recognize that a problem has occured (i.e. data has been deleted). Therefore, it is always a good idea to routinely check through what data you have and to ensure that everything is in the right place.
2.  Once you have identified the altered/deleted data, send an email to Mark Vernon (mverno2@emory.edu) with the full path and date of the directories to be restored. (e.g. /data/qb/Atlanta/projects/dev/code from Oct. 21 2021)
3.  The recovered data will be placed in the `/data/recovered` directory within a folder associated with your workgroup (i.e. `rodlab` or `woodburylab`). Navigate to this directory by typing in the following command (substituting your workgroup):
```Bash
cd /data/recovered/workgroup
```
4.  Look through the recovered data and compare it to the current altered/deleted data to ensure that the snapshot version is what you need.
5.  After comparison, you can copy the recovered data back to its proper place (filling in directory specifics for your project/workgroup):
```Bash
cp -rv /data/recovered/workgroup/recov_Dir /data/qb/Atlanta/projects/workgroup/destination_Dir/
```

Please note that data in the `/data/recovered` directory will stay there for **one week** before getting wiped so it is important that you copy the snapshots over ASAP.

