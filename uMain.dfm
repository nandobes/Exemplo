object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 193
  ClientWidth = 507
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Sobre: TLabel
    Left = 152
    Top = 8
    Width = 54
    Height = 13
    Caption = 'Sobrenome'
  end
  object Edit1: TEdit
    Left = 24
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 151
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 278
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object btnExport: TButton
    Left = 359
    Top = 25
    Width = 138
    Height = 25
    Caption = 'Export To JSON'
    TabOrder = 3
    OnClick = btnExportClick
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 54
    Width = 248
    Height = 120
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sobrenome'
        Width = 100
        Visible = True
      end>
  end
  object Memo1: TMemo
    Left = 278
    Top = 56
    Width = 219
    Height = 120
    Lines.Strings = (
      '')
    TabOrder = 5
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 320
    Top = 144
    object FDMemTable1nome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object FDMemTable1sobrenome: TStringField
      FieldName = 'sobrenome'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 384
    Top = 144
  end
end
