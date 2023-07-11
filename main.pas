unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    function Codifica(Action, Src: string): string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit2.Text :=  Codifica('C',Edit1.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit3.Text :=  Codifica('D',Edit2.Text);
end;

function TForm1.Codifica(Action, Src: string): string;
label Fim; //Função para criptografar e descriptografar string's
var
  KeyLen: Integer;
  KeyPos: Integer;
  OffSet: Integer;
  Dest, Key: string;
  SrcPos: Integer;
  SrcAsc: Integer;
  TmpSrcAsc: Integer;
  Range: Integer;
begin
  try
    if (Src = '') then
    begin
      Result := '';
      goto Fim;
    end;
    Key := Memo1.Lines.Text;
    Dest := '';
    KeyLen := Length(Key);
    KeyPos := 0;
    SrcPos := 0;
    SrcAsc := 0;
    Range := 256;
    if (Action = UpperCase('C')) then
    begin
      Randomize;
      OffSet := Random(Range);
      Dest := Format('%1.2x', [OffSet]);
      for SrcPos := 1 to Length(Src) do
      begin
        SrcAsc := (Ord(Src[SrcPos]) + OffSet) mod 255;
        if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;
        SrcAsc := SrcAsc xor Ord(Key[KeyPos]);
        Dest := Dest + Format('%1.2x', [SrcAsc]);
        OffSet := SrcAsc;
      end;
    end
    else if (Action = UpperCase('D')) then
    begin
      OffSet := StrToInt('$' + copy(Src, 1, 2));
      SrcPos := 3;
      repeat
        SrcAsc := StrToInt('$' + copy(Src, SrcPos, 2));
        if (KeyPos < KeyLen) then KeyPos := KeyPos + 1 else KeyPos := 1;
        TmpSrcAsc := SrcAsc xor Ord(Key[KeyPos]);
        if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
        else TmpSrcAsc := TmpSrcAsc - OffSet;
        Dest := Dest + Chr(TmpSrcAsc);
        OffSet := SrcAsc;
        SrcPos := SrcPos + 2;
      until (SrcPos >= Length(Src));
    end;
    Result := Dest;
    Fim:
  except
    Result := Src;
  end;
end;

end.
