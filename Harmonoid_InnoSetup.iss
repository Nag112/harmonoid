; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Harmonoid"
#define MyAppVersion "0.3.7.0"
#define MyAppPublisher "Hitesh Kumar Saini"
#define MyAppURL "https://github.com/harmonoid/harmonoid"
#define MyAppExeName "harmonoid.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{C2D0837C-0DBE-432B-865E-53C092A56DFB}
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
LicenseFile=EULA.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog commandline
OutputBaseFilename=harmonoid-windows-setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern
SetupIconFile=windows\runner\resources\app_icon.ico
UninstallDisplayIcon={app}\{#MyAppExeName}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "armenian"; MessagesFile: "compiler:Languages\Armenian.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "bulgarian"; MessagesFile: "compiler:Languages\Bulgarian.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "icelandic"; MessagesFile: "compiler:Languages\Icelandic.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "slovak"; MessagesFile: "compiler:Languages\Slovak.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: "build/windows/runner/Release/{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "build/windows/runner/Release/*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Registry]

; Create the application capability key.
Root: HKA; Subkey: "Software\Harmonoid"; Flags: uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Harmonoid\Harmonoid"; Flags: uninsdeletekeyifempty
Root: HKA; Subkey: "Software\Harmonoid\Harmonoid\Capability"; ValueType: string; ValueName: "ApplicationDescription"; ValueData: "Plays & manages your music library. Looks beautiful & juicy."; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Harmonoid\Harmonoid\Capability"; ValueType: string; ValueName: "ApplicationName"; ValueData: "Harmonoid"; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\RegisteredApplications"; ValueType: string; ValueName: "Harmonoid"; ValueData: "Software\Harmonoid\Harmonoid\Capability"; Flags: uninsdeletevalue

; .ogg .oga .ogx .aac .m4a .mp3 .wma .wav .flac .opus .aiff .ac3 .adt .adts .amr .ec3 .m3u .m4r .wpl .zpl

Root: HKA; Subkey: "Software\Harmonoid\Harmonoid\Capability\FileAssociations"; ValueType: string; ValueName: ".ogg"; ValueData: "Harmonoid.ogg"; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Harmonoid\Harmonoid\Capability\FileAssociations"; ValueType: string; ValueName: ".oga"; ValueData: "Harmonoid.oga"; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Harmonoid\Harmonoid\Capability\FileAssociations"; ValueType: string; ValueName: ".ogx"; ValueData: "Harmonoid.ogx"; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Harmonoid\Harmonoid\Capability\FileAssociations"; ValueType: string; ValueName: ".aac"; ValueData: "Harmonoid.aac"; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Harmonoid\Harmonoid\Capability\FileAssociations"; ValueType: string; ValueName: ".m4a"; ValueData: "Harmonoid.m4a"; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Harmonoid\Harmonoid\Capability\FileAssociations"; ValueType: string; ValueName: ".mp3"; ValueData: "Harmonoid.mp3"; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Harmonoid\Harmonoid\Capability\FileAssociations"; ValueType: string; ValueName: ".wma"; ValueData: "Harmonoid.wma"; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Harmonoid\Harmonoid\Capability\FileAssociations"; ValueType: string; ValueName: ".wav"; ValueData: "Harmonoid.wav"; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Harmonoid\Harmonoid\Capability\FileAssociations"; ValueType: string; ValueName: ".flac"; ValueData: "Harmonoid.flac"; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Harmonoid\Harmonoid\Capability\FileAssociations"; ValueType: string; ValueName: ".opus"; ValueData: "Harmonoid.opus"; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Harmonoid\Harmonoid\Capability\FileAssociations"; ValueType: string; ValueName: ".aiff"; ValueData: "Harmonoid.aiff"; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Harmonoid\Harmonoid\Capability\FileAssociations"; ValueType: string; ValueName: ".ac3"; ValueData: "Harmonoid.ac3"; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Harmonoid\Harmonoid\Capability\FileAssociations"; ValueType: string; ValueName: ".adt"; ValueData: "Harmonoid.adt"; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Harmonoid\Harmonoid\Capability\FileAssociations"; ValueType: string; ValueName: ".adts"; ValueData: "Harmonoid.adts"; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Harmonoid\Harmonoid\Capability\FileAssociations"; ValueType: string; ValueName: ".amr"; ValueData: "Harmonoid.amr"; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Harmonoid\Harmonoid\Capability\FileAssociations"; ValueType: string; ValueName: ".ec3"; ValueData: "Harmonoid.ec3"; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Harmonoid\Harmonoid\Capability\FileAssociations"; ValueType: string; ValueName: ".m3u"; ValueData: "Harmonoid.m3u"; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Harmonoid\Harmonoid\Capability\FileAssociations"; ValueType: string; ValueName: ".m4r"; ValueData: "Harmonoid.m4r"; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Harmonoid\Harmonoid\Capability\FileAssociations"; ValueType: string; ValueName: ".wpl"; ValueData: "Harmonoid.wpl"; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Harmonoid\Harmonoid\Capability\FileAssociations"; ValueType: string; ValueName: ".zpl"; ValueData: "Harmonoid.zpl"; Flags: uninsdeletevalue


; .ogg
Root: HKA; Subkey: "Software\Classes\.ogg\OpenWithProgids"; ValueType: string; ValueName: "Harmonoid.ogg"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\Harmonoid.ogg"; ValueType: string; ValueName: ""; ValueData: "OGG File"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Harmonoid.ogg\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\Harmonoid.ogg\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".ogg"; ValueData: ""

; .oga
Root: HKA; Subkey: "Software\Classes\.oga\OpenWithProgids"; ValueType: string; ValueName: "Harmonoid.oga"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\Harmonoid.oga"; ValueType: string; ValueName: ""; ValueData: "OGA File"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Harmonoid.oga\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\Harmonoid.oga\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".oga"; ValueData: ""

; .ogx
Root: HKA; Subkey: "Software\Classes\.ogx\OpenWithProgids"; ValueType: string; ValueName: "Harmonoid.ogx"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\Harmonoid.ogx"; ValueType: string; ValueName: ""; ValueData: "OGX File"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Harmonoid.ogx\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\Harmonoid.ogx\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".ogx"; ValueData: ""

; .aac
Root: HKA; Subkey: "Software\Classes\.aac\OpenWithProgids"; ValueType: string; ValueName: "Harmonoid.aac"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\Harmonoid.aac"; ValueType: string; ValueName: ""; ValueData: "AAC File"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Harmonoid.aac\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\Harmonoid.aac\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".aac"; ValueData: ""

; .m4a
Root: HKA; Subkey: "Software\Classes\.m4a\OpenWithProgids"; ValueType: string; ValueName: "Harmonoid.m4a"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\Harmonoid.m4a"; ValueType: string; ValueName: ""; ValueData: "M4A File"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Harmonoid.m4a\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\Harmonoid.m4a\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".m4a"; ValueData: ""

; .mp3
Root: HKA; Subkey: "Software\Classes\.mp3\OpenWithProgids"; ValueType: string; ValueName: "Harmonoid.mp3"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\Harmonoid.mp3"; ValueType: string; ValueName: ""; ValueData: "MP3 File"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Harmonoid.mp3\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\Harmonoid.mp3\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".mp3"; ValueData: ""

; .wma
Root: HKA; Subkey: "Software\Classes\.wma\OpenWithProgids"; ValueType: string; ValueName: "Harmonoid.wma"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\Harmonoid.wma"; ValueType: string; ValueName: ""; ValueData: "WMA File"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Harmonoid.wma\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\Harmonoid.wma\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".wma"; ValueData: ""

; .wav
Root: HKA; Subkey: "Software\Classes\.wav\OpenWithProgids"; ValueType: string; ValueName: "Harmonoid.wav"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\Harmonoid.wav"; ValueType: string; ValueName: ""; ValueData: "WAV File"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Harmonoid.wav\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\Harmonoid.wav\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".wav"; ValueData: ""

; .flac
Root: HKA; Subkey: "Software\Classes\.flac\OpenWithProgids"; ValueType: string; ValueName: "Harmonoid.flac"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\Harmonoid.flac"; ValueType: string; ValueName: ""; ValueData: "FLAC File"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Harmonoid.flac\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\Harmonoid.flac\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".flac"; ValueData: ""

; .opus
Root: HKA; Subkey: "Software\Classes\.opus\OpenWithProgids"; ValueType: string; ValueName: "Harmonoid.opus"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\Harmonoid.opus"; ValueType: string; ValueName: ""; ValueData: "OPUS File"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Harmonoid.opus\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\Harmonoid.opus\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".opus"; ValueData: ""

; .aiff
Root: HKA; Subkey: "Software\Classes\.aiff\OpenWithProgids"; ValueType: string; ValueName: "Harmonoid.aiff"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\Harmonoid.aiff"; ValueType: string; ValueName: ""; ValueData: "AIFF File"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Harmonoid.aiff\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\Harmonoid.aiff\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".aiff"; ValueData: ""

; .ac3
Root: HKA; Subkey: "Software\Classes\.ac3\OpenWithProgids"; ValueType: string; ValueName: "Harmonoid.ac3"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\Harmonoid.ac3"; ValueType: string; ValueName: ""; ValueData: "AC3 File"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Harmonoid.ac3\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\Harmonoid.ac3\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".ac3"; ValueData: ""

; .adt
Root: HKA; Subkey: "Software\Classes\.adt\OpenWithProgids"; ValueType: string; ValueName: "Harmonoid.adt"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\Harmonoid.adt"; ValueType: string; ValueName: ""; ValueData: "ADT File"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Harmonoid.adt\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\Harmonoid.adt\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".adt"; ValueData: ""

; .adts
Root: HKA; Subkey: "Software\Classes\.adts\OpenWithProgids"; ValueType: string; ValueName: "Harmonoid.adts"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\Harmonoid.adts"; ValueType: string; ValueName: ""; ValueData: "ADTS File"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Harmonoid.adts\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\Harmonoid.adts\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".adts"; ValueData: ""

; .amr
Root: HKA; Subkey: "Software\Classes\.amr\OpenWithProgids"; ValueType: string; ValueName: "Harmonoid.amr"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\Harmonoid.amr"; ValueType: string; ValueName: ""; ValueData: "AMR File"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Harmonoid.amr\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\Harmonoid.amr\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".amr"; ValueData: ""

; .ec3
Root: HKA; Subkey: "Software\Classes\.ec3\OpenWithProgids"; ValueType: string; ValueName: "Harmonoid.ec3"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\Harmonoid.ec3"; ValueType: string; ValueName: ""; ValueData: "EC3 File"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Harmonoid.ec3\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\Harmonoid.ec3\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".ec3"; ValueData: ""

; .m3u
Root: HKA; Subkey: "Software\Classes\.m3u\OpenWithProgids"; ValueType: string; ValueName: "Harmonoid.m3u"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\Harmonoid.m3u"; ValueType: string; ValueName: ""; ValueData: "M3U File"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Harmonoid.m3u\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\Harmonoid.m3u\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".m3u"; ValueData: ""

; .m4r
Root: HKA; Subkey: "Software\Classes\.m4r\OpenWithProgids"; ValueType: string; ValueName: "Harmonoid.m4r"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\Harmonoid.m4r"; ValueType: string; ValueName: ""; ValueData: "M4R File"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Harmonoid.m4r\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\Harmonoid.m4r\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".m4r"; ValueData: ""

; .wpl
Root: HKA; Subkey: "Software\Classes\.wpl\OpenWithProgids"; ValueType: string; ValueName: "Harmonoid.wpl"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\Harmonoid.wpl"; ValueType: string; ValueName: ""; ValueData: "WPL File"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Harmonoid.wpl\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\Harmonoid.wpl\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".wpl"; ValueData: ""

; .zpl
Root: HKA; Subkey: "Software\Classes\.zpl\OpenWithProgids"; ValueType: string; ValueName: "Harmonoid.zpl"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\Harmonoid.zpl"; ValueType: string; ValueName: ""; ValueData: "ZPL File"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Harmonoid.zpl\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\Harmonoid.zpl\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".zpl"; ValueData: ""



Root: HKA; Subkey: "Software\Classes\Directory\shell\HarmonoidAddToPlaylist"; ValueType: string; ValueName: ""; ValueData: "Add to Harmonoid's Playlist"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Directory\shell\HarmonoidAddToPlaylist"; ValueType: string; ValueName: "Icon"; ValueData: """{app}\{#MyAppExeName}"",0"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\Directory\shell\HarmonoidAddToPlaylist\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}""  ""%1"""; Flags: uninsdeletekey

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
