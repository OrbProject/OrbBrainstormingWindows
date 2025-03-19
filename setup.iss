#define AppName "Orb Project"
#define AppPublisher "Orb Project Management, SAS"
#define MyAppURL "https://orbprojectmanagement.com"
#define AppExeName "OrbProject.exe"
#define AppSourceDir "{src}"  // Dossier racine du repo contenant le build Unity

[Setup]
AppId={{369F2C6A-D016-4DA1-B76A-D73FF049BA1C}}
AppName={#AppName}
AppVersion={#AppVersion}
AppPublisher={#AppPublisher}
DefaultDirName={autopf}\{#AppName}
DefaultGroupName={#AppName}
OutputDir=.\Output
OutputBaseFilename={#AppName}_Setup_{#AppVersion}
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Files]
Source: "{#AppSourceDir}\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#AppName}"; Filename: "{app}\{#AppExeName}"
Name: "{commondesktop}\{#AppName}"; Filename: "{app}\{#AppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#AppExeName}"; Description: "Lancer {#AppName}"; Flags: nowait postinstall skipifsilent
