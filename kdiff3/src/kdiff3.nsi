;NSIS Modern User Interface version 1.63
;MultiLanguage Example Script
;Written by Joost Verburg
!define MUI_PRODUCT "KDiff3" ;Define your own software name here
!ifndef MUI_VERSION
;!define MUI_VERSION "" ;Define your own software version here
!include "version.nsi"
!endif
!ifndef QTDIR
!define QTDIR "f:\qt\3.1.2"
!endif
!ifndef WINDOWS_DIR
!define WINDOWS_DIR "c:\windows"
!endif
!include "MUI.nsh"

;--------------------------------
;Configuration
    InstallDir "$PROGRAMFILES\KDiff3"
    InstallDirRegKey HKEY_LOCAL_MACHINE "SOFTWARE\${MUI_PRODUCT}" ""
    ;DirShow show ; (make this hide to not let the user change it)
    ;DirText "Select the directory to install ${MUI_PRODUCT} in:"


  ;General
  OutFile "KDiff3Setup_${MUI_VERSION}.exe"
  setCompressor zlib

  
  
  ;Remember the installer language
  !define MUI_LANGDLL_REGISTRY_ROOT "HKCU" 
  !define MUI_LANGDLL_REGISTRY_KEY "Software\${MUI_PRODUCT}" 
  !define MUI_LANGDLL_REGISTRY_VALUENAME "Installer Language"
  ;Remember the Start Menu Folder
  !define MUI_STARTMENUPAGE_REGISTRY_ROOT "HKCU" 
  !define MUI_STARTMENUPAGE_REGISTRY_KEY "Software\${MUI_PRODUCT}" 
  !define MUI_STARTMENUPAGE_REGISTRY_VALUENAME "${MUI_PRODUCT}"
  !define TEMP $R0

;--------------------------------
;Modern UI Configuration

  !define MUI_LICENSEPAGE
  !define MUI_COMPONENTSPAGE
  !define MUI_DIRECTORYPAGE
  !define MUI_STARTMENUPAGE
  
  !define MUI_ABORTWARNING
  
  !define MUI_UNINSTALLER
  !define MUI_UNCONFIRMPAGE
  !define MUI_HEADERBITMAP "kdiff3.bmp"
;--------------------------------
;Languages

  !insertmacro MUI_LANGUAGE "English"
  !insertmacro MUI_LANGUAGE "French"
  !insertmacro MUI_LANGUAGE "German"
  !insertmacro MUI_LANGUAGE "Spanish"
  !insertmacro MUI_LANGUAGE "SimpChinese"
  !insertmacro MUI_LANGUAGE "TradChinese"    
  !insertmacro MUI_LANGUAGE "Japanese"
  !insertmacro MUI_LANGUAGE "Korean"
  !insertmacro MUI_LANGUAGE "Italian"
  !insertmacro MUI_LANGUAGE "Dutch"
  !insertmacro MUI_LANGUAGE "Danish"
  !insertmacro MUI_LANGUAGE "Greek"
  !insertmacro MUI_LANGUAGE "Russian"
  !insertmacro MUI_LANGUAGE "PortugueseBR"
  !insertmacro MUI_LANGUAGE "Polish"
  !insertmacro MUI_LANGUAGE "Ukrainian"
  !insertmacro MUI_LANGUAGE "Czech"
  !insertmacro MUI_LANGUAGE "Slovak"
  !insertmacro MUI_LANGUAGE "Croatian"
  !insertmacro MUI_LANGUAGE "Bulgarian"
  !insertmacro MUI_LANGUAGE "Hungarian"
  !insertmacro MUI_LANGUAGE "Thai"
  !insertmacro MUI_LANGUAGE "Romanian"
  !insertmacro MUI_LANGUAGE "Macedonian"
  !insertmacro MUI_LANGUAGE "Turkish"
  
