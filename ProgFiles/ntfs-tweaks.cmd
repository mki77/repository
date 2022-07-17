@echo off
:: Set NTFS behavior in HKLM\SYSTEM\CurrentControlSet\Control\Filesystem
fsutil behavior set disablecompression 1
fsutil behavior set disablelastaccess 1
fsutil behavior set encryptpagingfile 0
fsutil behavior set memoryusage 2
fsutil behavior set mftzone 1
:: Disable NTFS 8dot3names
fsutil behavior set allowextchar 0
fsutil behavior set disable8dot3 1
fsutil 8dot3name strip /f /s d:
timeout /t 5 >nul
