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
 TraductionWord:Array[1..178]of TraductionRec=(
   (OldWord:'aisles';NewWord:'ailes'),
   (OldWord:'apperceu';NewWord:'apper‡u'),
   (OldWord:'appuy';NewWord:'appui'),
   (OldWord:'apres';NewWord:'aprŠs'),
   (OldWord:'arresteront';NewWord:'arrˆteront'),
   (OldWord:'assemblee';NewWord:'assembl‚e'),
   (OldWord:'assied';NewWord:'assis'),
   (OldWord:'aupres';NewWord:'auprŠs'),
   (OldWord:'austere';NewWord:'austŠre'),
   (OldWord:'aydera';NewWord:'aidera'),
   (OldWord:'beste';NewWord:'bˆte'),
   (OldWord:'bestes';NewWord:'bˆtes'),
   (OldWord:'bettail';NewWord:'b‚tail'),
   (OldWord:'boucq';NewWord:'bouc'),
   (OldWord:'cachees';NewWord:'cach‚es'),
   (OldWord:'chrestient‚';NewWord:'chr‚tiennt‚'),
   (OldWord:'clamee';NewWord:'clam‚e'),
   (OldWord:'conioincts';NewWord:'conjoints'),
   (OldWord:'conduict';NewWord:'conduit'),
   (OldWord:'conduicte';NewWord:'conduite'),
   (OldWord:'coniuration';NewWord:'conjuration'),
   (OldWord:'credit';NewWord:'cr‚dit'),
   (OldWord:'debat';NewWord:'d‚bat'),
   (OldWord:'debile';NewWord:'d‚bile'),
   (OldWord:'deffaire';NewWord:'d‚faire'),
   (OldWord:'delateur';NewWord:'d‚lateur'),
   (OldWord:'deluge';NewWord:'d‚luge'),
   (OldWord:'deluges';NewWord:'d‚luges'),
   (OldWord:'demy';NewWord:'demi'),
   (OldWord:'deportez';NewWord:'d‚portez'),
   (OldWord:'deslie';NewWord:'d‚lie'),
   (OldWord:'desloyale';NewWord:'d‚loyal'),
   (OldWord:'destruire';NewWord:'d‚truire'),
   (OldWord:'detriment';NewWord:'d‚triment'),
   (OldWord:'edict';NewWord:'‚dit'),
   (OldWord:'effroy';NewWord:'effroi'),
   (OldWord:'encor';NewWord:'encore'),
   (OldWord:'enfans';NewWord:'enfant'),
   (OldWord:'ennemy';NewWord:'ennemi'),
   (OldWord:'entamee';NewWord:'entam‚e'),
   (OldWord:'entreprinse';NewWord:'entreprise'),
   (OldWord:'entreprinses';NewWord:'entreprises'),
   (OldWord:'esbattre';NewWord:'‚battre'),
   (OldWord:'eschap‚';NewWord:'‚chapper'),
   (OldWord:'esgaux';NewWord:'‚gaux'),
   (OldWord:'eslev‚';NewWord:'‚lev‚'),
   (OldWord:'esleu';NewWord:'‚lu'),
   (OldWord:'esmotions';NewWord:'‚motions'),
   (OldWord:'espaignes';NewWord:'Espagne'),
   (OldWord:'espandre';NewWord:'‚pandre'),
   (OldWord:'espee';NewWord:'‚p‚e'),
   (OldWord:'espousee';NewWord:'‚pous‚e'),
   (OldWord:'esprouvez';NewWord:'‚prouvez'),
   (OldWord:'estang';NewWord:'‚tang'),
   (OldWord:'estainct';NewWord:'‚teint'),
   (OldWord:'estant';NewWord:'‚tant'),
   (OldWord:'estend';NewWord:'‚tend'),
   (OldWord:'est‚';NewWord:'‚t‚'),
   (OldWord:'estez';NewWord:'‚t‚'),
   (OldWord:'estrange';NewWord:'‚trange'),
   (OldWord:'estranges';NewWord:'‚tranges'),
   (OldWord:'estrangle';NewWord:'‚trangle'),
   (OldWord:'estre';NewWord:'ˆtre'),
   (OldWord:'estude';NewWord:'‚tude'),
   (OldWord:'excez';NewWord:'excŠs'),
   (OldWord:'execution';NewWord:'ex‚cution'),
   (OldWord:'faict';NewWord:'fait'),
   (OldWord:'faicte';NewWord:'faite'),
   (OldWord:'fascheront';NewWord:'fƒcheront'),
   (OldWord:'festes';NewWord:'fˆtes'),
   (OldWord:'finy';NewWord:'fini'),
   (OldWord:'foible';NewWord:'faible'),
   (OldWord:'fouldre';NewWord:'foudre'),
   (OldWord:'frere';NewWord:'frŠre'),
   (OldWord:'freres';NewWord:'frŠres'),
   (OldWord:'fruict';NewWord:'fruit'),
   (OldWord:'gresle';NewWord:'grˆle'),
   (OldWord:'habitans';NewWord:'habitants'),
   (OldWord:'hault';NewWord:'haut'),
   (OldWord:'heroic';NewWord:'h‚ro‹que'),
   (OldWord:'hesperique';NewWord:'hesp‚rique'),
   (OldWord:'honnoree';NewWord:'honorer'),
   (OldWord:'iamais';NewWord:'jamais'),
   (OldWord:'ie';NewWord:'je'),
   (OldWord:'ieu';NewWord:'jeu'),
   (OldWord:'ieudy';NewWord:'jeudi'),
   (OldWord:'ieune';NewWord:'jeune'),
   (OldWord:'inhabitees';NewWord:'inhabit‚es'),
   (OldWord:'ioinct';NewWord:'joint'),
   (OldWord:'iour';NewWord:'jour'),
   (OldWord:'iours';NewWord:'jours'),
   (OldWord:'ioye';NewWord:'joie'),
   (OldWord:'isle';NewWord:'Œle'),
   (OldWord:'isles';NewWord:'Œles'),
   (OldWord:'iugeront';NewWord:'jugeront'),
   (OldWord:'iupiter';NewWord:'jupiter'),
   (OldWord:'iusqu''aupres';NewWord:'jusqu''auprŠs'),
   (OldWord:'iusque';NewWord:'jusque'),
   (OldWord:'la teste';NewWord:'attester'),
   (OldWord:'laict';NewWord:'lait'),
   (OldWord:'lict';NewWord:'lit'),
   (OldWord:'lictiere';NewWord:'litiŠre'),
   (OldWord:'loix';NewWord:'loi'),
   (OldWord:'luy';NewWord:'lui'),
   (OldWord:'malefice';NewWord:'mal‚fice'),
   (OldWord:'maling';NewWord:'malin'),
   (OldWord:'menees';NewWord:'men‚es'),
   (OldWord:'mesgnie';NewWord:'maisnie'),
   (OldWord:'mesmes';NewWord:'mˆme'),
   (OldWord:'mespriseront';NewWord:'m‚priseront'),
   (OldWord:'meurdry';NewWord:'meurtri'),
   (OldWord:'mobil';NewWord:'mobile'),
   (OldWord:'monnoye';NewWord:'monnaie'),
   (OldWord:'naistra';NewWord:'naŒtra'),
   (OldWord:'negligence';NewWord:'n‚gligence'),
   (OldWord:'nosigee';NewWord:'noy‚e'),
   (OldWord:'nuict';NewWord:'nuit'),
   (OldWord:'nuicts';NewWord:'nuits'),
   (OldWord:'ny';NewWord:'ni'),
   (OldWord:'ognon';NewWord:'oignon'),
   (OldWord:'oincte';NewWord:'oindre'),
   (OldWord:'oisel';NewWord:'oiseau'),
   (OldWord:'ornee';NewWord:'orn‚e'),
   (OldWord:'oyseau';NewWord:'oiseau'),
   (OldWord:'parfaict';NewWord:'parfait'),
   (OldWord:'paroistront';NewWord:'paraŒtront'),
   (OldWord:'picque';NewWord:'pique'),
   (OldWord:'pillee';NewWord:'piller'),
   (OldWord:'piscature';NewWord:'picature'),
   (OldWord:'pluye';NewWord:'pluie'),
   (OldWord:'pluyes';NewWord:'pluies'),
   (OldWord:'praye';NewWord:'pr‚e'),
   (OldWord:'pres';NewWord:'prŠs'),
   (OldWord:'prophetie';NewWord:'proph‚tie'),
   (OldWord:'rasee';NewWord:'ras‚e'),
   (OldWord:'receuz';NewWord:'re‡u'),
   (OldWord:'recouvree';NewWord:'recouvr‚e'),
   (OldWord:'reduicts';NewWord:'r‚duits'),
   (OldWord:'refaict';NewWord:'refait'),
   (OldWord:'regie';NewWord:'r‚gie'),
   (OldWord:'regne';NewWord:'rŠgne'),
   (OldWord:'renovation';NewWord:'r‚novation'),
   (OldWord:'republique';NewWord:'r‚publique'),
   (OldWord:'requestes';NewWord:'requˆte'),
   (OldWord:'response';NewWord:'r‚ponse'),
   (OldWord:'resuscit‚';NewWord:'ressuscit‚'),
   (OldWord:'resver';NewWord:'rˆver'),
   (OldWord:'roy';NewWord:'roi'),
   (OldWord:'royne';NewWord:'reine'),
   (OldWord:'roys';NewWord:'rois'),
   (OldWord:'ruyne';NewWord:'ruine'),
   (OldWord:'saincte';NewWord:'sainte'),
   (OldWord:'scenique';NewWord:'sc‚nique'),
   (OldWord:'s‡eu';NewWord:'su'),
   (OldWord:'sedition';NewWord:'s‚dition'),
   (OldWord:'seiourn‚';NewWord:'s‚journ‚'),
   (OldWord:'serpens';NewWord:'serpent'),
   (OldWord:'siecle';NewWord:'siŠcle'),
   (OldWord:'siecles';NewWord:'siŠcles'),
   (OldWord:'soubz';NewWord:'sous'),
   (OldWord:'spuresme';NewWord:'pur'),
   (OldWord:'subiuguant';NewWord:'subjuguant'),
   (OldWord:'suict';NewWord:'suit'),
   (OldWord:'sus';NewWord:'sous'),
   (OldWord:'suyvra';NewWord:'suivra'),
   (OldWord:'tempeste';NewWord:'tempˆte'),
   (OldWord:'tenebres';NewWord:'t‚nŠbres'),
   (OldWord:'theatre';NewWord:'th‚ƒtre'),
   (OldWord:'tost';NewWord:'t“t'),
   (OldWord:'tremblee';NewWord:'trembl‚e'),
   (OldWord:'thresor';NewWord:'tr‚sor'),
   (OldWord:'vaincu‰';NewWord:'vaincue'),
   (OldWord:'versee';NewWord:'vers‚e'),
   (OldWord:'vexee';NewWord:'vex‚e'),
   (OldWord:'vexees';NewWord:'vex‚es'),
   (OldWord:'vuidera';NewWord:'videra'),
   (OldWord:'vuides';NewWord:'vides'),
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

Function IsMAJ(Chr:Char):Boolean;Begin
 IsMAJ:=Chr in ['A'..'Z'];
End;

Function TranslateWord:Boolean;
Var
 FoundWord,SkipWord:Boolean;
Begin
 FoundWord:=False;
 For J:=Low(TraductionWord) to High(TraductionWord) do Begin
  If StrToUpper(StrPas(TraductionWord[J].OldWord))=StrToUpper(CurrWord)Then Begin
   FoundWord:=True;
   If(BeginWord=1)or(IsMAJ(CurrWord[1]))Then Begin
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