;--------------------------------
;Language Strings
    
  ;Descriptions
  LangString DESC_SecCopyUI ${LANG_ENGLISH} "Software: English description"
  LangString DESC_SecCopyUI ${LANG_FRENCH} "Software: French description"
  LangString DESC_SecCopyUI ${LANG_GERMAN} "Software: German description"
  LangString DESC_SecCopyUI ${LANG_SPANISH} "Software: Spanish description"
  LangString DESC_SecCopyUI ${LANG_SIMPCHINESE} "Software: Simplified Chinese description"
  LangString DESC_SecCopyUI ${LANG_TRADCHINESE} "Software: Traditional Chinese description"
  LangString DESC_SecCopyUI ${LANG_JAPANESE} "Software: Japanese description"
  LangString DESC_SecCopyUI ${LANG_KOREAN} "Software: Korean description"
  LangString DESC_SecCopyUI ${LANG_ITALIAN} "Software: Italian description"
  LangString DESC_SecCopyUI ${LANG_DUTCH} "Software: Dutch description"
  LangString DESC_SecCopyUI ${LANG_DANISH} "Software: Danish description"
  LangString DESC_SecCopyUI ${LANG_GREEK} "Software: Greek description"
  LangString DESC_SecCopyUI ${LANG_RUSSIAN} "Software: Russian description"
  LangString DESC_SecCopyUI ${LANG_PORTUGUESEBR} "Software: Portuguese (Brasil) description"
  LangString DESC_SecCopyUI ${LANG_POLISH} "Software: Polish description"
  LangString DESC_SecCopyUI ${LANG_UKRAINIAN} "Software: Ukrainian description"
  LangString DESC_SecCopyUI ${LANG_CZECH} "Software: Czechian description"
  LangString DESC_SecCopyUI ${LANG_SLOVAK} "Software: Slovakian description"
  LangString DESC_SecCopyUI ${LANG_CROATIAN} "Software: Slovakian description"
  LangString DESC_SecCopyUI ${LANG_BULGARIAN} "Software: Bulgarian description"
  LangString DESC_SecCopyUI ${LANG_HUNGARIAN} "Software: Hungarian description"
  LangString DESC_SecCopyUI ${LANG_THAI} "Software: Thai description"
  LangString DESC_SecCopyUI ${LANG_ROMANIAN} "Software: Romanian description"
  LangString DESC_SecCopyUI ${LANG_MACEDONIAN} "Software: Macedonian description"
  LangString DESC_SecCopyUI ${LANG_TURKISH} "Software: Turkish description"
  
;--------------------------------
;Data
  
  LicenseData /LANG=${LANG_ENGLISH} "License.txt"
  LicenseData /LANG=${LANG_FRENCH} "License.txt"
  LicenseData /LANG=${LANG_GERMAN} "License.txt"
  LicenseData /LANG=${LANG_SPANISH} "License.txt"
  LicenseData /LANG=${LANG_SIMPCHINESE} "License.txt"
  LicenseData /LANG=${LANG_TRADCHINESE} "License.txt"
  LicenseData /LANG=${LANG_JAPANESE} "License.txt"
  LicenseData /LANG=${LANG_KOREAN} "License.txt"
  LicenseData /LANG=${LANG_ITALIAN} "License.txt"
  LicenseData /LANG=${LANG_DUTCH} "License.txt"
  LicenseData /LANG=${LANG_DANISH} "License.txt"
  LicenseData /LANG=${LANG_GREEK} "License.txt"
  LicenseData /LANG=${LANG_RUSSIAN} "License.txt"
  LicenseData /LANG=${LANG_PORTUGUESEBR} "License.txt"
  LicenseData /LANG=${LANG_POLISH} "License.txt"
  LicenseData /LANG=${LANG_UKRAINIAN} "License.txt"
  LicenseData /LANG=${LANG_CZECH} "License.txt"
  LicenseData /LANG=${LANG_SLOVAK} "License.txt"
  LicenseData /LANG=${LANG_CROATIAN} "License.txt"
  LicenseData /LANG=${LANG_BULGARIAN} "License.txt"
  LicenseData /LANG=${LANG_HUNGARIAN} "License.txt"
  LicenseData /LANG=${LANG_THAI} "License.txt"
  LicenseData /LANG=${LANG_ROMANIAN} "License.txt"
  LicenseData /LANG=${LANG_MACEDONIAN} "License.txt"
  LicenseData /LANG=${LANG_TURKISH} "License.txt"

;--------------------------------
;Reserve Files
  
  ;Things that need to be extracted on first (keep these lines before any File command!)
  ;Only useful for BZIP2 compression
  !insertmacro MUI_RESERVEFILE_LANGDLL
  
;--------------------------------
;Installer Sections
  
