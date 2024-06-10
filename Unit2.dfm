object DB: TDB
  Height = 293
  Width = 222
  object conexion: TFDConnection
    Params.Strings = (
      
        'Database=D:\Proyectos RAD Studio\Agenda de Passwords C++ (2)\Win' +
        '32\Debug\Security.dll'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 96
    Top = 8
  end
  object DAO_User: TDataSource
    DataSet = queryUser
    Left = 32
    Top = 88
  end
  object queryUser: TFDQuery
    Connection = conexion
    SQL.Strings = (
      'select * from usuario')
    Left = 144
    Top = 88
  end
  object DAO_Pass: TDataSource
    DataSet = queryPass
    Left = 32
    Top = 152
  end
  object queryPass: TFDQuery
    Connection = conexion
    SQL.Strings = (
      'select password from usuario')
    Left = 144
    Top = 152
  end
  object DAO_Datos: TDataSource
    DataSet = queryDatos
    Left = 32
    Top = 224
  end
  object queryDatos: TFDQuery
    BeforeInsert = queryDatosBeforeInsert
    Connection = conexion
    SQL.Strings = (
      'select * from datos')
    Left = 144
    Top = 224
  end
end
