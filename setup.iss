#define AppName "Orb Project"
#define AppPublisher "Orb Project Management, SAS"
#define MyAppURL "https://orbprojectmanagement.com"
#define AppExeName "OrbProject.exe"
#define AppSourceDir "OrbProject"  // Suppression du slash au début

[Setup]
AppId={{369F2C6A-D016-4DA1-B76A-D73FF049BA1C}}
AppName={#AppName}
AppVersion={#AppVersion}
AppPublisher={#AppPublisher}
DefaultDirName={autopf}\{#AppName}
DefaultGroupName={#AppName}
OutputDir=.\Output
OutputBaseFilename={#AppName}_Setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern
DisableDirPage=yes
DisableProgramGroupPage=yes
AlwaysOverwrite=yes
OverwriteUninstRegEntries=yes
Uninstallable=yes
ShowLanguageDialog=no

[Files]
Source: "{#AppSourceDir}\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#AppName}"; Filename: "{app}\{#AppExeName}"
Name: "{commondesktop}\{#AppName}"; Filename: "{app}\{#AppExeName}"; Flags: runascurrentuser

[Run]
Filename: "{app}\{#AppExeName}"; Description: "Lancer {#AppName}"; Flags: nowait postinstall
