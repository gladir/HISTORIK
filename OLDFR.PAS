{ @author: Sylvain Maltais (support@gladir.com)
  @created: 2022
  @website(https://www.gladir.com/historik)
  @abstract(Target: Turbo Pascal, Free Pascal)
}

Program OldFr;

Uses Strings;

Type
 TraductionRec=Record
  OldWord,NewWord:PChar;
 End;

Const
 TraductionWord:Array[1..35]of TraductionRec=(
   (OldWord:'aupres';NewWord:'auprŠs'),
   (OldWord:'aydera';NewWord:'aidera'),
   (OldWord:'clamee';NewWord:'clam‚e'),
   (OldWord:'conduict';NewWord:'conduit'),
   (OldWord:'demy';NewWord:'demi'),
   (OldWord:'destruire';NewWord:'d‚truire'),
   (OldWord:'enfans';NewWord:'enfant'),
   (OldWord:'ennemy';NewWord:'ennemi'),
   (OldWord:'entamee';NewWord:'entam‚e'),
   (OldWord:'eslev‚';NewWord:'‚lev‚'),
   (OldWord:'estant';NewWord:'‚tant'),
   (OldWord:'est‚';NewWord:'‚t‚'),
   (OldWord:'estrange';NewWord:'‚trange'),
   (OldWord:'estre';NewWord:'ˆtre'),
   (OldWord:'faict';NewWord:'fait'),
   (OldWord:'finy';NewWord:'fini'),
   (OldWord:'habitans';NewWord:'habitants'),
   (OldWord:'heroic';NewWord:'h‚ro‹que'),
   (OldWord:'honnoree';NewWord:'honorer'),
   (OldWord:'iusqu''aupres';NewWord:'jusqu''auprŠs'),
   (OldWord:'mesgnie';NewWord:'maisnie'),
   (OldWord:'mesmes';NewWord:'mˆme'),
   (OldWord:'ornee';NewWord:'orn‚e'),
   (OldWord:'oyseau';NewWord:'oiseau'),
   (OldWord:'pillee';NewWord:'piller'),
   (OldWord:'pluyes';NewWord:'pluie'),
   (OldWord:'pres';NewWord:'prŠs'),
   (OldWord:'recouvree';NewWord:'recouvr‚e'),
   (OldWord:'resver';NewWord:'rˆver'),
   (OldWord:'roy';NewWord:'roi'),
   (OldWord:'roys';NewWord:'rois'),
   (OldWord:'s‡eu';NewWord:'su'),
   (OldWord:'sus';NewWord:'sous'),
   (OldWord:'tost';NewWord:'t“t'),
   (OldWord:'&';NewWord:'et')
 );

Var
 BeginWord,I,J:Integer;
 Mode:(_None,_French,_English);
 FoundMultiWord:Boolean;
 SourceFile:Text;
 FileName,CurrLine,CurrWord:String;

Function StrToUpper(S:String):String;
Var
 I:Byte;
Begin
 For I:=1 to Length(S)do Begin
  If S[I] in ['‚','ˆ','Š',#232,#233,#234]Then S[I]:='E' Else
  If S[I] in ['…','ƒ',#224,#226]Then S[I]:='A'Else
  IF S[I] in ['“',#244]Then S[I]:='O'Else
  If S[I] in ['‡',#231]Then S[I]:='C' Else
  If S[I] in['a'..'z']Then S[I]:=Chr(Ord(S[I])-32);
 End;
 StrToUpper:=S;
End;

Function IsLetter(Chr:Char):Boolean;Begin
 IsLetter:=Chr in ['A'..'Z','a'..'z','‚','ˆ','Š','…','ƒ','“','‡'];
End;

Function TranslateWord:Boolean;
Var
 FoundWord,SkipWord:Boolean;
Begin
 FoundWord:=False;
 For J:=Low(TraductionWord) to High(TraductionWord) do Begin
  If StrToUpper(StrPas(TraductionWord[J].OldWord))=StrToUpper(CurrWord)Then Begin
   FoundWord:=True;
   If BeginWord=1 Then Begin
    Write(StrToUpper(Copy(StrPas(TraductionWord[J].NewWord),1,1)),
                     Copy(StrPas(TraductionWord[J].NewWord),2,255));
   End
    Else
   Write(StrPas(TraductionWord[J].NewWord));
   Break;
  End;
 End;
 If Not(FoundWord)Then Begin
  Write(CurrWord);
 End;
 TranslateWord:=FoundWord;
End;

Procedure ParseLine;Begin
 CurrWord:='';
 BeginWord:=1;
 For I:=1 to Length(CurrLine)do Begin
  If(IsLetter(CurrLine[I]))Then CurrWord:=CurrWord+CurrLine[I]
   Else
  Begin
   FoundMultiWord:=False;
   For J:=Low(TraductionWord) to High(TraductionWord) do Begin
    If(StrLen(TraductionWord[J].OldWord)>Length(CurrWord))and
      (StrToUpper(StrPas(TraductionWord[J].OldWord))=
      StrToUpper(Copy(CurrLine,BeginWord,StrLen(TraductionWord[J].OldWord))))Then Begin
     FoundMultiWord:=True;
     Break;
    End;
   End;
   If(FoundMultiWord)Then Begin
    CurrWord:=CurrWord+CurrLine[I]
   End
    Else
   Begin
    TranslateWord;
    Write(CurrLine[I]);
    CurrWord:='';
    BeginWord:=I+1;
   End;
  End;
 End;
 TranslateWord;
End;

BEGIN
 If(ParamStr(1)='/?')or(ParamStr(1)='--help')or(ParamStr(1)='-h')Then Begin
  WriteLn('OLDFR : Cette commande permet de convertir du vieux '+
                   'fran‡ais en fran‡ais moderne.');
  WriteLn;
  WriteLn('Syntaxe : OLDFR [/ENGLISH] "message"');
  WriteLn('          OLDFR [/FRENCH] "message"');
  WriteLn('          OLDFR [/FRENCH] /FILE:fichier');
 End
  Else
 If ParamCount>0Then Begin
  FileName:='';
  CurrLine:='';
  Mode:=_French;
  For I:=1 to ParamCount do Begin
   If StrToUpper(Copy(ParamStr(I),1,6))='/FILE:'Then Begin
    FileName:=Copy(ParamStr(I),7,255);
   End
    Else
   Begin
    If CurrLine=''Then CurrLine:=ParamStr(I)
                  Else CurrLine:=CurrLine+' '+ParamStr(I);
   End;
  End;
  If FileName<>''Then Begin
   Assign(SourceFile,FileName);
   Reset(SourceFile);
   While Not EOF(SourceFile)do Begin
    ReadLn(SourceFile,CurrLine);
    ParseLine;
    WriteLn;
   End;
   Close(SourceFile);
  End
   Else
  ParseLine;
 End;
END.