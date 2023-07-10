program wordle_p;

uses
  Vcl.Forms,
  wordle_u in 'wordle_u.pas' {Form1},
  dmWordle_u in 'dmWordle_u.pas' {dmWordle: TDataModule},
  Scores_u in 'Scores_u.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdmWordle, dmWordle);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
