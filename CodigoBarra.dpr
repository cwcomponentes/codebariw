library CodigoBarra;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  IWInitISAPI,
  uCodeBar in 'uCodeBar.pas' {FrmMain: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.RES}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  IWRun;
end.
