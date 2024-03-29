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
 TraductionWord:Array[1..403]of TraductionRec=(
   (OldWord:'aage';NewWord:'�ge'),
   (OldWord:'adioignant';NewWord:'adjoignant'),
   (OldWord:'aisnier';NewWord:'a�n�'),
   (OldWord:'aisles';NewWord:'ailes'),
   (OldWord:'aliance';NewWord:'alliance'),
   (OldWord:'amy';NewWord:'ami'),
   (OldWord:'amye';NewWord:'amie'),
   (OldWord:'apperceu';NewWord:'apper�u'),
   (OldWord:'appreste';NewWord:'appr�te'),
   (OldWord:'apprester';NewWord:'appr�ter'),
   (OldWord:'appuy';NewWord:'appui'),
   (OldWord:'apres';NewWord:'apr�s'),
   (OldWord:'armee';NewWord:'arm�e'),
   (OldWord:'arresteront';NewWord:'arr�teront'),
   (OldWord:'assemblee';NewWord:'assembl�e'),
   (OldWord:'assied';NewWord:'assis'),
   (OldWord:'assiegee';NewWord:'assi�g�e'),
   (OldWord:'aupres';NewWord:'aupr�s'),
   (OldWord:'austere';NewWord:'aust�re'),
   (OldWord:'autheur';NewWord:'auteur'),
   (OldWord:'ayde';NewWord:'aide'),
   (OldWord:'aydera';NewWord:'aidera'),
   (OldWord:'aygu�';NewWord:'aigu'),
   (OldWord:'aymable';NewWord:'aimable'),
   (OldWord:'baniere';NewWord:'banni�re'),
   (OldWord:'baptesme';NewWord:'b�pt�me'),
   (OldWord:'basty';NewWord:'batti'),
   (OldWord:'beste';NewWord:'b�te'),
   (OldWord:'bestes';NewWord:'b�tes'),
   (OldWord:'bettail';NewWord:'b�tail'),
   (OldWord:'bien tost';NewWord:'bient�t'),
   (OldWord:'bled';NewWord:'bl�'),
   (OldWord:'boucq';NewWord:'bouc'),
   (OldWord:'brusler';NewWord:'br�ler'),
   (OldWord:'bruslera';NewWord:'br�lera'),
   (OldWord:'bruslez';NewWord:'br�lez'),
   (OldWord:'cachees';NewWord:'cach�es'),
   (OldWord:'caige';NewWord:'cage'),
   (OldWord:'caresme';NewWord:'car�me'),
   (OldWord:'cecy';NewWord:'ceci'),
   (OldWord:'c�l�';NewWord:'scell�'),
   (OldWord:'celestes';NewWord:'c�leste'),
   (OldWord:'changee';NewWord:'chang�e'),
   (OldWord:'chascun';NewWord:'chacun'),
   (OldWord:'chasteau';NewWord:'ch�teau'),
   (OldWord:'chasteaux';NewWord:'ch�teaux'),
   (OldWord:'chief';NewWord:'chef'),
   (OldWord:'chrestient�';NewWord:'chr�tiennt�'),
   (OldWord:'cinquiesme';NewWord:'cinqui�me'),
   (OldWord:'clamee';NewWord:'clam�e'),
   (OldWord:'cognoistre';NewWord:'conna�tre'),
   (OldWord:'comete';NewWord:'com�te'),
   (OldWord:'comparoistra';NewWord:'compara�tra'),
   (OldWord:'conioincts';NewWord:'conjoints'),
   (OldWord:'conduict';NewWord:'conduit'),
   (OldWord:'conduicte';NewWord:'conduite'),
   (OldWord:'coniuration';NewWord:'conjuration'),
   (OldWord:'conquerant';NewWord:'conqu�rant'),
   (OldWord:'conquerants';NewWord:'conqu�rants'),
   (OldWord:'cost�';NewWord:'c�t�'),
   (OldWord:'credit';NewWord:'cr�dit'),
   (OldWord:'dangier';NewWord:'danger'),
   (OldWord:'dangiers';NewWord:'dangers'),
   (OldWord:'debat';NewWord:'d�bat'),
   (OldWord:'debile';NewWord:'d�bile'),
   (OldWord:'defaite';NewWord:'d�faite'),
   (OldWord:'defaudra';NewWord:'d�faillira'),
   (OldWord:'defence';NewWord:'d�fense'),
   (OldWord:'deffaire';NewWord:'d�faire'),
   (OldWord:'delateur';NewWord:'d�lateur'),
   (OldWord:'deluge';NewWord:'d�luge'),
   (OldWord:'deluges';NewWord:'d�luges'),
   (OldWord:'demy';NewWord:'demi'),
   (OldWord:'deportez';NewWord:'d�portez'),
   (OldWord:'descouvert';NewWord:'d�couvert'),
   (OldWord:'descouverte';NewWord:'d�couverte'),
   (OldWord:'descouvrissant';NewWord:'d�couvrissant'),
   (OldWord:'descroissante';NewWord:'d�croissante'),
   (OldWord:'deslie';NewWord:'d�lie'),
   (OldWord:'desloyal';NewWord:'d�loyal'),
   (OldWord:'desloyale';NewWord:'d�loyal'),
   (OldWord:'despendre';NewWord:'d�pendre'),
   (OldWord:'desroutte';NewWord:'d�route'),
   (OldWord:'destruire';NewWord:'d�truire'),
   (OldWord:'detresse';NewWord:'d�tresse'),
   (OldWord:'detriment';NewWord:'d�triment'),
   (OldWord:'devan';NewWord:'devant'),
   (OldWord:'devorera';NewWord:'d�vorera'),
   (OldWord:'different';NewWord:'diff�rent'),
   (OldWord:'dixneufiesme';NewWord:'dix-neuvi�me'),
   (OldWord:'dixsept';NewWord:'dix-sept'),
   (OldWord:'donra';NewWord:'donnera'),
   (OldWord:'donront';NewWord:'donneront'),
   (OldWord:'dueil';NewWord:'deuil'),
   (OldWord:'eau�';NewWord:'eau'),
   (OldWord:'eaue';NewWord:'eau'),
   (OldWord:'eloquence';NewWord:'�loquence'),
   (OldWord:'empeshera';NewWord:'emp�chera'),
   (OldWord:'escorce';NewWord:'�corce'),
   (OldWord:'escrit';NewWord:'�crit'),
   (OldWord:'edict';NewWord:'�dit'),
   (OldWord:'effroy';NewWord:'effroi'),
   (OldWord:'encor';NewWord:'encore'),
   (OldWord:'enfans';NewWord:'enfant'),
   (OldWord:'ennemy';NewWord:'ennemi'),
   (OldWord:'entamee';NewWord:'entam�e'),
   (OldWord:'entreprinse';NewWord:'entreprise'),
   (OldWord:'entreprinses';NewWord:'entreprises'),
   (OldWord:'esbattre';NewWord:'�battre'),
   (OldWord:'eschap�';NewWord:'�chapper'),
   (OldWord:'eschapp�';NewWord:'�chapper'),
   (OldWord:'eschapper';NewWord:'�chapper'),
   (OldWord:'eschelle';NewWord:'�chelle'),
   (OldWord:'escorse';NewWord:'�corse'),
   (OldWord:'escoutte';NewWord:'�coute'),
   (OldWord:'escrivain';NewWord:'�crivain'),
   (OldWord:'esgal';NewWord:'�gal'),
   (OldWord:'esgaux';NewWord:'�gaux'),
   (OldWord:'eslev�';NewWord:'�lev�'),
   (OldWord:'esleu';NewWord:'�lu'),
   (OldWord:'esloign�';NewWord:'�loign�'),
   (OldWord:'esmotions';NewWord:'�motions'),
   (OldWord:'espaigne';NewWord:'Espagne'),
   (OldWord:'espaignes';NewWord:'Espagne'),
   (OldWord:'espandre';NewWord:'�pandre'),
   (OldWord:'espargner';NewWord:'�pargner'),
   (OldWord:'espee';NewWord:'�p�e'),
   (OldWord:'esperance';NewWord:'esp�rance'),
   (OldWord:'espousee';NewWord:'�pous�e'),
   (OldWord:'esprouvez';NewWord:'�prouvez'),
   (OldWord:'estage';NewWord:'�tage'),
   (OldWord:'estang';NewWord:'�tang'),
   (OldWord:'estainct';NewWord:'�teint'),
   (OldWord:'estant';NewWord:'�tant'),
   (OldWord:'estat';NewWord:'�tat'),
   (OldWord:'esteint';NewWord:'�teint'),
   (OldWord:'estend';NewWord:'�tend'),
   (OldWord:'estendar';NewWord:'�tendard'),
   (OldWord:'estendars';NewWord:'�tendards'),
   (OldWord:'estendant';NewWord:'�teindant'),
   (OldWord:'estendue';NewWord:'�tendue'),
   (OldWord:'esternit�';NewWord:'�ternit�'),
   (OldWord:'est�';NewWord:'�t�'),
   (OldWord:'estez';NewWord:'�t�'),
   (OldWord:'estincelle';NewWord:'�tincelle'),
   (OldWord:'estoille';NewWord:'�toile'),
   (OldWord:'estoit';NewWord:'�tait'),
   (OldWord:'estonn�';NewWord:'�tonn�'),
   (OldWord:'estoup�';NewWord:'�toup�'),
   (OldWord:'estrange';NewWord:'�trange'),
   (OldWord:'estrangement';NewWord:'�trangement'),
   (OldWord:'estranges';NewWord:'�tranges'),
   (OldWord:'estrangle';NewWord:'�trangle'),
   (OldWord:'estre';NewWord:'�tre'),
   (OldWord:'estreme';NewWord:'extr�me'),
   (OldWord:'estremes';NewWord:'extr�mes'),
   (OldWord:'estres';NewWord:'�tres'),
   (OldWord:'estude';NewWord:'�tude'),
   (OldWord:'excez';NewWord:'exc�s'),
   (OldWord:'execution';NewWord:'ex�cution'),
   (OldWord:'exercites';NewWord:'exercices'),
   (OldWord:'extresme';NewWord:'extr�me'),
   (OldWord:'faict';NewWord:'fait'),
   (OldWord:'faicte';NewWord:'faite'),
   (OldWord:'fascheront';NewWord:'f�cheront'),
   (OldWord:'favory';NewWord:'favori'),
   (OldWord:'ferreure';NewWord:'ferrure'),
   (OldWord:'feste';NewWord:'f�te'),
   (OldWord:'festes';NewWord:'f�tes'),
   (OldWord:'fiere';NewWord:'fi�re'),
   (OldWord:'finy';NewWord:'fini'),
   (OldWord:'flesche';NewWord:'fl�che'),
   (OldWord:'florrir';NewWord:'fleurir'),
   (OldWord:'foible';NewWord:'faible'),
   (OldWord:'fouldre';NewWord:'foudre'),
   (OldWord:'foy';NewWord:'foi'),
   (OldWord:'frenetique';NewWord:'fr�n�tique'),
   (OldWord:'frere';NewWord:'fr�re'),
   (OldWord:'freres';NewWord:'fr�res'),
   (OldWord:'fruict';NewWord:'fruit'),
   (OldWord:'garentira';NewWord:'garantira'),
   (OldWord:'gelees';NewWord:'gel�es'),
   (OldWord:'general';NewWord:'g�n�ral'),
   (OldWord:'gresle';NewWord:'gr�le'),
   (OldWord:'guere';NewWord:'gu�re'),
   (OldWord:'guieres';NewWord:'gu�re'),
   (OldWord:'habitans';NewWord:'habitants'),
   (OldWord:'hault';NewWord:'haut'),
   (OldWord:'hayne';NewWord:'haine'),
   (OldWord:'hecatombe';NewWord:'h�catombe'),
   (OldWord:'heroic';NewWord:'h�ro�que'),
   (OldWord:'hesperique';NewWord:'hesp�rique'),
   (OldWord:'honnoree';NewWord:'honorer'),
   (OldWord:'huict';NewWord:'huit'),
   (OldWord:'ia';NewWord:'d�j�'),
   (OldWord:'iavelot';NewWord:'javelot'),
   (OldWord:'iavelots';NewWord:'javelots'),
   (OldWord:'iamais';NewWord:'jamais'),
   (OldWord:'iambe';NewWord:'jambe'),
   (OldWord:'iambes';NewWord:'jambes'),
   (OldWord:'ie';NewWord:'je'),
   (OldWord:'ieu';NewWord:'jeu'),
   (OldWord:'ieudy';NewWord:'jeudi'),
   (OldWord:'ieune';NewWord:'jeune'),
   (OldWord:'iettera';NewWord:'jettera'),
   (OldWord:'ifles';NewWord:'�les'),
   (OldWord:'incogneus';NewWord:'inconnu'),
   (OldWord:'infiniz';NewWord:'infini'),
   (OldWord:'infiny';NewWord:'infini'),
   (OldWord:'inhabitees';NewWord:'inhabit�es'),
   (OldWord:'iniure';NewWord:'injure'),
   (OldWord:'insensee';NewWord:'insens�e'),
   (OldWord:'ioindra';NewWord:'joindra'),
   (OldWord:'ioinct';NewWord:'joint'),
   (OldWord:'ioinctes';NewWord:'jointes'),
   (OldWord:'ioindront';NewWord:'joindront'),
   (OldWord:'ioint';NewWord:'joint'),
   (OldWord:'ioyeux';NewWord:'joyeux'),
   (OldWord:'iour';NewWord:'jour'),
   (OldWord:'iours';NewWord:'jours'),
   (OldWord:'iouyra';NewWord:'jouira'),
   (OldWord:'ioye';NewWord:'joie'),
   (OldWord:'isle';NewWord:'�le'),
   (OldWord:'isles';NewWord:'�les'),
   (OldWord:'iugeront';NewWord:'jugeront'),
   (OldWord:'iuin';NewWord:'juin'),
   (OldWord:'iupiter';NewWord:'jupiter'),
   (OldWord:'iura';NewWord:'jura'),
   (OldWord:'iusqu''aupres';NewWord:'jusqu''aupr�s'),
   (OldWord:'iusqu''au';NewWord:'jusqu''au'),
   (OldWord:'iusqu''en';NewWord:'jusqu''en'),
   (OldWord:'iusque';NewWord:'jusque'),
   (OldWord:'iusques';NewWord:'jusque'),
   (OldWord:'iuste';NewWord:'juste'),
   (OldWord:'la teste';NewWord:'attester'),
   (OldWord:'laict';NewWord:'lait'),
   (OldWord:'laschee';NewWord:'l�ch�e'),
   (OldWord:'lict';NewWord:'lit'),
   (OldWord:'lictiere';NewWord:'liti�re'),
   (OldWord:'loix';NewWord:'loi'),
   (OldWord:'longtaine';NewWord:'lointain'),
   (OldWord:'lorgueilleux';NewWord:'l''orgueilleux'),
   (OldWord:'loy';NewWord:'loi'),
   (OldWord:'luy';NewWord:'lui'),
   (OldWord:'luyra';NewWord:'luira'),
   (OldWord:'lygustique';NewWord:'lingustique'),
   (OldWord:'maistre';NewWord:'ma�tre'),
   (OldWord:'maistres';NewWord:'ma�tres'),
   (OldWord:'male';NewWord:'m�le'),
   (OldWord:'malefice';NewWord:'mal�fice'),
   (OldWord:'maling';NewWord:'malin'),
   (OldWord:'mastin�e';NewWord:'matin�e'),
   (OldWord:'mastin�es';NewWord:'matin�es'),
   (OldWord:'may';NewWord:'mai'),
   (OldWord:'medecin';NewWord:'m�decin'),
   (OldWord:'memoire';NewWord:'m�moire'),
   (OldWord:'menees';NewWord:'men�es'),
   (OldWord:'mesgnie';NewWord:'maisnie'),
   (OldWord:'mesl�';NewWord:'m�l�'),
   (OldWord:'mesme';NewWord:'m�me'),
   (OldWord:'mesmes';NewWord:'m�mes'),
   (OldWord:'mespriseront';NewWord:'m�priseront'),
   (OldWord:'meurdry';NewWord:'meurtri'),
   (OldWord:'midy';NewWord:'midi'),
   (OldWord:'mobil';NewWord:'mobile'),
   (OldWord:'monnoye';NewWord:'monnaie'),
   (OldWord:'monstrera';NewWord:'montrera'),
   (OldWord:'n''a veu';NewWord:'n''a vue'),
   (OldWord:'naistra';NewWord:'na�tra'),
   (OldWord:'naistront';NewWord:'na�tront'),
   (OldWord:'nay';NewWord:'n�'),
   (OldWord:'negligence';NewWord:'n�gligence'),
   (OldWord:'north';NewWord:'nord'),
   (OldWord:'nosigee';NewWord:'noy�e'),
   (OldWord:'nuict';NewWord:'nuit'),
   (OldWord:'nuicts';NewWord:'nuits'),
   (OldWord:'ny';NewWord:'ni'),
   (OldWord:'obeissance';NewWord:'ob�issance'),
   (OldWord:'ognon';NewWord:'oignon'),
   (OldWord:'oincte';NewWord:'oindre'),
   (OldWord:'oisel';NewWord:'oiseau'),
   (OldWord:'ongrie';NewWord:'hongrie'),
   (OldWord:'ornee';NewWord:'orn�e'),
   (OldWord:'oubly';NewWord:'oubli'),
   (OldWord:'ouye';NewWord:'ou�e'),
   (OldWord:'ouys';NewWord:'ou�r'),
   (OldWord:'oyseau';NewWord:'oiseau'),
   (OldWord:'oyseaux';NewWord:'oiseaux'),
   (OldWord:'pasques';NewWord:'p�ques'),
   (OldWord:'parfaict';NewWord:'parfait'),
   (OldWord:'paroistront';NewWord:'para�tront'),
   (OldWord:'penultiesme';NewWord:'p�nulti�me'),
   (OldWord:'pere';NewWord:'p�re'),
   (OldWord:'perservere';NewWord:'pers�v�re'),
   (OldWord:'picque';NewWord:'pique'),
   (OldWord:'pillee';NewWord:'piller'),
   (OldWord:'piscature';NewWord:'picature'),
   (OldWord:'plaincte';NewWord:'plainte'),
   (OldWord:'plainctes';NewWord:'plaintes'),
   (OldWord:'plaincts';NewWord:'plaints'),
   (OldWord:'playe';NewWord:'plaie'),
   (OldWord:'plouvoir';NewWord:'pleuvoir'),
   (OldWord:'pluye';NewWord:'pluie'),
   (OldWord:'pluyes';NewWord:'pluies'),
   (OldWord:'pole';NewWord:'p�le'),
   (OldWord:'polemars';NewWord:'pol�mas'),
   (OldWord:'pourroit';NewWord:'pouvoir'),
   (OldWord:'poursuivans';NewWord:'poursuivant'),
   (OldWord:'praye';NewWord:'pr�e'),
   (OldWord:'pres';NewWord:'pr�s'),
   (OldWord:'prestre';NewWord:'pr�tre'),
   (OldWord:'prinses';NewWord:'prises'),
   (OldWord:'procree';NewWord:'procr��'),
   (OldWord:'prophete';NewWord:'proph�te'),
   (OldWord:'prophetie';NewWord:'proph�tie'),
   (OldWord:'proye';NewWord:'proie'),
   (OldWord:'quatorziesme';NewWord:'quatorzi�me'),
   (OldWord:'rasee';NewWord:'ras�e'),
   (OldWord:'receu';NewWord:'re�u'),
   (OldWord:'receuz';NewWord:'re�u'),
   (OldWord:'recouvree';NewWord:'recouvr�e'),
   (OldWord:'recree';NewWord:'recr��'),
   (OldWord:'reduicts';NewWord:'r�duits'),
   (OldWord:'refaict';NewWord:'refait'),
   (OldWord:'regie';NewWord:'r�gie'),
   (OldWord:'regne';NewWord:'r�gne'),
   (OldWord:'renaistre';NewWord:'rena�tre'),
   (OldWord:'renovation';NewWord:'r�novation'),
   (OldWord:'repoulsee';NewWord:'repouss�e'),
   (OldWord:'republique';NewWord:'r�publique'),
   (OldWord:'requestes';NewWord:'requ�te'),
   (OldWord:'response';NewWord:'r�ponse'),
   (OldWord:'resuscit�';NewWord:'ressuscit�'),
   (OldWord:'resver';NewWord:'r�ver'),
   (OldWord:'riblee';NewWord:'ribl�e'),
   (OldWord:'rongee';NewWord:'rong�e'),
   (OldWord:'rostis';NewWord:'r�ti'),
   (OldWord:'roy';NewWord:'roi'),
   (OldWord:'royne';NewWord:'reine'),
   (OldWord:'roys';NewWord:'rois'),
   (OldWord:'roze';NewWord:'rose'),
   (OldWord:'ruyne';NewWord:'ruine'),
   (OldWord:'sainct';NewWord:'saint'),
   (OldWord:'saincte';NewWord:'sainte'),
   (OldWord:'saturne en libra';NewWord:'Saturne en Balance'),
   (OldWord:'saulmon';NewWord:'saumon'),
   (OldWord:'saulmons';NewWord:'saumons'),
   (OldWord:'s�aura';NewWord:'saura'),
   (OldWord:'s�avoir';NewWord:'savoir'),
   (OldWord:'scenique';NewWord:'sc�nique'),
   (OldWord:'s�eu';NewWord:'su'),
   (OldWord:'sedition';NewWord:'s�dition'),
   (OldWord:'seduit';NewWord:'s�duit'),
   (OldWord:'seduits';NewWord:'s�duits'),
   (OldWord:'seicher';NewWord:'s�cher'),
   (OldWord:'seiour';NewWord:'s�jour'),
   (OldWord:'seiourn�';NewWord:'s�journ�'),
   (OldWord:'septiesme';NewWord:'septi�me'),
   (OldWord:'serpens';NewWord:'serpent'),
   (OldWord:'siecle';NewWord:'si�cle'),
   (OldWord:'siecles';NewWord:'si�cles'),
   (OldWord:'sis cens';NewWord:'six cent'),
   (OldWord:'solemniser';NewWord:'solenniser'),
   (OldWord:'soubs';NewWord:'sous'),
   (OldWord:'soubz';NewWord:'sous'),
   (OldWord:'souldars';NewWord:'soudard'),
   (OldWord:'soustenir';NewWord:'soutenir'),
   (OldWord:'soustenu';NewWord:'soutenu'),
   (OldWord:'soy';NewWord:'soi'),
   (OldWord:'spuresme';NewWord:'pur'),
   (OldWord:'subiuguant';NewWord:'subjuguant'),
   (OldWord:'subiet';NewWord:'sujet'),
   (OldWord:'subiuguera';NewWord:'subjuguera'),
   (OldWord:'subiuguez';NewWord:'subjuguez'),
   (OldWord:'submergee';NewWord:'submerg�e'),
   (OldWord:'suict';NewWord:'suit'),
   (OldWord:'sus';NewWord:'sous'),
   (OldWord:'suys';NewWord:'suis'),
   (OldWord:'suyvra';NewWord:'suivra'),
   (OldWord:'tempeste';NewWord:'temp�te'),
   (OldWord:'tenebres';NewWord:'t�n�bres'),
   (OldWord:'theatre';NewWord:'th��tre'),
   (OldWord:'thresor';NewWord:'tr�sor'),
   (OldWord:'tost';NewWord:'t�t'),
   (OldWord:'tousiours';NewWord:'toujours'),
   (OldWord:'toy';NewWord:'toi'),
   (OldWord:'trainees';NewWord:'tra�n�es'),
   (OldWord:'treisner';NewWord:'tra�ner'),
   (OldWord:'tremblee';NewWord:'trembl�e'),
   (OldWord:'troublee';NewWord:'troubl�e'),
   (OldWord:'trosne';NewWord:'tr�ne'),
   (OldWord:'urlemens';NewWord:'hurlement'),
   (OldWord:'vaincu�';NewWord:'vaincue'),
   (OldWord:'versee';NewWord:'vers�e'),
   (OldWord:'vexee';NewWord:'vex�e'),
   (OldWord:'vexees';NewWord:'vex�es'),
   (OldWord:'veoir';NewWord:'voir'),
   (OldWord:'vrays';NewWord:'vrai'),
   (OldWord:'vueille';NewWord:'veille'),
   (OldWord:'vuidera';NewWord:'videra'),
   (OldWord:'vuides';NewWord:'vides'),
   (OldWord:'yssue';NewWord:'issue'),
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
  If S[I] in ['�','�','�',#232,#233,#234]Then S[I]:='E' Else
  If S[I] in ['�','�',#224,#226]Then S[I]:='A'Else
  IF S[I] in ['�',#244]Then S[I]:='O'Else
  If S[I] in ['�',#231]Then S[I]:='C' Else
  If S[I] in['a'..'z']Then S[I]:=Chr(Ord(S[I])-32);
 End;
 StrToUpper:=S;
End;

Function IsLetter(Chr:Char):Boolean;Begin
 IsLetter:=Chr in ['A'..'Z','a'..'z','�','�','�','�','�','�','�'];
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
                   'fran�ais en fran�ais moderne.');
  WriteLn;
  WriteLn('Syntaxe : OLDFR "message"');
  WriteLn('          OLDFR /FILE:fichier');
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
