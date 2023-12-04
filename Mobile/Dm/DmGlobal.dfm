object DM: TDM
  Height = 269
  Width = 461
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=C:\DentalClin\Mobile\dataBase\dados'
      'DriverID=SQLite')
    Connected = True
    Left = 48
    Top = 24
  end
  object Query1: TFDQuery
    Connection = Conexao
    Left = 120
    Top = 24
  end
  object Query2: TFDQuery
    Connection = Conexao
    Left = 192
    Top = 32
  end
end
