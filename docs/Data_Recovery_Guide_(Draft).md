# NIC DATA RECOVERY GUIDE


## Background Information

All data stored on our servers is periodically backed-up to a remote server called `nickelback`. If data on one of our workstations is acciedentally altered, deleted or otherwise manipulated, prior versions of the data called "snapshots" that can restore manipulated data to a restored state. All snapshots come with a timestamp (month and day) assoicated with them, therefore, it is important that you know when your data was altered so it can be restored to a prior state.


## How to Recover Data

1. The first step is to recongnize that a problem has occured (i.e. data has been deleted). Therefore, it is always a good idea to routinely check through what data you have and to ensure that everything is in the right place.
2.  Once you have identified the manipulated/deleted data, contact a member of the NIC and explain what occured and how far back in time you want the data to be restored to.
3.  The recovered data will be placed on the workstation `cone ` and in a directory associated with your workgroup (i.e. `rodlab` or `woodburylab`). You will need to log in to `cone` via your NIC account and type in the following command: `cd /data/recovered/<workgroup>`
4.  Once there you will see your recovered snapshots. Look through the recovered snapshot and compare it to the manipulated/deleted data to ensure that snapshot is correct.
5.  After comparinng you data you can copy the recovered data back to its proper place. (Example: `cp /data/recovered/<workgroup>/<snapshot> /data/qb/Atlanta/projects/<workgroup/<wherever you need it to be>`).

Please note that recovered data in the `recovered` directory will only stay there for a week before getting wiped so it is important that you cp the snapshots over ASAP. If the recovered data gets wiped before you get a chance to copy it please notify a memeber of te NIC for assiatnce.
