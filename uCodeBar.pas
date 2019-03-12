unit uCodeBar;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWCompButton, Vcl.Controls, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompEdit, IW.HTTP.Request;

type
  TFrmMain = class(TIWAppForm)
    Template: TIWTemplateProcessorHTML;
    Code: TIWEdit;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWButton3: TIWButton;
    procedure IWButton3AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormShow(Sender: TObject);
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormURLRequest(aSender: TIWAppForm; aRequest: THttpRequest);
  public
  end;

implementation

{$R *.dfm}


procedure TFrmMain.IWAppFormShow(Sender: TObject);
begin
  AddToInitProc('$("#ean").EAN13("0000000000000");');
end;

procedure TFrmMain.IWAppFormURLRequest(aSender: TIWAppForm;
  aRequest: THttpRequest);
begin
  AddToInitProc('$("#ean").EAN13("0000000000000");');
end;

procedure TFrmMain.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
var
   num1:integer;
   num2:integer;
   num3:integer;
begin
  randomize;
  num1 := Round(random(99999)); // 99999 é o limite do numero randomico
  num2 := Round(random(99999)); // 99999 é o limite do numero randomico
  num3 := Round(random(999)); // 99999 é o limite do numero randomico
  code.Text:=FloatToStr(num1)+ FloatToStr(num2) + FloatToStr(num3);
end;

procedure TFrmMain.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
   WebApplication.CallBackResponse.AddJavaScriptToExecute('$("#ean").EAN13("0000000000000");');
end;

procedure TFrmMain.IWButton3AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
   WebApplication.CallBackResponse.AddJavaScriptToExecute('$("#ean").EAN13("'+Code.Text+'");');
end;

initialization
  TFrmMain.SetAsMainForm;

end.
