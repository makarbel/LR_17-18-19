unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BackSpace: TButton;
    Num2: TButton;
    Num3: TButton;
    comma: TButton;
    Num0: TButton;
    Plus: TButton;
    Minus: TButton;
    multiplic: TButton;
    divison: TButton;
    clear_sec: TButton;
    clear: TButton;
    Equally: TButton;
    divison_1_x: TButton;
    square: TButton;
    sqrttt: TButton;
    Num7: TButton;
    Num8: TButton;
    Num9: TButton;
    Num4: TButton;
    Num5: TButton;
    Num6: TButton;
    Num1: TButton;
    txtDisplay: TEdit;
    procedure Num2Click(Sender: TObject);
    procedure Num3Click(Sender: TObject);
    procedure commaClick(Sender: TObject);
    procedure Num0Click(Sender: TObject);
    procedure PlusClick(Sender: TObject);
    procedure MinusClick(Sender: TObject);
    procedure multiplicClick(Sender: TObject);
    procedure divisonClick(Sender: TObject);
    procedure clear_secClick(Sender: TObject);
    procedure clearClick(Sender: TObject);
    procedure BackSpaceClick(Sender: TObject);
    procedure divison_1_xClick(Sender: TObject);
    procedure squareClick(Sender: TObject);
    procedure sqrtttClick(Sender: TObject);
    procedure EquallyClick(Sender: TObject);
    procedure Num7Click(Sender: TObject);
    procedure Num8Click(Sender: TObject);
    procedure Num9Click(Sender: TObject);
    procedure Num4Click(Sender: TObject);
    procedure Num5Click(Sender: TObject);
    procedure Num6Click(Sender: TObject);
    procedure Num1Click(Sender: TObject);
    procedure txtDisplayKeyPress(Sender: TObject; var Key: char);
  private
    Firstnum, Secondnum, Answer:string;
    Operators:char;

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.EquallyClick(Sender: TObject);
begin
  Secondnum := txtDisplay.Text;

  case (Operators) of
    '+':
      Answer := FloatToStr(StrToFloat(Firstnum) + StrToFloat(Secondnum));
    '-':
      Answer := FloatToStr(StrToFloat(Firstnum) - StrToFloat(Secondnum));
    '*':
      Answer := FloatToStr(StrToFloat(Firstnum) * StrToFloat(Secondnum));
    '/':
      begin
        if StrToFloat(Secondnum) = 0 then
          ShowMessage('На 0 делить нельзя')
        else
          Answer := FloatToStr(StrToFloat(Firstnum) / StrToFloat(Secondnum));
      end;
  end;
  txtDisplay.Text := Answer;
end;

procedure TForm1.Num7Click(Sender: TObject);
begin
  if txtDisplay.Text = '0' then
     txtDisplay.Text := '7'
  else
      txtDisplay.Text := txtDisplay.Text + '7';
end;

procedure TForm1.Num8Click(Sender: TObject);
begin
    if txtDisplay.Text = '0' then
     txtDisplay.Text := '8'
  else
      txtDisplay.Text := txtDisplay.Text + '8';
end;

procedure TForm1.Num9Click(Sender: TObject);
begin
    if txtDisplay.Text = '0' then
     txtDisplay.Text := '9'
  else
      txtDisplay.Text := txtDisplay.Text + '9';
end;

procedure TForm1.Num4Click(Sender: TObject);
begin
    if txtDisplay.Text = '0' then
     txtDisplay.Text := '4'
  else
      txtDisplay.Text := txtDisplay.Text + '4';
end;

procedure TForm1.Num5Click(Sender: TObject);
begin
    if txtDisplay.Text = '0' then
     txtDisplay.Text := '5'
  else
      txtDisplay.Text := txtDisplay.Text + '5';
end;

procedure TForm1.Num6Click(Sender: TObject);
begin
    if txtDisplay.Text = '0' then
     txtDisplay.Text := '6'
  else
      txtDisplay.Text := txtDisplay.Text + '6';
end;

procedure TForm1.Num1Click(Sender: TObject);
begin
    if txtDisplay.Text = '0' then
     txtDisplay.Text := '1'
  else
      txtDisplay.Text := txtDisplay.Text + '1';
end;



procedure TForm1.txtDisplayKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then // Разрешаем вводить только цифры и Backspace (#8)
    Key := #0; // Отменяем ввод других символов
end;




procedure TForm1.commaClick(Sender: TObject);
begin
  if (txtDisplay.Text = '') then
    exit
  else if (POS(',', txtDisplay.Text) <> 0) then
    exit
  else
    txtDisplay.Text := txtDisplay.Text + comma.Caption;
end;

procedure TForm1.Num0Click(Sender: TObject);
begin
    if txtDisplay.Text = '0' then
     txtDisplay.Text := '0'
  else
      txtDisplay.Text := txtDisplay.Text + '0';
end;

procedure TForm1.Num2Click(Sender: TObject);
begin
    if txtDisplay.Text = '0' then
     txtDisplay.Text := '2'
  else
      txtDisplay.Text := txtDisplay.Text + '2';
end;

procedure TForm1.Num3Click(Sender: TObject);
begin
    if txtDisplay.Text = '0' then
     txtDisplay.Text := '3'
  else
      txtDisplay.Text := txtDisplay.Text + '3';
end;

procedure TForm1.PlusClick(Sender: TObject);
begin
  Firstnum := txtDisplay.Text;
  Operators := '+';
  txtDisplay.Text := '0';
end;

procedure TForm1.MinusClick(Sender: TObject);
begin
  Firstnum := txtDisplay.Text;
  Operators := '-';
  txtDisplay.Text := '0';
end;

procedure TForm1.multiplicClick(Sender: TObject);
begin
  Firstnum := txtDisplay.Text;
  Operators := '*';
  txtDisplay.Text := '0';
end;

procedure TForm1.divisonClick(Sender: TObject);
begin
  Firstnum := txtDisplay.Text;
  Operators := '/';
  txtDisplay.Text := '0';
end;

procedure TForm1.clear_secClick(Sender: TObject);
begin
    txtDisplay.Text := '0';
end;

procedure TForm1.clearClick(Sender: TObject);
begin
  txtDisplay.Text := '0';
end;

procedure TForm1.BackSpaceClick(Sender: TObject);
var str:string;
begin
     str := txtDisplay.Text;
     if str <> '0' then
     Delete(str,length(str),1);
     txtDisplay.Text := str;
     if txtDisplay.Text = '' then
     txtDisplay.Text := '0'
end;

procedure TForm1.divison_1_xClick(Sender: TObject);
begin
  Firstnum := txtDisplay.Text;
  if StrToFloat(Firstnum) = 0 then
  ShowMessage('На ноль нельзя делить!')
  else
  txtDisplay.Text :=  FloatToStr(1 / StrToFloat(Firstnum)); ;
end;

procedure TForm1.squareClick(Sender: TObject);
begin
  Firstnum := txtDisplay.Text;
  txtDisplay.Text :=  FloatToStr(StrToFloat(Firstnum) * StrToFloat(Firstnum));
end;

procedure TForm1.sqrtttClick(Sender: TObject);
var
  Number: Double; // Изменил название переменной на Number
begin
  Number := StrToFloat(txtDisplay.Text);

  if Number < 0 then
     ShowMessage('Из отрицательного нельзя взять корень')
  else
      txtDisplay.Text := FloatToStr(sqrttt(Number));
end;


end.

