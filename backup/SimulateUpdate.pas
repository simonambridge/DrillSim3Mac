Unit SimulateUpdate;

Interface

Uses sysutils,
     DrillSimVariables,
     DrillSimUtilities;

Procedure ScreenService;
Procedure DrawKelly;    { draws appropriate kelly and bushing @ KelHt }
Procedure SetKelly; { move kelly to drilling position ie. when loading a file }
Procedure StatusUpdate;
Procedure TimeUpdate;
Procedure MudUpdate;
Procedure FlowUpdate;

Procedure DataPanelUpdate;
Procedure DepthUpdate;
Procedure DrillUpdate;
Procedure BOPUpdate;

Implementation

Uses DrillSimGUI;

{ -------------------- Kelly Routines ------------------- }

Procedure DrawKelly;    { draws appropriate kelly and bushing @ KelHt }
Begin
  writeln('SimulateUpdate.DrawKelly');
  KellyImageIndex:=trunc((33-Data.KellyHeight) * 2.667);  { 80 px /30 feet = 2.667 px/foot }
  //KellyImageIndex:=KellyImageIndex div 10;

  //StringToMemo('Kelly height = ' + FloatToStr(Data.KellyHeight) + '    KellyImageIndex = ' + IntToStr(KellyImageIndex));
  writeln('Kelly pics are at  = ' + OriginDirectory + 'Resources/kellyup-2.png');
  { quick and dirty code }
  if (KellyImageIndex = 0) then  KellyImageFileName:=OriginDirectory + 'Resources/kellyup-0.png'
  else if (KellyImageIndex > 0) and (KellyImageIndex <= 2) then  KellyImageFileName:=OriginDirectory + 'Resources/kellyup-2.png'
  else if (KellyImageIndex > 2) and (KellyImageIndex <= 4) then  KellyImageFileName:=OriginDirectory + 'Resources/kellyup-4.png'
  else if (KellyImageIndex > 4) and (KellyImageIndex <= 6) then  KellyImageFileName:=OriginDirectory + 'Resources/kellyup-6.png'
  else if (KellyImageIndex > 6) and (KellyImageIndex <= 8) then  KellyImageFileName:=OriginDirectory + 'Resources/kellyup-8.png'
  else if (KellyImageIndex > 8) and (KellyImageIndex <= 10) then  KellyImageFileName:=OriginDirectory + 'Resources/kellyup-8.png'
  else if (KellyImageIndex > 10) and (KellyImageIndex <= 20) then  KellyImageFileName:=OriginDirectory + 'Resources/kellyup-18.png'
  else if (KellyImageIndex > 20) and (KellyImageIndex <= 30) then  KellyImageFileName:=OriginDirectory + 'Resources/kellyup-30.png'
  else if (KellyImageIndex > 30) and (KellyImageIndex <= 40) then  KellyImageFileName:=OriginDirectory + 'Resources/kellyup-30.png'
  else if (KellyImageIndex > 40) and (KellyImageIndex <= 50) then  KellyImageFileName:=OriginDirectory + 'Resources/kellyup-42.png'
  else if (KellyImageIndex > 50) and (KellyImageIndex <= 60) then  KellyImageFileName:=OriginDirectory + 'Resources/kellyup-54.png'
  else if (KellyImageIndex > 60) and (KellyImageIndex <= 70) then  KellyImageFileName:=OriginDirectory + 'Resources/kellyup-66.png'
  else if (KellyImageIndex > 70) and (KellyImageIndex <= 80) then  KellyImageFileName:=OriginDirectory + 'Resources/kellyup-80.png';

  DrillSim.KellyImage.Picture.LoadFromFile(KellyImageFileName);

  if Data.KellyHeight = 33 then            { Set at top }
  Begin
    if Data.RPM > Zero then Data.RPM:=Zero;

    BushingImageFileName:=OriginDirectory + 'Resources/kellybushingup.png';
    DrillSim.BushingImage.Picture.LoadFromFile(BushingImageFileName);

  End else
  if (LastKellyHeight = 33) and (LastKellyHeight <> Data.KellyHeight)
  or (Data.RPM = 0) then { check if its just come off slips... }
  Begin
    BushingImageFileName:=OriginDirectory + 'Resources/kellybushingdown-1.png';
    DrillSim.BushingImage.Picture.LoadFromFile(BushingImageFileName);
  end;

  //StringToMemo('Image: ' + KellyImageFileName);
  //StringToMemo('Image: ' + BushingImageFileName);

  LastKellyHeight:=Data.KellyHeight;                 { set last kelly height for next refresh }
