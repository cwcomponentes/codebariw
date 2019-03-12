object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnShow = IWAppFormShow
  Background.Fixed = False
  LayoutMgr = Template
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  OnURLRequest = IWAppFormURLRequest
  DesignLeft = 8
  DesignTop = 8
  object Code: TIWEdit
    Left = 24
    Top = 32
    Width = 121
    Height = 21
    Css = 'form-control'
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderStatus = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'Code'
    SubmitOnAsyncEvent = True
    TabOrder = 0
  end
  object IWButton1: TIWButton
    Left = 24
    Top = 64
    Width = 121
    Height = 25
    Caption = 'Gerar EAN'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'Gerar EAN'
    TabOrder = 1
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWButton2: TIWButton
    Left = 152
    Top = 64
    Width = 105
    Height = 25
    Caption = 'Limpar'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton2'
    TabOrder = 2
    OnAsyncClick = IWButton2AsyncClick
  end
  object IWButton3: TIWButton
    Left = 263
    Top = 64
    Width = 97
    Height = 25
    Caption = 'Exibir EAN'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton3'
    TabOrder = 3
    OnAsyncClick = IWButton3AsyncClick
  end
  object Template: TIWTemplateProcessorHTML
    TagType = ttIntraWeb
    Templates.Default = 'FrmMain.html'
    Left = 472
    Top = 24
  end
end
