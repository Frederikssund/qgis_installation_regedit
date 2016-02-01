@echo off

if [%User_LoggedOn%] == [1] %IXP-LogoffUser% 3

%img%\osgeo4w-setup-x86_64.exe -q --local-install --root c:\OSGeo4w -l "%img%\x86_64\release"

%SOFTWARESERVER%\SW\UTL\Robocopy /S %img%\plugins C:\OSGeo4w\apps\qgis\python\plugins

COPY "%img%\QGIS Desktop 2.8.2.lnk" "%CommonDesktop%\QGIS Desktop 2.8.2.lnk" /Y
DEL "%CommonDesktop%\beegis.lnk" /Q
DEL "%CommonDesktop%\MSYS.lnk" /Q
DEL "%CommonDesktop%\Monteverdi.lnk" /Q
DEL "%CommonDesktop%\nettools.lnk" /Q
DEL "%CommonDesktop%\OSGeo4W Shell.lnk" /Q
DEL "%CommonDesktop%\uDig.lnk" /Q

