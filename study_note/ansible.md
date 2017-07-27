# Windows
Windows Remote Management

1. Add ACL
```
PS D:\> winrm configSDDL default
```

2. Enable PowerShell remoting
```
PS D:\> Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
PS D:\> Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

3. 
```
PS D:\> ConfigureRemotingForAnsible.ps1 -ForceNewSSLCert
```
[ConfigureRemotingForAnsible](https://github.com/ansible/ansible/blob/devel/examples/scripts/ConfigureRemotingForAnsible.ps1)

4. Create an HTTPS listener by typing the following command: 
```
PS D:\> winrm quickconfig -transport:https. 
```
Be aware that you must open port 5986 for HTTPS transport to work.

##
Reference 
[winrm](https://msdn.microsoft.com/en-us/library/aa384372(v=vs.85).aspx)



# Linux

```
ansible all -m ping -i /etc/ansible/hosts --key-file=~/.ssh/helloworld.pem -vvvv
```
- -vvvv: Debug mode
- --key-file: with specific private key (or you could import your private key into remote machine)

Need to install python on the remote machine
> ansible {host_in_inventory} -m {command} -i {inventory_file} --key-file=~/.ssh/xxx.pem 

```
ansible all -m ping -i /etc/ansible/hosts --key-file=~/.ssh/xxx.pem 

ec2-127-0-1-1.compute-1.amazonaws.com | FAILED! => {
    "changed": false, 
    "failed": true, 
    "module_stderr": "Shared connection to ec2-54-197-2-221.compute-1.amazonaws.com closed.\r\n", 
    "module_stdout": "/bin/sh: 1: /usr/bin/python: not found\r\n", 
    "msg": "MODULE FAILURE", 
    "rc": 0
}
```

```
ansible all -m ping -i /etc/ansible/hosts 
ec2.compute-1.amazonaws.com | SUCCESS => {
    "changed": false, 
    "ping": "pong"
}
```

```
ansible all -a "/bin/echo hello" -i /etc/ansible/hosts 
ec2.compute-1.amazonaws.com | SUCCESS | rc=0 >>
hello
```
