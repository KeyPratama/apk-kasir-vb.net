; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Ukk2024(RayaDaffaPratama-21117170)"
#define MyAppVersion "1.0"
#define MyAppPublisher "Batur.Web"
#define MyAppURL "https://www.baturweb.com/"
#define MyAppExeName "UKK2024(RayaDaffa-0004886217).exe"
#define MyAppAssocName MyAppName + " File"
#define MyAppAssocExt ".myp"
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{0E41A33D-AF36-44E9-BBC0-82FBE397B719}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
ChangesAssociations=yes
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=D:\ukk v2.0\UKK2024(RayaDaffa-0004886217)\UKK2024(RayaDaffa-0004886217)\Installer
OutputBaseFilename=Ukk2024(RayaDaffaPratama-21117170)
SetupIconFile=D:\ukk v2.0\UKK2024(RayaDaffa-0004886217)\icon aplikasi.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\ukk v2.0\UKK2024(RayaDaffa-0004886217)\UKK2024(RayaDaffa-0004886217)\bin\Debug\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\ukk v2.0\UKK2024(RayaDaffa-0004886217)\UKK2024(RayaDaffa-0004886217)\bin\Debug\UKK2024(RayaDaffa-0004886217).exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\ukk v2.0\UKK2024(RayaDaffa-0004886217)\UKK2024(RayaDaffa-0004886217)\bin\Debug\UKK2024(RayaDaffa-0004886217).pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\ukk v2.0\UKK2024(RayaDaffa-0004886217)\UKK2024(RayaDaffa-0004886217)\bin\Debug\UKK2024(RayaDaffa-0004886217).vshost.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\ukk v2.0\UKK2024(RayaDaffa-0004886217)\UKK2024(RayaDaffa-0004886217)\bin\Debug\UKK2024(RayaDaffa-0004886217).vshost.exe.manifest"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\ukk v2.0\UKK2024(RayaDaffa-0004886217)\UKK2024(RayaDaffa-0004886217)\bin\Debug\UKK2024(RayaDaffa-0004886217).vshost.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Program Files (x86)\DevExpress 15.2\Components\Bin\Framework\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".myp"; ValueData: ""

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

