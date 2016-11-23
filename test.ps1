import winrm

s = winrm.Session('http://windows-host:5985/wsman' , auth=('john.smith', 'secret'))
r = s.run_cmd('ipconfig', ['/all'])
