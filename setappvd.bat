set website=
set des=

cd C:\Windows\System32\inetsrv
appcmd set app /app.name: %website% /[path='/'].physicalPath:%des%
