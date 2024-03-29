{ @author: Sylvain Maltais (support@gladir.com)
  @created: 2022
  @website(https://www.gladir.com/historik)
  @abstract(Target: Turbo Pascal, Free Pascal)
}

Program CITY;

Uses Strings;

Type
 CityRecord=Record
  Ville:PChar;
  AnneeFondation:Word;
  Fondateur:PChar;
  Region:(_Canada,_EtatsUnis,_Japan,_Perou,_Russie);
 End;

Const
 Cities:Array[0..8]of CityRecord=(
  (Ville:'Alma';AnneeFondation:1867;Fondateur:'Damase Boulanger';Region:_Canada),
  (Ville:'Montr�al';AnneeFondation:1642;
   Fondateur:'Paul de Chomedey de Maisonneuve et Jeanne Mance';
   Region:_Canada),
  (Ville:'Kyoto';AnneeFondation:794;Fondateur:'';Region:_Japan),
  (Ville:'Lima';AnneeFondation:1535;Fondateur:'Francisco Pizarro';Region:_Perou),
  (Ville:'New-York';AnneeFondation:1624;Fondateur:NIL;Region:_EtatsUnis),
  (Ville:'Qu�bec';AnneeFondation:1608;Fondateur:'Samuel de Champlain';Region:_Canada),
  (Ville:'Saint-P�tersbourg';AnneeFondation:1703;Fondateur:NIL;Region:_Russie),
  (Ville:'Sherbrooke';AnneeFondation:1802;Fondateur:'Gilbert Hyatt';Region:_Canada),
  (Ville:'Trois-Rivi�res';AnneeFondation:1634;Fondateur:'Laviolette';Region:_Canada)
 );

Var
 I,J:Integer;

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

BEGIN
 If(ParamStr(1)='/?')or(ParamStr(1)='--help')or(ParamStr(1)='-h')Then Begin
  WriteLn('CITY : Cette commande permet d''indiquer la date de fondation '+
          'd''une ville.');
  WriteLn;
  WriteLn('Syntaxe : CITY ville');
 End
  Else
 If ParamCount>0Then Begin
  For I:=1 to ParamCount do Begin
   For J:=Low(Cities) to High(Cities)do Begin
    If StrToUpper(ParamStr(I))=StrToUpper(StrPas(Cities[J].Ville))Then Begin
     WriteLn('Ville : ',StrPas(Cities[J].Ville));
     Write('Pays/R�gion : ');
     Case Cities[J].Region of
      _Canada:Write('Canada');
      _EtatsUnis:Write('�tats-Unis');
      _Perou:Write('P�rou');
      _Russie:Write('Russie');
     End;
     WriteLn;
     WriteLn('Ann�e fondation : ',Cities[J].AnneeFondation);
     If Cities[J].Fondateur<>NIL Then WriteLn('Fondateur : ',StrPas(Cities[J].Fondateur));
    End;
   End;
  End;
 End
  Else
 WriteLn('Param�tre requis !');
END.
