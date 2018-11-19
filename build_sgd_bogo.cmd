:Build partitions
diskpart /s k:\scripts\nativeboot_uefi.txt

:Copy VHD to local storage
robocopy k:\sources m:\sources /mir /r:2 /w:1

:Native Boot VHD
diskpart /s k:\scripts\create_vhdboot.txt

:Add boot entries to BCD
cd c:\windows\system32
bcdboot c:\windows\ /s S: /f ALL
