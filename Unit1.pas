unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    REGISTRAR: TButton;
    MainMenu1: TMainMenu;
    EXAMEN1: TMenuItem;
    PREGUNTA11: TMenuItem;
    Ejercicio21: TMenuItem;
    procedure REGISTRARClick(Sender: TObject);
    procedure PREGUNTA11Click(Sender: TObject);
    procedure Ejercicio21Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  n, c: Integer;

implementation

{$R *.dfm}

procedure TForm1.REGISTRARClick(Sender: TObject);
begin
  n := StrToInt(Edit1.Text);
  ShowMessage('Nro registrado')
end;

function sfactorial(n: Integer): real;
var
  fac, sfac: real;

begin
  fac := 1;
  sfac := 0;

  for c := 1 to n do
  begin
    fac := fac * c;

  end;
  Result := fac;

end;

function ejercicio1(n: Integer): real;
var
  d, t, s: real;
  f, a, b, c: Integer;
begin
  a := -1;
  b := 1;
  s := 0;
  c := 1;
  while (n >= c) do
  begin

    d := c * c;
    f := a + b;
    a := b;
    b := f;

    t := d / sfactorial(f);
    s := s + t;
    c := c + 1;
  end;

  Result := s;

end;

procedure TForm1.PREGUNTA11Click(Sender: TObject);
begin
  // EJERCICIO 2
  Edit2.Text := FloatToStr(ejercicio1(StrToInt(Edit1.Text)))
end;

function ejercicio2(n: Integer): string;
var
  d, sumap, sumai, cp, ci, c: Integer;
  pp, pi: real;

begin

  c := 0;
  cp := 0;
  ci := 0;
  d := 0;
  sumap := 0;
  sumai := 0;

  while n > 0 do
  begin
    d := n mod 10;
    n := n div 10;

    if (d mod 2 = 0) then
    begin
      sumap := sumap + d;
      cp := cp + 1;
    end
    else
    begin
      sumai := sumai + d;
      ci := ci + 1;
    end;
    c := c + 1;

  end;

  pp := sumap / cp;
  pi := sumai / ci;

  Result := 'prom pares es: ' + FloatToStr(pp) + ' prom impares es:' +
    FloatToStr(pi);

end;

procedure TForm1.Ejercicio21Click(Sender: TObject);
begin
  // EJERCICIO 2
  Edit2.Text := (ejercicio2(StrToInt(Edit1.Text)))
end;

end.
