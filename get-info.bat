@echo on
call :sub > "%userprofile%\Desktop\PC-info-out-local-user.txt"
exit /b

:sub
echo -------------------
echo System Architecture
echo -------------------
echo ver	Displays the Windows version.
ver
echo -------------------
echo systeminfo
systeminfo
echo -------------------
echo systeminfo /S ComputerName /U username /P password	This tool displays operating system configuration information for a local or remote machine, including service pack levels.

echo -------------------
echo wmic os list brief	Installed Operating System/s management.
wmic os list brief
echo -------------------
echo wmic computersystem list full	Computer system management.
wmic computersystem list full	
echo -------------------
echo Processes
echo -------------------
echo 

echo -------------------
echo tasklist
tasklist

echo -------------------
echo tasklist /M
tasklist /M

echo -------------------
echo tasklist /V	displays a list of currently running processes on a local machine.
tasklist /V

echo -------------------
echo wmic process list brief	Process management.
wmic process list brief	

echo -------------------
echo Users and Groups
echo -------------------

echo -------------------
echo whoami	Lists information about the user you are currently logged in as.
whoami	

echo -------------------
echo net user	displays user account information.
net user	

echo -------------------
echo net user /domain	Performs the operation on the domain controller in the computer's primary domain.
net user /domain	

echo -------------------
echo net localgroup administrators	displays the local administrators group on the computer.
net localgroup administrators	

echo -------------------
echo net localgroup administrators /domain	displays the local administrators group on current domain controller.
net localgroup administrators /domain	

echo -------------------
echo net group /domain	Display groups and performs the operation on the domain controller in the current domain.
net group /domain	

echo -------------------
echo net group "Domain Admins" /domain	Query users from domain admins in current domain.
net group "Domain Admins" /domain	

echo -------------------
echo net group "Domain Computers" /domain	Query all domain computers in current domain.
net group "Domain Computers" /domain	

echo -------------------
echo net group "Domain Controllers" /domain	Query Domain Comtrollers Computers.
net group "Domain Controllers" /domain	

echo -------------------
echo net group "Domain Policy Creator Owners" /domain	Query Domain Policy Creators.
net group "Domain Policy Creator Owners" /domain	

echo -------------------
echo net accounts /domain	Updates the user accounts database and modifies password and logon requirements for all accounts. Performs the operation on the primary domain controller of the current domain.
net accounts /domain	

echo -------------------
echo wmic useraccount	User account management.

echo -------------------
echo wmic useraccount LIST BRIEF	Print account information.


echo -------------------
echo Services
echo -------------------

echo -------------------
echo sc qc servicename	Queries the configuration information for a service. (BINARY_PATH_NAME and so on.)
sc qc servicename	

echo -------------------
echo sc query servicename	Queries the status for a service, or enumerates the status for types of services.
sc query servicename	

echo -------------------
echo sc create cmdsys type= own type= interact binPath= "c:\windows\system32\cmd.exe /c cmd.exe" & sc start cmdsys	Creates a service entry in the registry and Service Database.
sc create cmdsys type= own type= interact binPath= "c:\windows\system32\cmd.exe /c cmd.exe" & sc start cmdsys	

echo -------------------
echo Security
echo -------------------

echo -------------------
echo wmic qfe get hotfixid	Information about patches installed on the windows
wmic qfe get hotfixid	

echo -------------------
echo NETSH FIREWALL show all	Show Allowed programs configuration for Domain/Standard profile.
NETSH FIREWALL show all	

echo -------------------
echo Networking
echo -------------------


echo -------------------
echo ipconfig /all	Displays the full TCP/IP configuration for all adapters.
ipconfig /all	

echo -------------------
echo ipconfig /displaydns	Displays the contents of the DNS client resolver cache, which includes both entries preloaded from the local Hosts file and any recently obtained resource records for name queries resolved by the computer. The DNS Client service uses this information to resolve frequently queried names quickly, before querying its configured DNS servers.
ipconfig /displaydns	

echo -------------------
echo netstat -ano	Displays active TCP connections and includes the process ID (PID) for each connection.
netstat -ano	

echo -------------------
echo netstat -ano -p tcp	Show tcp connections.
netstat -ano -p tcp	

echo -------------------
echo netstat -ano -p udp	Show udp connections.
netstat -ano -p 

echo -------------------
echo netstat -r	Displays the system's routing table.
netstat -r

echo -------------------
echo route print	Displays the system's routing table.
route print	


echo -------------------
echo File Systems
echo -------------------


echo -------------------
echo fsutil fsinfo drives	Lists the current drives on the system.
fsutil fsinfo drives

echo -------------------
echo wmic volume	Local storage volume management.
wmic volume

echo -------------------
echo net share	displays information about all of the resources that are shared on the local computer.
net share

echo -------------------
echo wmic share	Shared resource management.
wmic share


echo -------------------
echo Startup and Shutdown
echo -------------------

echo -------------------
echo wmic startup	Management of commands that run automatically when users log onto the computer system.
wmic startup 

echo -------------------
echo Firewall Commands
echo -------------------
echo 
echo NETSH FIREWALL show all
netsh firewall show all
echo -------------------
echo 
echo List the different log files the system is keeping
echo -------------------
echo wevtutil el
wevtutil el
echo Show all current environment variables
echo -------------------
echo set
set
echo Display information about Remote Desktop Services sessions.
echo -------------------
echo qwinsta
qwinsta
echo 
echo Enables an administrator to create, delete, query, change, run and end scheduled tasks on a local or remote system.
echo -------------------
echo schtasks 
schtasks /query /fo csv /v

echo Displays and modifies the IP-to-Physical address translation tables used by address resolution protocol (ARP).
echo -------------------
echo arp -a
arp -a

echo This command line tool displays the Resultant Set of Policy (RSoP) information for a target user and computer.
echo -------------------
echo gpresult /z
gpresult /z

echo any defined hosts
echo -------------------
echo type %WINDIR%\System32\drivers\etc\hosts
type %WINDIR%\System32\drivers\etc\hosts

echo tree
echo -------------------
echo tree /F c:
tree /F c:

echo Query state of the firewall
echo -------------------
echo netsh firewall show state
netsh firewall show state


echo description
echo -------------------
echo command
command

echo description
echo -------------------
echo command
command

exit /b
