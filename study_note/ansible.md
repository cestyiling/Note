# Windows
Windows Remote Management

# Linux

```
ansible all -m ping -i /etc/ansible/hosts --key-file=~/.ssh/helloworld.pem -vvvv
```
- -vvvv: Debug mode
- --key-file: with specific private key (or you could import your private key into remote machine)

Need to install python on the remote machine
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
