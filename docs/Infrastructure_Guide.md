# NIC Infrastructure Guide

## Data Flow Diagram
![infr_diagram](https://github.com/CVNR/nic_intro/blob/71b373866129a5313fe9492c71282327d1a8bcc0/docs/images/NIC_dataFlow_20211209.jpg)

## Access
To access the CVNR Neuroimaging Core computing resources you must have the following:
* VA credentialing completed
* NIC account (with access to the CVNR NIC subnet)
* Emory account (or a PI-sponsored Emory account for non-Emory associated personnel)

The NIC workstations (lens, rod, cone, falx, ralph) and data servers are located on the Emory academic network. These resources are accessible from any computer at the VA CVNR on the wired Emory network or from a computer on the wireless Emory network via the Emory VPN. The NIC workstations and data servers are also available remotely via access to the CVNR NIC subnet.

## Suggested Software
#### VPN
Download and install the version appropriate for your operating system: \
[BIG-IP Edge Client](https://it.emory.edu/vpntools/)

After installation, in the `Server` field, input `vpn.emory.edu` and use your Emory account credentials for the username and password.

#### X2go
[X2go](https://wiki.x2go.org/doku.php/doc:newtox2go) is a remote desktop client for viewing NIC workstation graphical applications on your local desktop.  (To use X2go on a Mac, you'll also need to install [XQuartz](https://www.xquartz.org/))

Setting up X2go:
Select the New Session icon and input the following settings:
* `Session name`:  something descriptive (such as the name of the workstation you're connecting to: lens, rod, cone, falx, or ralph)
* `Host`:  workstationName.birc.emory.edu (replace "workstationName" with `lens`, `rod`, `cone`, `falx`, or `ralph`)
* `Login`:  NIC account username
* `Session type`:  XFCE

#### FileZilla
[FileZilla](https://filezilla-project.org/download.php?type=client) is a secure file transfer protocol (SFTP) client used for moving files to and from NIC workstations in a protected manner.

Setting up a FileZilla SFTP session:
To transfer files between a local machine and one of the workstations, open FileZilla and input the following settings then select "Quickconnect":
* `Host`:  workstationName.birc.emory.edu (replace "workstationName" with `lens`, `rod`, `cone`, `falx`, or `ralph`)
* `Username`:  NIC account username
* `Password`:  NIC account password
* `Port`:  22

A notification about the server's host key being unknown may appear.  If so, select "Always trust this host" and press "OK".  In the `Local Site` and `Remote Site` directory windows, navigate to where the source and destination of the files to be transferred will be and drag the files from their source to their destination.  The status of the transfer(s) will be shown in the window pane at the bottom.

## Basic Linux Commands
`ls` - lists contents(files) within a directory(folder) \
ex. `ls /data/qb/Atlanta/projects`


`cd` - changes current working directory \
ex. `cd /data/qb/Atlanta`


`mkdir` - makes a new directory \
ex. `mkdir ~/Documents/testFolder`


`less` - browse the content of a file \
ex. `less ~/Documents/testFolder/testFile.txt`
Press the `q` key to exit `less`.


`htop` - shows what processes are currently running on a workstation \
Press `CTRL-C` to exit `htop`


`clear` - clears the current terminal window of previous command output

## Contact Info
#### Mark Vernon
Email:  mverno2@emory.edu \
Office:  12C-119 \
Phone:  404-321-6111 (ext. 121191)

#### Dan Wakeman
Email:  dwakem2@emory.edu \
Office:  12C-117 \
Phone:  404-321-6111 (ext. 121175)
