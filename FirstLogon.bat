@echo off


START /WAIT %SystemRoot%\regedit.exe -s %~dp0/qgis.reg
