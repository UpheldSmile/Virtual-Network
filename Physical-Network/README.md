<h1>Introduction</h1>

This guide outlines the steps I took to create a Windows Server 2019 environment for practicing Active Directory (AD) on virtual machines.

1. Installing Windows Server 2019
Download the Windows Server 2019 ISO from the official Microsoft website.
Create a new virtual machine (VM) using your preferred virtualization software (e.g., Hyper-V, VMware).
Mount the Windows Server 2019 ISO to the VM and proceed with the installation.
![image](https://github.com/UpheldSmile/Virtual-Network/assets/49825639/3d2db371-9e66-4462-bfe8-68d6d9e21c7e)


3. Configuring Network Adapters
In the VM settings, add two network adapters:
Adapter 1 (NAT): Connects the VM to the external network for internet access. Configure this as a NAT adapter.
Adapter 2 (Internal): Enables VM-to-VM communication within the domain. This adapter will be used exclusively for internal traffic.

5. Installing Active Directory
After the Windows Server installation, launch the Server Manager.
Install the Active Directory Domain Services (AD DS) role.
Follow the AD DS installation wizard to promote the server to a domain controller.
Configure the domain and provide necessary information.
![image](https://github.com/UpheldSmile/Virtual-Network/assets/49825639/e55b7046-b36c-4100-aa4d-f0443e00207d)
![image](https://github.com/UpheldSmile/Virtual-Network/assets/49825639/f207493c-8808-4966-af49-133b581dd8c5)


7. Verifying Connectivity
Ensure that Adapter 1 (NAT) allows the server to access the internet.
Verify that Adapter 2 (Internal) allows communication between VMs within the domain.

9. Testing Active Directory
Create virtual machines to join the domain and test Active Directory functionality.
Configure DNS settings on each VM to point to the domain controller.
