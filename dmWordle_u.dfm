object dmWordle: TdmWordle
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object conWordle: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Matthew.Br' +
      'odziak\Documents\Personal Projects\Wordle\Win32\Debug\Wordle.mdb' +
      ';Mode=ReadWrite;Persist Security Info=False;Jet OLEDB:System dat' +
      'abase="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password=' +
      '"";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet' +
      ' OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transacti' +
      'ons=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System' +
      ' Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't' +
      ' Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica ' +
      'Repair=False;Jet OLEDB:SFP=False'
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 184
    Top = 344
  end
  object tblWords: TADOTable
    Active = True
    Connection = conWordle
    CursorType = ctStatic
    TableName = 'Words'
    Left = 312
    Top = 256
  end
  object dscWords: TDataSource
    DataSet = tblWords
    Left = 472
    Top = 264
  end
  object qScores: TADOQuery
    Connection = conWordle
    DataSource = dscScores
    Parameters = <>
    Left = 560
    Top = 384
  end
  object tblScores: TADOTable
    Active = True
    Connection = conWordle
    CursorType = ctStatic
    TableName = 'Scores'
    Left = 304
    Top = 384
  end
  object dscScores: TDataSource
    DataSet = tblScores
    Left = 440
    Top = 400
  end
end
