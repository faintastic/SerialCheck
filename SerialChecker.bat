@echo off
title Serial Checker
echo.
color 90
echo.
color 90 
:start
color 4  
cls                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
echo [91m       Volumeid(s):
echo [90m==========================[97m
vol C:
vol D:
echo [90m==========================[97m
echo [93m       Motherboard
echo [90m==========================[97m
wmic baseboard get serialnumber
echo [90m==========================[97m
echo [92m        CHASSIS
echo [90m==========================[97m
wmic systemenclosure get serialnumber
echo [90m==========================[97m
echo [96m        SMBIOS
echo [90m==========================[97m
wmic path win32_computersystemproduct get uuid
echo [90m==========================[97m
echo [95m         BIOS
echo [90m==========================[97m
wmic bios get serialnumber
echo [90m==========================[97m
echo [91m         CPU
echo [90m==========================[97m
wmic cpu get serialnumber
echo [90m==========================[97m
echo [92m         MAC
echo [90m==========================[97m
getmac
echo [90m==============================================================================[97m
pause
