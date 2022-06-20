unit u_principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tform_principal = class(TForm)
    nome: TEdit;
    nota1: TEdit;
    nota2: TEdit;
    nota3: TEdit;
    nota4: TEdit;
    btn_calcular: TButton;
    procedure btn_calcularClick(Sender: TObject);
    procedure nota1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_principal: Tform_principal;

implementation

{$R *.dfm}

procedure Tform_principal.btn_calcularClick(Sender: TObject);
var
  n1,n2,n3,n4,media : Double;
begin
   n1 := StrToFloat( nota1.Text );
   n2 := StrToFloat( nota2.Text );
   n3 := StrToFloat( nota3.Text );
   n4 := StrToFloat( nota4.Text );

   media := ( n1 + n2 + n3 + n4 ) / 4;

end;

procedure Tform_principal.nota1Exit(Sender: TObject);
begin
if StrToFloat (nota1.text) > 10 then
 showmessage ('Sua nota � invalida');
 nota1.SetFocus;
end;



end.
