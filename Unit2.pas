unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    editResult: TEdit;
    btnCE: TButton;
    btn7: TButton;
    btn4: TButton;
    btn1: TButton;
    btn0: TButton;
    btnSeta: TButton;
    btn8: TButton;
    btn5: TButton;
    btn2: TButton;
    btnPorcentagem: TButton;
    btnMais: TButton;
    btn9: TButton;
    btn6: TButton;
    btn3: TButton;
    btnMenos: TButton;
    btnVezes: TButton;
    btnDividir: TButton;
    btnPonto: TButton;
    btnIgual: TButton;
    procedure btnCEClick(Sender: TObject);
    procedure btnSetaClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn0Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btnPontoClick(Sender: TObject);
    procedure btnMaisClick(Sender: TObject);
    procedure btnMenosClick(Sender: TObject);
    procedure btnVezesClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
    procedure btnPorcentagemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  valor: Double;
  op: String;

implementation

{$R *.dfm}

procedure TForm2.btn0Click(Sender: TObject);
begin
  editResult.Text := editResult.Text + '0';    //Bot�o 0
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
  editResult.Text := editResult.Text + '1';    //Bot�o 1
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
  editResult.Text := editResult.Text + '2';    //Bot�o 2
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
  editResult.Text := editResult.Text + '3';    //Bot�o 3
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
  editResult.Text := editResult.Text + '4';    //Bot�o 4
end;

procedure TForm2.btn5Click(Sender: TObject);
begin
  editResult.Text := editResult.Text + '5';    //Bot�o 5
end;

procedure TForm2.btn6Click(Sender: TObject);
begin
  editResult.Text := editResult.Text + '6';    //Bot�o 6
end;

procedure TForm2.btn7Click(Sender: TObject);
begin
  editResult.Text := editResult.Text + '7';    //Bot�o 7
end;

procedure TForm2.btn8Click(Sender: TObject);
begin
  editResult.Text := editResult.Text + '8';    //Bot�o 8
end;

procedure TForm2.btn9Click(Sender: TObject);
begin
  editResult.Text := editResult.Text + '9';    //Bot�o 9
end;

procedure TForm2.btnCEClick(Sender: TObject);
begin
  editResult.Text := '';      //Bot�o CE
end;

procedure TForm2.btnDividirClick(Sender: TObject);
begin
  //Bot�o Dividir
  valor := StrToFloat(editResult.Text);
  op := '/';
  editResult.Text := '';
end;

procedure TForm2.btnIgualClick(Sender: TObject);
var
 valorTotal: Double;
begin
  valorTotal := StrToFloat(editResult.Text);

  if op = '+' then
  begin
    valorTotal := valorTotal + valor;       //Adi��o
  end
  else if op = '-' then
  begin
    valorTotal := valor - valorTotal;        //Subtra��o
  end
  else if op = '*' then
  begin
    valorTotal := valor * valorTotal;    //Multiplica��o
  end
  else if op = '/' then
  begin
    valorTotal := valor / valorTotal;        //Divis�o
  end
  else
  begin
    valor := valorTotal;     //Ao apertar Igual, valor n�o continua o calculo
  end;

  editResult.Text := FloatToStr(valorTotal);
  op := '';
end;

procedure TForm2.btnMaisClick(Sender: TObject);
begin
  //Bot�o Mais
  valor := StrToFloat(editResult.Text);
  op := '+';
  editResult.Text := '';
end;

procedure TForm2.btnMenosClick(Sender: TObject);
begin
  //Bot�o Menos
  try
    valor := StrToFloat(editResult.Text);
  except
    valor := 0;
  end;
  op := '-';
  editResult.Text := '';
end;

procedure TForm2.btnPontoClick(Sender: TObject);
begin
  editResult.Text := editResult.Text + ',';    //Bot�o Virgula
end;

procedure TForm2.btnPorcentagemClick(Sender: TObject);
begin
  valor := StrToFloat(editResult.Text);
  valor := valor / 100;
  editResult.Text := FloatToStr(valor);
end;

procedure TForm2.btnSetaClick(Sender: TObject);
begin
 //Bot�o Seta
 editResult.Text := Copy(editResult.Text,1,Length(editResult.Text)-1);
end;

procedure TForm2.btnVezesClick(Sender: TObject);
begin
  //Bot�o *
  valor := StrToFloat(editResult.Text);
  op := '*';
  editResult.Text := '';
end;

end.
