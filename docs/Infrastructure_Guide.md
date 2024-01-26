# NIC Infrastructure Guide

## Data Flow Diagram
![infr_diagram](https://github.com/CVNR/nic_intro/blob/23e4502fc4c2f0f27b9a7335ad1f2939589ec0ec/docs/images/NIC_dataFlow_20240112.jpg)

## Access
To access the CVNR Neuroimaging Core computing resources you must have the following:
* VA credentialing completed
* NIC account (with access to the CVNR NIC subnet)
* EmoryID account (or a PI-sponsored Emory account for non-Emory associated personnel) (for remote access)

The NIC processing and data storage servers are hosted from an isolated CVNR NIC subnet within the Emory academic network.  These servers are accessible from the computers in the Neuroimaging Lab (VAMC 12C-138) or remotely via the Emory VPN.  They are not reachable from computers on the VA network.

## Suggested Software
#### VPN
Download and install the version appropriate for your operating system: \
[BIG-IP Edge Client](https://it.emory.edu/vpntools/)

After installation, in the `Server` field, input `vpn.emory.edu` and use your EmoryID account credentials for the username and password.

#### TurboVNC
TurboVNC is a remote desktop application which allows accelerated 3D graphics from NIC servers to be rendered remotely on client computers.
[Download TurboVNC for Mac](https://sourceforge.net/projects/turbovnc/files/3.0.1/TurboVNC-3.0.1-x86_64.dmg/download)

[Download TurboVNC for Windows](https://sourceforge.net/projects/turbovnc/files/3.0.1/TurboVNC-3.0.1-x64.exe/download)

After running the TurboVNC viewer, in the “VNC server” field, input:  <userName>@<serverName>.birc.emory.edu  (replace <username> with your NIC account username, and <serverName> with the name of the server:  “cone”, “lens”, or “ralph” with no quotes, i.e. mvernon@cone.birc.emory.edu).
 
After logging into TurboVNC for the first time, you should be prompted to change your password.  You will first be asked to input your current LDAP password then input what you’d like your new password to be (there is an 8 character minimum), then enter the new password one more time to confirm, when prompted.
 
When you are done with your session, make sure to log out.  If you have a processing job running and you intend to return to that session, you can simply close the TurboVNC window.  Then when you log back in via TurboVNC, a list of your currently open sessions will be presented.  You can select which session to connect to, then pickup where you left off.

#### FileZilla
[FileZilla](https://filezilla-project.org/download.php?type=client) is a secure file transfer protocol (SFTP) client used for moving files to and from NIC servers in a protected manner.

Setting up a FileZilla SFTP session:
To transfer files between a local machine and one of the servers, open FileZilla and input the following settings then select "Quickconnect":
* `Host`:  serverName.birc.emory.edu (replace "serverName" with `lens`, `rod`, `cone`, `falx`, or `ralph`)
* `Username`:  NIC account username
* `Password`:  NIC account password
* `Port`:  22

A notification about the server's host key being unknown may appear.  If so, select "Always trust this host" and press "OK".  In the `Local Site` and `Remote Site` directory windows, navigate to where the source and destination of the files to be transferred will be and drag the files from their source to their destination.  The status of the transfer(s) will be shown in the window pane at the bottom.

#### (Legacy) X2go
[X2go](https://wiki.x2go.org/doku.php/doc:newtox2go) is the former remote desktop client for viewing NIC processing server (`rod` and `falx` only) graphical applications on your local desktop.  (To use X2go on a Mac, you'll also need to install [XQuartz](https://www.xquartz.org/))

Setting up X2go:
Select the New Session icon and input the following settings:
* `Session name`:  something descriptive (such as the name of the server you're connecting to: rod or falx)
* `Host`:  serverName.birc.emory.edu (replace "serverName" with `rod` or `falx`)
* `Login`:  NIC account username
* `Session type`:  XFCE

## Contact Info
#### Mark Vernon
Email:  mverno2@emory.edu \
Office:  12C-119 \
Phone:  404-321-6111 (ext. 121191)

#### Dan Wakeman
Email:  dwakem2@emory.edu \
Office:  12C-117 \
Phone:  404-321-6111 (ext. 121175)