End; { procedure DrawKelly }


Procedure SetKelly; { move kelly to drilling position ie. after loading a file }
Var q, r : real;    { this procedure simply ramps the kelly height down until its = Data.KellyHeight }
Begin
  With Data do
  Begin
    if KellyHeight<33 then              { if off-slips move it to last position  }
    Begin
      q:=KellyHeight;
      KellyHeight:=33;
      While KellyHeight > q do          { ...move kelly down to correct position }
      Begin
        if (KellyHeight-q) > 0.05 then r:=0.05 else r:=0.0005; { 1/50000' }
        KellyHeight:=KellyHeight-r;
        DrawKelly;                { go away and draw it }
      End;
    End else DrawKelly;           { draw it in case KelHt=33               }
    LastKellyHeight:=KellyHeight;
    Str(Data.KellyHeight / UoMConverter[1]:5:2,TempString);
  End;
End;

{ ------------------ Rotate Kelly Bushing ----------------- }

Procedure TurnBushing;
Var x : real;
Begin
  With Data do
  Begin
    GetCurrentTime (t);
    RPMt1:=RPMt2;
    RPMt2:=t.Hundredths;
    if RPMt2 < RPMt1 then RPMt1:=RPMt1-100;
    x:=((RPMt2 - RPMt1) / 100);
    CurrentTurn:=CurrentTurn + x;
    if CurrentTurn > (1 / RPM) then
    Begin
      CurrentTurn:=Zero;
      CurrentBushing:=CurrentBushing + 1;
      if CurrentBushing > 9 then CurrentBushing:=1;
      BushingImageFileName:=OriginDirectory + 'Resources/kellybushingdown-'+ IntToStr(CurrentBushing) + '.png';
      DrillSim.BushingImage.Picture.LoadFromFile(BushingImageFileName);
    End;
  End;
End;

{ -------------------- Screen  Updates ------------------- }

Procedure MudUpdate;
Begin
  //StringToMemo('SimulateUpdate:FlowUpdate called');
  With Data do
  Begin
    DrillSim.MudWeightInValue.Caption:=FloatToStrF(Round2(MwIn/UoMConverter[2],2), ffNumber, 8, 3); { API -> displayed }
    LastMwIn:=MwIn;

    DrillSim.MudWeightOutValue.Caption:=FloatToStrF(Round2(MwOut/UoMConverter[2],2), ffNumber, 8, 3); { API -> displayed }
    LastMwOut:=MwOut;

    DrillSim.PumpStrokesValue.Caption:=FloatToStr(Round2(StrokeCounter,0));
    LastStrokeCounter:=StrokeCounter;

    DrillSim.ECDValue.Caption:=FloatToStrF(Round2(ECD/UoMConverter[2],2), ffNumber, 8, 3); { API -> displayed }
    LastECD:=ECD;
  end;
End;

Procedure FlowUpdate;
Begin
  //StringToMemo('SimulateUpdate:FlowUpdate called');
  With Data do
  Begin
    DrillSim.FlowInValue.Caption:=FloatToStrF(Round2(FlowIn/UoMConverter[6],2), ffNumber, 8, 2); { API gpm -> displayed }
    LastFlowIn:=FlowIn;

    DrillSim.FlowOutValue .Caption:=FloatToStrF(Round2(FlowIn/UoMConverter[6],2), ffNumber, 8, 2); { API gpm -> displayed }
    LastFlowOut:=FlowOut;

    DrillSim.ReturnPitValue.Caption:=FloatToStrF(Round2(RetPitVol/UoMConverter[4],2), ffNumber, 8, 2); { API bbl -> displayed }
    LastRetPitVol:=RetPitVol;

    PitGain:=FlowOut - FlowIn;              { Check Differential Flow }
    DrillSim.DiffFlowValue.Caption:=FloatToStrF(Round2(PitGain/UoMConverter[4],2), ffNumber, 8, 2); { API gpm -> displayed }
    LastPitGain:=PitGain;

    DrillSim.StandPipePressureValue.Caption:=FloatToStrF(Round2(PlCirc/UoMConverter[3],2), ffNumber, 8, 2); { API -> displayed }
    DrillSim.StandPipePressureValue.Caption:=FloatToStrF(Round2(PlCirc/UoMConverter[3],2), ffNumber, 8, 2); { API -> displayed }
    LastPlCirc:=PlCirc;

  End;
End;

Procedure DepthUpdate;
Begin
  //StringToMemo('SimulateUpdate:DepthUpdate called');
  With Data do
  Begin
    DrillSim.BitDepthValue.Caption:=FloatToStrF(Round2(Data.BitTD/UoMConverter[1],2), ffNumber, 8, 2); { API -> displayed }
    LastBitTD:=BitTD;

    DrillSim.TotalDepthValue.Caption:=FloatToStrF(Round2(TD/UoMConverter[1],2), ffNumber, 8, 2); { API -> displayed }
    LastTD:=TD;
  End;
End;


Procedure DrillUpdate;
Begin
  //StringToMemo('SimulateUpdate:DrillUpdate called');
  With Data do
  Begin

    DrillSim.WOBValue.Caption:=FloatToStrF(Round2(WOB/UoMConverter[7],2), ffNumber, 8, 2); { API -> displayed }
    LastWOB:=WOB;

    DrillSim.RPMValue.Caption:=FloatToStr(RPM);
    LastRPM:=RPM;

    DrillSim.ROPValue.Caption:=FloatToStrF(Round2(ROP/UoMConverter[1],2), ffNumber, 8, 2); { API -> displayed }
    LastROP:=ROP;
  End;
End;

Procedure BOPUpdate;
Begin
  //StringToMemo('SimulateUpdate:ShutInUpdate called');
  With Data do
  Begin
    if Data.ShutIn then
    Begin
      DrillSim.HydrilValue.Caption:='Closed';
      DrillSim.PipeRAMsValue.Caption:='Closed';
      DrillSim.BlindRAMsValue.Caption:='Closed';
    End else
    Begin
      DrillSim.HydrilValue.Caption:='Open';
      DrillSim.PipeRAMsValue.Caption:='Open';
      DrillSim.BlindRAMsValue.Caption:='Open';
    End;

    DrillSim.AnnularPressureValue.Caption:=FloatToStrF(Round2(BHPAnn/UoMConverter[3],2), ffNumber, 8, 2); { API -> displayed }
    LastBHPAnn:=BHPAnn;

    DrillSim.CasingPressureValue.Caption:=FloatToStrF(Round2(CasingPressure/UoMConverter[3],2), ffNumber, 8, 2); { API -> displayed }
    LastCasingPressure:=CasingPressure;

    DrillSim.ChokeValue.Caption:=FloatToStrF(Round2(Choke,2), ffNumber, 8, 2); {%}
  End;
End;

Procedure DataPanelUpdate;
Begin
  With Data do
  Begin
    DrillSim.AnnVol.Caption:=FloatToStrF(Round2(Data.AnnVol/UoMConverter[4],2), ffNumber, 8, 2); { bbl/m3 -> displayed }
    DrillSim.WellVol.Caption:=FloatToStrF(Round2(Data.WellVol/UoMConverter[4],2), ffNumber, 8, 2); { bbl/m3 -> displayed }
    DrillSim.HoleVol.Caption:=FloatToStrF(Round2(Data.HoleVol/UoMConverter[4],2), ffNumber, 8, 2); { bbl/m3 -> displayed }
    DrillSim.MudVol.Caption:=FloatToStrF(Round2(Data.MudVol/UoMConverter[4],2), ffNumber, 8, 2); { bbl/m3 -> displayed }
    DrillSim.MudVol.Caption:=FloatToStrF(Round2(Data.MudVol/UoMConverter[4],2), ffNumber, 8, 2); { bbl/m3 -> displayed }

    DrillSim.ExcessMud.Caption:=FloatToStrF(Round2(Data.ExcessMud/UoMConverter[4],2), ffNumber, 8, 2); { bbl/m3 -> displayed }

    DrillSim.PipeCapacity.Caption:=FloatToStrF(Round2(Data.PipeCap/UoMConverter[4],2), ffNumber, 8, 2); { bbl/m3 -> displayed }
    DrillSim.PipeDisplacement.Caption:=FloatToStrF(Round2(Data.PipeDis/UoMConverter[4],2), ffNumber, 8, 2); { bbl/m3 -> displayed }

    DrillSim.LagDownTime.Caption:=FloatToStrF(Round2(Data.LagDT,2), ffNumber, 8, 2); { time }
    DrillSim.LagDownStrokes.Caption:=FloatToStrF(Round2(Data.LagDS,2), ffNumber, 8, 2); { num }

    DrillSim.LagUpTime.Caption:=FloatToStrF(Round2(Data.LagUT,2), ffNumber, 8, 2); { time }
    DrillSim.LagUpStrokes.Caption:=FloatToStrF(Round2(Data.LagUS,2), ffNumber, 8, 2); { num }

    DrillSim.TotalCircStrks.Caption:=FloatToStrF(Round2(Data.TotCircStrks,2), ffNumber, 8, 2); { num }
    DrillSim.TotalStrokes.Caption:=FloatToStrF(Round2(Data.TotStrks,2), ffNumber, 8, 2); { num }


    DrillSim.PipeMW.Caption:=FloatToStrF(Round2(Data.PipeMW/UoMConverter[2],2), ffNumber, 4, 2); { ppg API -> displayed }
    DrillSim.AnnMW.Caption:=FloatToStrF(Round2(Data.AnnMW/UoMConverter[2],2), ffNumber, 4, 2); { ppg API -> displayed }

    DrillSim.PipePV.Caption:=FloatToStrF(Round2(Data.PipePV,2), ffNumber, 4, 2); { PV }
    DrillSim.AnnPV.Caption:=FloatToStrF(Round2(Data.AnnPV,2), ffNumber, 4, 2); { PV }

    DrillSim.PipeYP.Caption:=FloatToStrF(Round2(Data.PipeYP,2), ffNumber, 4, 2); { YP }
    DrillSim.AnnYP.Caption:=FloatToStrF(Round2(Data.AnnYP,2), ffNumber, 4, 2); { YP }

    DrillSim.PLSurf.Caption:=FloatToStrF(Round2(PLSurf/UoMConverter[3],2), ffNumber, 8, 2); { API -> displayed }
    DrillSim.PLPipe.Caption:=FloatToStrF(Round2(PLPipe/UoMConverter[3],2), ffNumber, 8, 2); { API -> displayed }
    DrillSim.PLBit.Caption:=FloatToStrF(Round2(PLBit/UoMConverter[3],2), ffNumber, 8, 2); { API -> displayed }
    DrillSim.PLAnn.Caption:=FloatToStrF(Round2(PLAnn/UoMConverter[3],2), ffNumber, 8, 2); { API -> displayed }
    DrillSim.PLChoke.Caption:=FloatToStrF(Round2(PLChoke/UoMConverter[3],2), ffNumber, 8, 2); { API -> displayed }
    DrillSim.PLCirc.Caption:=FloatToStrF(Round2(PLCirc/UoMConverter[3],2), ffNumber, 8, 2); { API -> displayed }

    DrillSim.FormPressGrad.Caption:=FloatToStrF(Round2(FormationPressureGradient/UoMConverter[3],2), ffNumber, 8, 2); { API -> displayed } ;
    DrillSim.MACP.Caption:=FloatToStrF(Round2(MACP/UoMConverter[3],2), ffNumber, 8, 2); { API -> displayed }

    DrillSim.JetVel.Caption:=FloatToStrF(Round2(JetVel,2), ffNumber, 8, 2); { units }
    DrillSim.ImpactForce.Caption:=FloatToStrF(Round2(ImpForce,2), ffNumber, 8, 2); { units }
    DrillSim.BitHP.Caption:=FloatToStrF(Round2(BitHP,2), ffNumber, 8, 2); { units }
    DrillSim.BitEff.Caption:=FloatToStrF(Round2(Eff,2), ffNumber, 8, 2); { units }
    DrillSim.TotalHP.Caption:=FloatToStrF(Round2(TotHP,2), ffNumber, 8, 2); { units }

    DrillSim.AnnularBHP.Caption:=FloatToStrF(Round2(BHPAnn/UoMConverter[3],2), ffNumber, 8, 2); { API -> displayed }
    DrillSim.TotalHP.Caption:=FloatToStrF(Round2(TotHP,2), ffNumber, 8, 2); { units }
    DrillSim.AnnularHHD.Caption:=FloatToStrF(Round2(AnnHHD/UoMConverter[3],2), ffNumber, 8, 2); { API -> displayed }
    DrillSim.PipeHHD.Caption:=FloatToStrF(Round2(PipeHHD/UoMConverter[3],2), ffNumber, 8, 2);   { API -> displayed }
    DrillSim.AnnulusHHD.Caption:=FloatToStrF(Round2(AnnHHD/UoMConverter[3],2), ffNumber, 8, 2); { API -> displayed }

    DrillSim.AnnularUnderbalance.Caption:=FloatToStrF(Round2(AnnUnderbalance/UoMConverter[3],2), ffNumber, 8, 2); { API -> displayed } ;

  End;
End;

Procedure TimeUpdate;
Begin
  GetCurrentTime (t);
  if t.Seconds <> LastSeconds then
  Begin
    TempString:=''; InString:='';
    Str(t.Hours:2,InString);     TempString:=InString  + ':';
    Str(t.Minutes:2,InString);   TempString:=TempString + InString + ':';
    Str(t.Seconds:2,InString);   TempString:=TempString + InString;
    DrillSim.TimeValue.Caption:=TempString;
    LastSeconds:=t.Seconds;
  End;
End;


Procedure StatusUpdate;
Var i          : integer;
Label Loop;
Begin
  With Data do
  Begin
    if KellyHeight = 33 then                { calculate based on kelly height   }
    Begin                                   { if at top then on slips           }
      if ShutIn then i:=6 else i:=1;        { and if shut in too then...shut in }
    End else
    if (TD >= LastKD + 27) then i:=2         { else if at KD depth...     }
    else                                     { ...then kelly down         }
    if Drilling                              { else if we're DRILLING...  }
      then i:=3                              { ...then we're drilling     }
      else i:=4;                             { else we're off bottom      }



Loop : if i<>Status then                   { i=current status, so update    }
       Begin                               { Status if different            }
         Case i of
           1 : TempString:=' On Slips ';   { this table maintains a pointer }
           2 : TempString:='Kelly Down';   { to the current operating       }
           3 : TempString:=' Drilling ';   { situation, but only updated    }
           4 : TempString:='Off Bottom';   { every 10 loops of Proc. ScreenService }
           5 : TempString:='On Bottom ';
           6 : TempString:=' Shut-In  ';
         End;
         DrillSim.DrillingStatusValue.Caption:=TempString; { display status on screen       }
         Status:=i;
       End;
  End;
End;


Procedure ScreenService;
Begin
  StatusCounter:=StatusCounter + 1;
  if StatusCounter>10 then               { check every 10 loops }
  Begin
    StatusUpdate;
    StatusCounter:=Zero;
  End;

  if Data.RPM > Zero then TurnBushing;

  TimeUpdate;
  MudUpdate;
  FlowUpdate;

  if not Data.ShutIn then
  Begin
    DepthUpdate;
    DrillUpdate;
  End;
  BOPUpdate;

  DataPanelUpdate;
End;

Begin
End.
