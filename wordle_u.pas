unit wordle_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, dmWordle_u, Scores_u,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    lblWordle: TLabel;
    btnStart: TButton;
    pnlWords: TPanel;
    pnl1_1: TPanel;
    pnl1_2: TPanel;
    pnl1_3: TPanel;
    pnl1_4: TPanel;
    pnl1_5: TPanel;
    pnl2_1: TPanel;
    pnl2_2: TPanel;
    pnl2_3: TPanel;
    pnl2_4: TPanel;
    pnl2_5: TPanel;
    pnl3_1: TPanel;
    pnl3_2: TPanel;
    pnl3_3: TPanel;
    pnl3_4: TPanel;
    pnl3_5: TPanel;
    pnl4_1: TPanel;
    pnl4_2: TPanel;
    pnl4_3: TPanel;
    pnl4_4: TPanel;
    pnl4_5: TPanel;
    pnl5_1: TPanel;
    pnl5_2: TPanel;
    pnl5_3: TPanel;
    pnl5_4: TPanel;
    pnl5_5: TPanel;
    pnlName: TPanel;
    lblName: TLabel;
    btnedtName: TButtonedEdit;
    pnlGuess: TPanel;
    lblGuess: TLabel;
    btnedtGuess: TButtonedEdit;
    btnGuess: TButton;
    lblHelp: TLabel;
    btnNewGame: TButton;
    DBGrid1: TDBGrid;
    btnViewScores: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnedtNameChange(Sender: TObject);
    procedure btnedtGuessChange(Sender: TObject);
    procedure btnGuessClick(Sender: TObject);
    procedure btnNewGameClick(Sender: TObject);
    procedure btnViewScoresClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  score : integer;
  word : string;
  changed : boolean;
  i : integer;
  cleared : boolean;

implementation

{$R *.dfm}

procedure TForm1.btnedtGuessChange(Sender: TObject);
var
sguess : string;

begin
sguess := btnedtGuess.Text;

if score = 0 then   //First Guess
begin
 if sguess.Length = 0 then
  begin
    pnl1_1.Caption := '';
  end;

 if sguess.Length = 1  then
  begin
   pnl1_1.Caption := uppercase(sguess);
   pnl1_2.Caption := '';
  end;

 if sguess.Length = 2  then
  begin
   pnl1_2.Caption := uppercase(sguess[2]);
   pnl1_3.Caption := '';
  end;

 if sguess.Length = 3  then
  begin
   pnl1_3.Caption := uppercase(sguess[3]);
   pnl1_4.Caption := '';
  end;

 if sguess.Length = 4  then
  begin
   pnl1_4.Caption := uppercase(sguess[4]);
   pnl1_5.Caption := '';
  end;

 if sguess.Length = 5 then
  begin
    btnGuess.Visible := true;
    pnl1_5.Caption := uppercase(sguess[5]);
  end
 else
  begin
    btnGuess.Visible := false;
  end;
end;

if score = 1 then   //Second Guess
begin
 {pnl2_1.Caption := uppercase(sguess[1]);
 pnl2_2.Caption := uppercase(sguess[2]);
 pnl2_3.Caption := uppercase(sguess[3]);
 pnl2_4.Caption := uppercase(sguess[4]);
 pnl2_5.Caption := uppercase(sguess[5]);  }

 if sguess.Length = 0 then
  begin
    pnl2_1.Caption := '';

  end;

 if sguess.Length = 1  then
  begin
   pnl2_1.Caption := uppercase(sguess);
   pnl2_2.Caption := '';
  end;

 if sguess.Length = 2  then
  begin
   pnl2_2.Caption := uppercase(sguess[2]);
   pnl2_3.Caption := '';
  end;

 if sguess.Length = 3  then
  begin
   pnl2_3.Caption := uppercase(sguess[3]);
   pnl2_4.Caption := '';
  end;

 if sguess.Length = 4  then
  begin
   pnl2_4.Caption := uppercase(sguess[4]);
   pnl2_5.Caption := '';
  end;

 if sguess.Length = 5 then
  begin
    btnGuess.Visible := true;
    pnl2_5.Caption := uppercase(sguess[5]);
  end
 else
  begin
    btnGuess.Visible := false;
  end;
end;

