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
* Session name:  something descriptive (such as the name of the workstation you're connecting to: lens, rod, cone, falx, or ralph)
* Host:  workstationName.birc.emory.edu (replace "workstationName" with lens, rod, cone, falx, or ralph)
* Login: NIC account username
* Session type:  XFCE

#### FileZilla
[FileZilla](https://filezilla-project.org/download.php?type=client) is a secure file transfer protocol (SFTP) client used for moving files to and from NIC workstations in a protected manner.