Section "Software" SecCopyUI 2
SectionIn 2 RO

    SetOutPath "$INSTDIR"
    ; add files / whatever that need to be installed here.
    WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\${MUI_PRODUCT}" "" "$INSTDIR"
    WriteRegStr HKEY_LOCAL_MACHINE "Software\Microsoft\Windows\CurrentVersion\Uninstall\${MUI_PRODUCT}" "DisplayName" "${MUI_PRODUCT} (remove only)"
    WriteRegStr HKEY_LOCAL_MACHINE "Software\Microsoft\Windows\CurrentVersion\Uninstall\${MUI_PRODUCT}" "UninstallString" '"$INSTDIR\uninst.exe"'
    File "..\kdiff3.exe"
    File "License.txt"
    File "${WINDOWS_DIR}\system32\msvcp70.dll"
    File "${WINDOWS_DIR}\system32\msvcr70.dll"
    File "${QTDIR}\lib\qt-mt*.dll"
    File "..\html\*.*"
    File "..\demo.oldb"
    File "..\trd_*.qm"
    File "${MYSQL}\lib\opt\libmysql.dll"

    SetOutPath "$INSTDIR\sqldrivers"
    File "${QTDIR}\plugins\sqldrivers\*.dll"
    SetOutPath "$INSTDIR\imageformats"
    File "${QTDIR}\plugins\imageformats\*.dll"
    SetOutPath "$INSTDIR\styles"
    File "..\styles\*.dll"
  !insertmacro MUI_STARTMENU_WRITE_BEGIN
    
    ;Create shortcuts
    CreateDirectory "$SMPROGRAMS\${MUI_STARTMENUPAGE_VARIABLE}"
    CreateShortCut "$SMPROGRAMS\${MUI_STARTMENUPAGE_VARIABLE}\KDiff3.lnk" "$INSTDIR\kdiff3.exe"
    CreateShortCut "$SMPROGRAMS\${MUI_STARTMENUPAGE_VARIABLE}\Uninstal.lnk" "$INSTDIR\uninst.exe"
  
  !insertmacro MUI_STARTMENU_WRITE_END
  
    
    ; write out uninstaller
    WriteUninstaller "$INSTDIR\uninst.exe"
    
    
  ;Store install folder
  WriteRegStr HKCU "Software\${MUI_PRODUCT}" "" $INSTDIR
  
SectionEnd
 
Section "Start of the application" SecStart 6

    Exec "$INSTDIR\kdiff3.exe"

SectionEnd
 
;Display the Finish header
;Insert this macro after the sections if you are not using a finish page
!insertmacro MUI_SECTIONS_FINISHHEADER

;--------------------------------
;Installer Functions

Function .onInit
;  SetOutPath $TEMP1
;  File /oname=spltmp.bmp "promotion.bmp"

; optional
; File /oname=spltmp.wav "my_splashshit.wav"

;  advsplash::show 5000 600 40 0 $TEMP1\spltmp

;  Pop $0 ; $0 has '1' if the user closed the splash screen early,
         ; '0' if everything closed normal, and '-1' if some error occured.

;  Delete $TEMP1\spltmp.bmp
;  Delete $TEMP1\spltmp.wav

  !insertmacro MUI_LANGDLL_DISPLAY

FunctionEnd

;--------------------------------
;Descriptions

!insertmacro MUI_FUNCTIONS_DESCRIPTION_BEGIN
  !insertmacro MUI_DESCRIPTION_TEXT ${SecCopyUI} $(DESC_SecCopyUI)
!insertmacro MUI_FUNCTIONS_DESCRIPTION_END
 
;--------------------------------
;Uninstaller Section

Section "Uninstall"

; add delete commands to delete whatever files/registry keys/etc you installed here.
  ReadRegStr ${TEMP} "${MUI_STARTMENUPAGE_REGISTRY_ROOT}" "${MUI_STARTMENUPAGE_REGISTRY_KEY}" "${MUI_STARTMENUPAGE_REGISTRY_VALUENAME}"
  StrCmp ${TEMP} "" noshortcuts
  
    RMDir /r "$SMPROGRAMS\${TEMP}"
    
  noshortcuts:

  RMDir "$INSTDIR"
  Delete "$INSTDIR\uninst.exe"
DeleteRegKey HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\${MUI_PRODUCT}"
DeleteRegKey HKEY_LOCAL_MACHINE "SOFTWARE\Classes\oldb_auto_file\shell\open\command" 
DeleteRegKey HKEY_LOCAL_MACHINE "SOFTWARE\Classes\osio_auto_file\shell\open\command" 
DeleteRegKey HKEY_LOCAL_MACHINE "SOFTWARE\FriSebSoftware\KDiff3" 
DeleteRegKey HKEY_CLASSES_ROOT  ".oldb" 
DeleteRegKey HKEY_CLASSES_ROOT  ".osio" 
RMDir /r "$INSTDIR"
!insertmacro MUI_UNFINISHHEADER

SectionEnd

;--------------------------------
;Uninstaller Functions

Function un.onInit

  ;Get language from registry
  ReadRegStr $LANGUAGE HKCU "Software\${MUI_PRODUCT}" "Installer Language"
  
FunctionEnd
