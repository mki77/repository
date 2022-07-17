@for /f "tokens=3*" %%p in ('REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v Desktop') do (mkdir "%%p\GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}")
