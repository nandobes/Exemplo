unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Sobre: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    btnExport: TButton;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    FDMemTable1nome: TStringField;
    FDMemTable1sobrenome: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  DataSet.Serialize;

{$R *.dfm}

procedure TForm1.btnExportClick(Sender: TObject);
begin
  Memo1.Text := FDMemTable1.ToJSONArray().ToString;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  FDMemTable1.Open;
  FDMemTable1.Append;
  FDMemTable1nome.AsString := Edit1.Text;
  FDMemTable1sobrenome.AsString:= Edit2.Text;
  FDMemTable1.Post;

  Edit1.Clear;
  Edit2.Clear;
end;

end.