if score = 2 then   //Second Guess
begin
 {pnl2_1.Caption := uppercase(sguess[1]);
 pnl2_2.Caption := uppercase(sguess[2]);
 pnl2_3.Caption := uppercase(sguess[3]);
 pnl2_4.Caption := uppercase(sguess[4]);
 pnl2_5.Caption := uppercase(sguess[5]);  }

 if sguess.Length = 0 then
  begin
    pnl3_1.Caption := '';

  end;

 if sguess.Length = 1  then
  begin
   pnl3_1.Caption := uppercase(sguess);
   pnl3_2.Caption := '';
  end;

 if sguess.Length = 2  then
  begin
   pnl3_2.Caption := uppercase(sguess[2]);
   pnl3_3.Caption := '';
  end;

 if sguess.Length = 3  then
  begin
   pnl3_3.Caption := uppercase(sguess[3]);
   pnl3_4.Caption := '';
  end;

 if sguess.Length = 4  then
  begin
   pnl3_4.Caption := uppercase(sguess[4]);
   pnl3_5.Caption := '';
  end;

 if sguess.Length = 5 then
  begin
    btnGuess.Visible := true;
    pnl3_5.Caption := uppercase(sguess[5]);
  end
 else
  begin
    btnGuess.Visible := false;
  end;
end;

if score = 3 then   //Second Guess
begin
 {pnl2_1.Caption := uppercase(sguess[1]);
 pnl2_2.Caption := uppercase(sguess[2]);
 pnl2_3.Caption := uppercase(sguess[3]);
 pnl2_4.Caption := uppercase(sguess[4]);
 pnl2_5.Caption := uppercase(sguess[5]);  }

 if sguess.Length = 0 then
  begin
    pnl4_1.Caption := '';
  end;

 if sguess.Length = 1  then
  begin
   pnl4_1.Caption := uppercase(sguess);
   pnl4_2.Caption := '';
  end;

 if sguess.Length = 2  then
  begin
   pnl4_2.Caption := uppercase(sguess[2]);
   pnl4_3.Caption := '';
  end;

 if sguess.Length = 3  then
  begin
   pnl4_3.Caption := uppercase(sguess[3]);
   pnl4_4.Caption := '';
  end;

 if sguess.Length = 4  then
  begin
   pnl4_4.Caption := uppercase(sguess[4]);
   pnl4_5.Caption := '';
  end;

 if sguess.Length = 5 then
  begin
    btnGuess.Visible := true;
    pnl4_5.Caption := uppercase(sguess[5]);
  end
 else
  begin
    btnGuess.Visible := false;
  end;
end;

 if score = 4 then   //Second Guess
begin
 {pnl2_1.Caption := uppercase(sguess[1]);
 pnl2_2.Caption := uppercase(sguess[2]);
 pnl2_3.Caption := uppercase(sguess[3]);
 pnl2_4.Caption := uppercase(sguess[4]);
 pnl2_5.Caption := uppercase(sguess[5]);  }

 if sguess.Length = 0 then
  begin
    pnl5_1.Caption := '';
  end;

 if sguess.Length = 1  then
  begin
   pnl5_1.Caption := uppercase(sguess);
   pnl5_2.Caption := '';
  end;

 if sguess.Length = 2  then
  begin
   pnl5_2.Caption := uppercase(sguess[2]);
   pnl5_3.Caption := '';
  end;

 if sguess.Length = 3  then
  begin
   pnl5_3.Caption := uppercase(sguess[3]);
   pnl5_4.Caption := '';
  end;

 if sguess.Length = 4  then
  begin
   pnl5_4.Caption := uppercase(sguess[4]);
   pnl5_5.Caption := '';
  end;

 if sguess.Length = 5 then
  begin
    btnGuess.Visible := true;
    pnl5_5.Caption := uppercase(sguess[5]);
  end
 else
  begin
    btnGuess.Visible := false;
  end;
end;
end;

procedure TForm1.btnedtNameChange(Sender: TObject);
begin
btnedtGuess.Enabled := true;
showmessage(word);
end;

procedure TForm1.btnGuessClick(Sender: TObject);
var
sguess : string;
g1,g2,g3,g4,g5 : string;
w1,w2,w3,w4,w5 : string;
begin
sguess := uppercase(btnedtGuess.Text);
score := score + 1;

g1 := sguess[1];  //letters of guess
g2 := sguess[2];
g3 := sguess[3];
g4 := sguess[4];
g5 := sguess[5];

w1 := word[1];     //letters of guess
w2 := word[2];
w3 := word[3];
w4 := word[4];
w5 := word[5];


if score = 1 then
begin
if g1 = w1 then
    begin
      pnl1_1.Color := clLime;
    end
   else if (g1 = w2) or (g1 = w3) or (g1 = w4) or (g1 = w5) then
     begin
      pnl1_1.Color := clYellow;
     end;


