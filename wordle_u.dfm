object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'frmGame'
  ClientHeight = 552
  ClientWidth = 959
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object lblWordle: TLabel
    Left = 249
    Top = 16
    Width = 491
    Height = 94
    Caption = 'Wordle Game'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -80
    Font.Name = 'Imprint MT Shadow'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnStart: TButton
    Left = 52
    Top = 216
    Width = 425
    Height = 177
    Caption = 'Start New Game!'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -47
    Font.Name = 'Imprint MT Shadow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnStartClick
  end
  object pnlWords: TPanel
    Left = 32
    Top = 176
    Width = 365
    Height = 365
    BevelInner = bvRaised
    BevelKind = bkSoft
    BorderWidth = 1
    BorderStyle = bsSingle
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -60
    Font.Name = 'Imprint MT Shadow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object pnl1_1: TPanel
      Left = 0
      Top = 0
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
    end
    object pnl1_2: TPanel
      Left = 73
      Top = 0
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
    end
    object pnl1_3: TPanel
      Left = 146
      Top = 0
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
    end
    object pnl1_4: TPanel
      Left = 219
      Top = 0
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
    end
    object pnl1_5: TPanel
      Left = 292
      Top = 0
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 4
    end
    object pnl2_1: TPanel
      Left = 0
      Top = 73
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 5
    end
    object pnl2_2: TPanel
      Left = 73
      Top = 73
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 6
    end
    object pnl2_3: TPanel
      Left = 146
      Top = 73
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 7
    end
    object pnl2_4: TPanel
      Left = 219
      Top = 73
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 8
    end
    object pnl2_5: TPanel
      Left = 292
      Top = 73
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 9
    end
    object pnl3_1: TPanel
      Left = 0
      Top = 146
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 10
    end
    object pnl3_2: TPanel
      Left = 73
      Top = 146
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 11
    end
    object pnl3_3: TPanel
      Left = 146
      Top = 146
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 12
    end
    object pnl3_4: TPanel
      Left = 219
      Top = 146
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 13
    end
    object pnl3_5: TPanel
      Left = 292
      Top = 146
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 14
    end
    object pnl4_1: TPanel
      Left = 0
      Top = 219
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 15
    end
    object pnl4_2: TPanel
      Left = 73
      Top = 219
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 16
    end
    object pnl4_3: TPanel
      Left = 146
      Top = 219
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 17
    end
    object pnl4_4: TPanel
      Left = 219
      Top = 219
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 18
    end
    object pnl4_5: TPanel
      Left = 292
      Top = 219
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 19
    end
    object pnl5_1: TPanel
      Left = 0
      Top = 292
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 20
    end
    object pnl5_2: TPanel
      Left = 73
      Top = 292
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 21
    end
    object pnl5_3: TPanel
      Left = 146
      Top = 292
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 22
    end
    object pnl5_4: TPanel
      Left = 219
      Top = 292
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 23
    end
    object pnl5_5: TPanel
      Left = 292
      Top = 292
      Width = 73
      Height = 73
      Color = clWhite
      ParentBackground = False
      TabOrder = 24
    end
  end
  object pnlName: TPanel
    Left = 496
    Top = 165
    Width = 321
    Height = 129
    BevelInner = bvRaised
    BevelKind = bkSoft
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object lblName: TLabel
      Left = 56
      Top = 14
      Width = 233
      Height = 27
      Caption = 'Please enter your name:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Imprint MT Shadow'
      Font.Style = []
      ParentFont = False
    end
    object btnedtName: TButtonedEdit
      Left = 112
      Top = 66
      Width = 121
      Height = 23
      TabOrder = 0
      OnChange = btnedtNameChange
    end
  end
  object pnlGuess: TPanel
    Left = 496
    Top = 343
    Width = 321
    Height = 202
    BevelInner = bvRaised
    BevelKind = bkSoft
    Color = clWhite
    ParentBackground = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
    object lblGuess: TLabel
      Left = 72
      Top = 14
      Width = 172
      Height = 27
      Caption = 'Enter your guess:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Imprint MT Shadow'
      Font.Style = []
      ParentFont = False
    end
    object lblHelp: TLabel
      Left = 72
      Top = 160
      Width = 209
      Height = 15
      Caption = 'Please delete the word after every guess'
    end
    object btnedtGuess: TButtonedEdit
      Left = 112
      Top = 66
      Width = 121
      Height = 23
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnChange = btnedtGuessChange
    end
    object btnGuess: TButton
      Left = 128
      Top = 112
      Width = 89
      Height = 25
      Caption = 'Guess Word'
      TabOrder = 1
      Visible = False
      OnClick = btnGuessClick
    end
  end
  object btnNewGame: TButton
    Left = 812
    Top = 16
    Width = 163
    Height = 57
    Caption = 'New Game'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Imprint MT Shadow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btnNewGameClick
  end
  object DBGrid1: TDBGrid
    Left = 109
    Top = 106
    Width = 764
    Height = 199
    DataSource = dmWordle.dscScores
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnViewScores: TButton
    Left = 504
    Top = 214
    Width = 425
    Height = 177
    Caption = 'View Scores'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Imprint MT Shadow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btnViewScoresClick
  end
end
