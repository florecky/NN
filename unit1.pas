unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Grids;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    Plikcsv1: TStringList;
    //Plikcsv2: TStringList;
    tempcsv: TStringList;

  public


  end;

var
  Form1: TForm1;
  i: Integer;
  s: String;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin




end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Plikcsv1 := TStringList.Create;
  tempcsv := TStringList.Create;

  Plikcsv1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'dane\Npo.csv');
    For i:=0 to Plikcsv1.Count-1 do Begin
      s := Plikcsv1.Strings[i];
      if s = '' then s:='a';
      if (s[1] in ['0'..'9']) then Begin
         tempcsv.Add(s);
      end;
    end;
  tempcsv.SaveToFile(ExtractFilePath(Application.ExeName) + 'dane\po_tmp.csv');
  tempcsv.free;

  plikcsv1.Free;
  StringGrid1.LoadFromCSVFile(ExtractFilePath(Application.ExeName) + 'dane\po_tmp.csv',';',false,0,true);
  StringGrid1.AutoSizeColumns;


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Plikcsv1 := TStringList.Create;
  tempcsv := TStringList.Create;

  Plikcsv1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'dane\Nprzed.csv');
    For i:=0 to Plikcsv1.Count-1 do Begin
      s := Plikcsv1.Strings[i];
      if s = '' then s:='a';
      if (s[1] in ['0'..'9']) then Begin
         tempcsv.Add(s);
      end;
    end;
  tempcsv.SaveToFile(ExtractFilePath(Application.ExeName) + 'dane\przed_tmp.csv');
  tempcsv.free;

  plikcsv1.Free;
  StringGrid2.LoadFromCSVFile(ExtractFilePath(Application.ExeName) + 'dane\przed_tmp.csv',';',false,0,true);
  StringGrid2.AutoSizeColumns;


end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Plikcsv1 := TStringList.Create;
  tempcsv := TStringList.Create;

  Plikcsv1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'dane\Nrwz.csv');
    For i:=0 to Plikcsv1.Count-1 do Begin
      s := Plikcsv1.Strings[i];

      if s = '' then s:= 'a';
         //for j:=0 to s.Length - 1 do begin
             //s[j]

        // end;
      if (s[1] in ['R','Z']) then Begin
         tempcsv.Add(s);
      end;
    end;
  tempcsv.SaveToFile(ExtractFilePath(Application.ExeName) + 'dane\rwz_tmp.csv');
  tempcsv.free;

  plikcsv1.Free;
  StringGrid3.LoadFromCSVFile(ExtractFilePath(Application.ExeName) + 'dane\rwz_tmp.csv',';',false,0,true);
  StringGrid3.AutoSizeColumns;



end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Plikcsv1 := TStringList.Create;
  tempcsv := TStringList.Create;

  Plikcsv1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'dane\Nsprzed.csv');
    For i:=0 to Plikcsv1.Count-1 do Begin
      s := Plikcsv1.Strings[i];
      if s = '' then s:='a';
      if (s[1] in ['0'..'9']) then Begin
         tempcsv.Add(s);
      end;
    end;
  tempcsv.SaveToFile(ExtractFilePath(Application.ExeName) + 'dane\sprzed_tmp.csv');
  tempcsv.free;

  plikcsv1.Free;
  StringGrid4.LoadFromCSVFile(ExtractFilePath(Application.ExeName) + 'dane\sprzed_tmp.csv',';',false,0,true);
  StringGrid4.AutoSizeColumns;


end;


end.