if g2 = w2 then
    begin
      pnl1_2.Color := clLime;
    end
   else if (g2 = w1) or (g2 = w3) or (g2 = w4) or (g2 = w5) then
    begin
      pnl1_2.Color := clYellow;
    end;


     if g3 = w3 then
    begin
      pnl1_3.Color := clLime;
    end
   else if (g3 = w1) or (g3 = w2) or (g3 = w4) or (g3 = w5) then
    begin
      pnl1_3.Color := clYellow;
    end;

     if g4 = w4 then
    begin
      pnl1_4.Color := clLime;
    end
   else if (g4 = w1) or (g4 = w2) or (g4 = w3) or (g4 = w5) then
    begin
      pnl1_4.Color := clYellow;
    end;

     if g5 = w5 then
    begin
      pnl1_5.Color := clLime;
    end
   else if (g5 = w1) or (g5 = w2) or (g5 = w3) or (g5 = w4) then
    begin
      pnl1_5.Color := clYellow;
    end;
end;

if score = 2 then
 begin
 if g1 = w1 then
    begin
      pnl2_1.Color := clLime;
    end
   else if (g1 = w2) or (g1 = w3) or (g1 = w4) or (g1 = w5) then
     begin
      pnl2_1.Color := clYellow;
     end;


 if g2 = w2 then
    begin
      pnl2_2.Color := clLime;
    end
   else if (g2 = w1) or (g2 = w3) or (g2 = w4) or (g2 = w5) then
    begin
      pnl2_2.Color := clYellow;
    end;


     if g3 = w3 then
    begin
      pnl2_3.Color := clLime;
    end
   else if (g3 = w1) or (g3 = w2) or (g1 = w4) or (g1 = w5) then
    begin
      pnl2_3.Color := clYellow;
    end;

     if g4 = w4 then
    begin
      pnl2_4.Color := clLime;
    end
   else if (g4 = w1) or (g4 = w2) or (g4 = w3) or (g4 = w5) then
    begin
      pnl2_4.Color := clYellow;
    end;

     if g5 = w5 then
    begin
      pnl2_5.Color := clLime;
    end
   else if (g5 = w1) or (g5 = w2) or (g5 = w3) or (g5 = w4) then
    begin
      pnl2_5.Color := clYellow;
    end;
 end;

if score = 3 then
begin
if g1 = w1 then
    begin
      pnl3_1.Color := clLime;
    end
   else if (g1 = w2) or (g1 = w3) or (g1 = w4) or (g1 = w5) then
     begin
      pnl3_1.Color := clYellow;
     end;


if g2 = w2 then
    begin
      pnl3_2.Color := clLime;
    end
   else if (g2 = w1) or (g2 = w3) or (g2 = w4) or (g2 = w5) then
    begin
      pnl3_2.Color := clYellow;
    end;


     if g3 = w3 then
    begin
      pnl3_3.Color := clLime;
    end
   else if (g3 = w1) or (g3 = w2) or (g1 = w4) or (g1 = w5) then
    begin
      pnl3_3.Color := clYellow;
    end;

     if g4 = w4 then
    begin
      pnl3_4.Color := clLime;
    end
   else if (g4 = w1) or (g4 = w2) or (g4 = w3) or (g4 = w5) then
    begin
      pnl3_4.Color := clYellow;
    end;

     if g5 = w5 then
    begin
      pnl3_5.Color := clLime;
    end
   else if (g5 = w1) or (g5 = w2) or (g5 = w3) or (g5 = w4) then
    begin
      pnl3_5.Color := clYellow;
    end;
end;

if score = 4 then
begin
if g1 = w1 then
    begin
      pnl4_1.Color := clLime;
    end
   else if (g1 = w2) or (g1 = w3) or (g1 = w4) or (g1 = w5) then
     begin
      pnl4_1.Color := clYellow;
     end;


if g2 = w2 then
    begin
      pnl4_2.Color := clLime;
    end
   else if (g2 = w1) or (g2 = w3) or (g2 = w4) or (g2 = w5) then
    begin
      pnl4_2.Color := clYellow;
    end;


     if g3 = w3 then
    begin
      pnl4_3.Color := clLime;
    end
   else if (g3 = w1) or (g3 = w2) or (g1 = w4) or (g1 = w5) then
    begin
      pnl4_3.Color := clYellow;
    end;

     if g4 = w4 then
    begin
      pnl4_4.Color := clLime;
    end
   else if (g4 = w1) or (g4 = w2) or (g4 = w3) or (g4 = w5) then
    begin
      pnl4_4.Color := clYellow;
    end;

     if g5 = w5 then
    begin
      pnl4_5.Color := clLime;
    end
   else if (g5 = w1) or (g5 = w2) or (g5 = w3) or (g5 = w4) then
    begin
      pnl4_5.Color := clYellow;
    end;
end;

if score = 5 then
begin
if g1 = w1 then
    begin
      pnl5_1.Color := clLime;
    end
   else if (g1 = w2) or (g1 = w3) or (g1 = w4) or (g1 = w5) then
     begin
      pnl5_1.Color := clYellow;
     end;


