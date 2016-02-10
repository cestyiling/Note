set website=""
cd C:\Windows\System32\inetsrv
appcmd.exe set config %website% -section:system.webServer/security/ipSecurity /+"[ipAddress='${IP}',subnetMask='255.255.0.0',allowed='True']" /commit:apphost
