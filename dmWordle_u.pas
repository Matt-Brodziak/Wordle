unit dmWordle_u;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmWordle = class(TDataModule)
    conWordle: TADOConnection;
    tblWords: TADOTable;
    dscWords: TDataSource;
    qScores: TADOQuery;
    tblScores: TADOTable;
    dscScores: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmWordle: TdmWordle;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
