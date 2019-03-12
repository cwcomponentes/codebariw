program CodigoBarra_Isapi;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  Forms,
  IWStart,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  uCodeBar in 'uCodeBar.pas' {FrmMain: TIWAppForm},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
