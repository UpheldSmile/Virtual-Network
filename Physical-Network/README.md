<h1>Introduction</h1>

![image](https://github.com/UpheldSmile/Virtual-Network/assets/49825639/2147f629-1b16-4569-a52f-7623802b7cc5)


<b>Creation of DHCP, File, Secondary DC, WDS, WSUS, Print, FTP servers coming eventually - will do OU, Users, Groups and GPO soon too [Dec 2023]</b>

This guide outlines the steps I took to create a Windows Server 2019 environment for practicing Active Directory (AD) on virtual machines.

<h2>1. Installing Windows Server 2019</h2>
Download the Windows Server 2019 ISO from the official Microsoft website.
Create a new virtual machine (VM) using your preferred virtualization software (e.g., Hyper-V, VMware).
Mount the Windows Server 2019 ISO to the VM and proceed with the installation.

![image](https://github.com/UpheldSmile/Virtual-Network/assets/49825639/3d2db371-9e66-4462-bfe8-68d6d9e21c7e)

<h2>2. Configuring Network Adapters</h2>

In the VM settings, add two network adapters:
Adapter 1 (NAT): Connects the VM to the external network for internet access. Configure this as a NAT adapter.
Adapter 2 (Internal): Enables VM-to-VM communication within the domain. This adapter will be used exclusively for internal traffic.

<h2>3. Installing Active Directory</h2>
After the Windows Server installation, launch the Server Manager.

Install the Active Directory Domain Services (AD DS) role.

Follow the AD DS installation wizard to promote the server to a domain controller.

Configure the domain and provide necessary information.

![image](https://github.com/UpheldSmile/Virtual-Network/assets/49825639/e55b7046-b36c-4100-aa4d-f0443e00207d)
![image](https://github.com/UpheldSmile/Virtual-Network/assets/49825639/f207493c-8808-4966-af49-133b581dd8c5)


<h2>4. Verifying Connectivity</h2>
Ensure that Adapter 1 (NAT) allows the server to access the internet.
Verify that Adapter 2 (Internal) allows communication between VMs within the domain.

<h2>5. Testing Active Directory</h2>
Create virtual machines to join the domain and test Active Directory functionality.
Configure DNS settings on each VM to point to the domain controller.
<br><br>
•	In the ADUC console, expand the tree to locate the domain to which the OU will be added.
<br><br>
<b>Creating the Organizational Unit:</b>

•	Right-click on the domain name and choose "New" > "Organizational Unit."
•	Provide a meaningful name for the OU, such as "Admins," and press Enter.
<br><br>
<b>Delegating Administrative Permissions:</b>

•	Right-click on the newly created "Admins" OU and select "Delegate Control."
•	Follow the wizard to delegate administrative permissions to specific users or groups responsible for administering the OU.

<br><br>
<b>Moving Administrators to the New OU: </b>

•	Identify the users who have administrative privileges.
•	Right-click on each user, navigate to "Move," and select the "Admins" OU as the destination.
<br><br>
The successful creation of the "Admins" OU contributes to the organization's security posture by implementing a best practice for managing administrative accounts. This segregation promotes effective access control and simplifies the process of monitoring and maintaining user accounts with elevated privileges.
![image](https://github.com/UpheldSmile/Virtual-Network/assets/49825639/6404b732-846e-4cd7-be4e-e3c3e86f284d)

<h2>Making GPO's</h2>

![image](https://github.com/UpheldSmile/Virtual-Network/assets/49825639/8b7e286b-5644-4161-a5be-79537287ce58)