if g2 = w2 then
    begin
      pnl5_2.Color := clLime;
    end
   else if (g2 = w1) or (g2 = w3) or (g2 = w4) or (g2 = w5) then
    begin
      pnl5_2.Color := clYellow;
    end;


     if g3 = w3 then
    begin
      pnl5_3.Color := clLime;
    end
   else if (g3 = w1) or (g3 = w2) or (g1 = w4) or (g1 = w5) then
    begin
      pnl5_3.Color := clYellow;
    end;

     if g4 = w4 then
    begin
      pnl5_4.Color := clLime;
    end
   else if (g4 = w1) or (g4 = w2) or (g4 = w3) or (g4 = w5) then
    begin
      pnl5_4.Color := clYellow;
    end;

     if g5 = w5 then
    begin
      pnl5_5.Color := clLime;
    end
   else if (g5 = w1) or (g5 = w2) or (g5 = w3) or (g5 = w4) then
    begin
      pnl5_5.Color := clYellow;
    end;
end;

if sguess = word then
 begin
   showmessage('Well Done! Your score is ' + inttostr(score));
 end;

if (sguess <> word) and (score = 5) then
 begin
   showmessage('Better luck next time');
 end;

end;

procedure TForm1.btnStartClick(Sender: TObject);
begin
pnlwords.Show;
pnlName.Show;
pnlGuess.Show;
btnNewGame.Show;
lblname.Show;
btnstart.Hide;
cleared := true;

btnViewScores.Height := 70;
btnViewScores.Width := 200;
btnViewScores.Top := 100;
btnViewScores.Left := 1017;
btnViewScores.Font.Size := 16;

score := 0;
i := random(2000);

with dmWordle do
 begin
    tblWords.open;
    tblWords.first;

    while not tblWords.eof do
     begin
       if tblWords['ID'] = i then
        begin
          word := uppercase(tblWords['Words']);
        end;


      tblWords.next;
     end;
 end;

end;

procedure TForm1.btnViewScoresClick(Sender: TObject);
begin
dbgrid1.Show;
btnStart.Hide;
btnnewgame.Show;
btnviewscores.Hide;
pnlwords.Hide;
pnlguess.Hide;
pnlname.Hide;
end;

procedure TForm1.btnNewGameClick(Sender: TObject);
begin
score := 0;
i:= 0;
i := random(2000);
btnedtGuess.Enabled := false;
cleared := false;
if btnedtguess.Text = '' then
 begin
   cleared := true;
 end;

with dmWordle do
 begin
    tblWords.open;
    tblWords.first;

    while not tblWords.eof do
     begin
       if tblWords['ID'] = i then
        begin
          word := uppercase(tblWords['Words']);
        end;


      tblWords.next;
     end;
 end;

 pnl1_1.caption := '';
     pnl1_2.caption := '';
     pnl1_3.caption := '';
     pnl1_4.caption := '';
     pnl1_5.caption := '';
     pnl2_1.caption := '';
     pnl2_2.caption := '';
     pnl2_3.caption := '';
     pnl2_4.caption := '';
     pnl2_5.caption := '';
     pnl3_1.caption := '';
     pnl3_1.caption := '';
     pnl3_2.caption := '';
     pnl3_3.caption := '';
     pnl3_4.caption := '';
     pnl3_5.caption := '';
     pnl4_1.caption := '';
     pnl4_2.caption := '';
     pnl4_3.caption := '';
     pnl4_4.caption := '';
     pnl4_5.caption := '';
     pnl5_1.caption := '';
     pnl5_2.caption := '';
     pnl5_3.caption := '';
     pnl5_4.caption := '';
     pnl5_5.caption := '';

     pnl1_1.color := clWhite;
      pnl1_2.color := clWhite;
      pnl1_3.color := clWhite;
      pnl1_4.color := clWhite;
      pnl1_5.color := clWhite;
      pnl2_1.color := clWhite;
      pnl2_2.color := clWhite;
      pnl2_3.color := clWhite;
      pnl2_4.color := clWhite;
      pnl2_5.color := clWhite;
      pnl3_1.color := clWhite;
      pnl3_2.color := clWhite;
      pnl3_3.color := clWhite;
      pnl3_4.color := clWhite;
      pnl3_5.color := clWhite;
      pnl4_1.color := clWhite;
      pnl4_2.color := clWhite;
      pnl4_3.color := clWhite;
      pnl4_4.color := clWhite;
      pnl4_5.color := clWhite;
      pnl5_1.color := clWhite;
      pnl5_2.color := clWhite;
      pnl5_3.color := clWhite;
      pnl5_4.color := clWhite;
      pnl5_5.color := clWhite;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
pnlWords.Hide;
pnlName.Hide;
pnlGuess.Hide;
btnNewGame.Hide;
lblname.Hide;
dbgrid1.hide;
end;

end.
