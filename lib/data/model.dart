class dataset {
  dataset({
    this.id = 0,
    this.f01 = '',
    this.f02 = '',
    this.f03 = '',
    this.f04 = '',
    this.f05 = '',
    this.f06 = '',
    this.f07 = '',
    this.f08 = '',
    this.f09 = '',
    this.f10 = '',
    this.f11 = '',
    this.f12 = '',
    this.f13 = '',
    this.f14 = '',
    this.f15 = '',
    this.f16 = '',
    this.f17 = '',
    this.f18 = '',
    this.f19 = '',
    this.f20 = '',
    this.f21 = '',
    this.f22 = '',
    this.f23 = '',
    this.f24 = '',
    this.f25 = '',
    this.f26 = '',
    this.f27 = '',
    this.f28 = '',
    this.f29 = '',
    this.f30 = '',
    this.f31 = '',
    this.f32 = '',
    this.f33 = '',
    this.f34 = '',
    this.f35 = '',
    this.f36 = '',
    this.f37 = '',
    this.f38 = '',
    this.f39 = '',
    this.f40 = '',
    this.f41 = '',
    this.f42 = '',
    this.f43 = '',
    this.f44 = '',
    this.f45 = '',
    this.f46 = '',
    this.f47 = '',
    this.f48 = '',
    this.f49 = '',
    this.f50 = '',
    this.f51 = '',
    this.f52 = '',
    this.f53 = '',
    this.f54 = '',
    this.f55 = '',
    this.f56 = '',
    this.f57 = '',
    this.f58 = '',
    this.f59 = '',
    this.f60 = '',
    this.f61 = '',
    this.f62 = '',
    this.f63 = '',
    this.f64 = '',
    this.f65 = '',
    this.f66 = '',
    this.f67 = '',
    this.f68 = '',
    this.f69 = '',
    this.f70 = '',
    this.f71 = '',
    this.f72 = '',
    this.f73 = '',
    this.f74 = '',
    this.f75 = '',
    this.f76 = '',
    this.f77 = '',
    this.f78 = '',
    this.f79 = '',
    this.f80 = '',
  });
  int id;
  String f01;
  String f02;
  String f03;
  String f04;
  String f05;
  String f06;
  String f07;
  String f08;
  String f09;
  String f10;

  String f11;
  String f12;
  String f13;
  String f14;
  String f15;
  String f16;
  String f17;
  String f18;
  String f19;
  String f20;

  String f21;
  String f22;
  String f23;
  String f24;
  String f25;
  String f26;
  String f27;
  String f28;
  String f29;
  String f30;

  String f31;
  String f32;
  String f33;
  String f34;
  String f35;
  String f36;
  String f37;
  String f38;
  String f39;
  String f40;

  String f41;
  String f42;
  String f43;
  String f44;
  String f45;
  String f46;
  String f47;
  String f48;
  String f49;
  String f50;

  String f51;
  String f52;
  String f53;
  String f54;
  String f55;
  String f56;
  String f57;
  String f58;
  String f59;
  String f60;

  String f61;
  String f62;
  String f63;
  String f64;
  String f65;
  String f66;
  String f67;
  String f68;
  String f69;
  String f70;

  String f71;
  String f72;
  String f73;
  String f74;
  String f75;
  String f76;
  String f77;
  String f78;
  String f79;
  String f80;

  bool selected = false;
}

List<dataset> ZeroDataset = [];

class actDATAmodel {
  actDATAmodel(
      {this.ConditionNo = '', //D900
      this.G = '', //D1902
      this.NG = '', //D1904
      this.s1stoutputVOLTset = '', //D710
      this.s1stoutputVOLTMEASCURRENT = '', //D2000
      this.s1stoutputVOLTMEASMIN = '', //D2101
      this.s1stoutputVOLTMEASMAX = '', //D2100
      this.s1stoutputPOWERMEASCURRENT = '', //D2001
      this.s1stoutputPOWERMEASMIN = '', //D2103
      this.s1stoutputPOWERMEASMAX = '', //D2102
      this.s1stHEATINGTEMPMEASCURRENT = '', //D2017
      this.s1stHEATINGTEMPMEASMIN = '', //D2118
      this.s1stHEATINGTEMPMEASMAX = '', //D2117
      this.s1stHEATINGSETTIME = '0', //D713
      this.s1stHEATINGMEASTIME = '0', //D2006

      this.s2stoutputVOLTset = '', //D711
      this.s2stoutputVOLTMEASCURRENT = '', //D2002
      this.s2stoutputVOLTMEASMIN = '', //D2105
      this.s2stoutputVOLTMEASMAX = '', //D2104
      this.s2stoutputPOWERMEASCURRENT = '', //D2003
      this.s2stoutputPOWERMEASMIN = '', //D2107
      this.s2stoutputPOWERMEASMAX = '', //D2106
      this.s2stHEATINGTEMPMEASCURRENT = '', //D2018
      this.s2stHEATINGTEMPMEASMIN = '', //D2120
      this.s2stHEATINGTEMPMEASMAX = '', //D2119
      this.s2ndHEATINGWAITSETTIME = '0', //D714
      this.s2ndHEATINGWAITMEASTIME = '0', //D2007
      this.s2stHEATINGSETTIME = '0', //D715
      this.s2stHEATINGMEASTIME = '0', //D2008

      this.s3stoutputVOLTset = '', //D712
      this.s3stoutputVOLTMEASCURRENT = '', //D2004
      this.s3stoutputVOLTMEASMIN = '', //D2109
      this.s3stoutputVOLTMEASMAX = '', //D2108
      this.s3stoutputPOWERMEASCURRENT = '', //D2005
      this.s3stoutputPOWERMEASMIN = '', //D2111
      this.s3stoutputPOWERMEASMAX = '', //D2110
      this.s3stHEATINGTEMPMEASCURRENT = '', //D2019
      this.s3stHEATINGTEMPMEASMIN = '', //D2122
      this.s3stHEATINGTEMPMEASMAX = '', //D2121
      this.s3ndHEATINGWAITSETTIME = '0', //D716
      this.s3ndHEATINGWAITMEASTIME = '0', //D2009
      this.s3stHEATINGSETTIME = '0', //D717
      this.s3stHEATINGMEASTIME = '0', //D2010

      this.s4stoutputVOLTset = '', //D721
      this.s4stoutputVOLTMEASCURRENT = '', //D2014
      this.s4stoutputVOLTMEASMIN = '', //D2113
      this.s4stoutputVOLTMEASMAX = '', //D2112
      this.s4stoutputPOWERMEASCURRENT = '', //D2015
      this.s4stoutputPOWERMEASMIN = '', //D2115
      this.s4stoutputPOWERMEASMAX = '', //D2114
      this.s4stHEATINGTEMPMEASCURRENT = '', //D2016
      this.s4stHEATINGTEMPMEASMIN = '', //D2124
      this.s4stHEATINGTEMPMEASMAX = '', //D2123
      this.s4ndHEATINGWAITSETTIME = '0', //D719
      this.s4ndHEATINGWAITMEASTIME = '0', //D2012
      this.s4stHEATINGSETTIME = '0', //D720
      this.s4stHEATINGMEASTIME = '0', //D2013

      this.AIRCOOLINGTIMESET = '0', //D718
      this.AIRCOOLINGTIMEMEAS = '0', //D2011
      this.HEADCENTERREV = '', //D2535
      this.TAILCENTERREV = '', //D2635
      this.CYCLETIME = '0', //D2230
      this.BARCODE = ''});

  String ConditionNo; //D900
  String G; //D1902
  String NG; //D1904
  String s1stoutputVOLTset; //D710
  String s1stoutputVOLTMEASCURRENT; //
  String s1stoutputVOLTMEASMIN; //
  String s1stoutputVOLTMEASMAX; //
  String s1stoutputPOWERMEASCURRENT; //
  String s1stoutputPOWERMEASMIN; //
  String s1stoutputPOWERMEASMAX; //
  String s1stHEATINGTEMPMEASCURRENT; //
  String s1stHEATINGTEMPMEASMIN; //
  String s1stHEATINGTEMPMEASMAX; //
  String s1stHEATINGSETTIME; //
  String s1stHEATINGMEASTIME; //

  String s2stoutputVOLTset; //D
  String s2stoutputVOLTMEASCURRENT; //
  String s2stoutputVOLTMEASMIN; //
  String s2stoutputVOLTMEASMAX; //
  String s2stoutputPOWERMEASCURRENT; //
  String s2stoutputPOWERMEASMIN; //
  String s2stoutputPOWERMEASMAX; //
  String s2stHEATINGTEMPMEASCURRENT; //
  String s2stHEATINGTEMPMEASMIN; //
  String s2stHEATINGTEMPMEASMAX; //
  String s2ndHEATINGWAITSETTIME;
  String s2ndHEATINGWAITMEASTIME;
  String s2stHEATINGSETTIME; //
  String s2stHEATINGMEASTIME; //

  String s3stoutputVOLTset; //D
  String s3stoutputVOLTMEASCURRENT; //
  String s3stoutputVOLTMEASMIN; //
  String s3stoutputVOLTMEASMAX; //
  String s3stoutputPOWERMEASCURRENT; //
  String s3stoutputPOWERMEASMIN; //
  String s3stoutputPOWERMEASMAX; //
  String s3stHEATINGTEMPMEASCURRENT; //
  String s3stHEATINGTEMPMEASMIN; //
  String s3stHEATINGTEMPMEASMAX; //
  String s3ndHEATINGWAITSETTIME;
  String s3ndHEATINGWAITMEASTIME;
  String s3stHEATINGSETTIME; //
  String s3stHEATINGMEASTIME; //

  String s4stoutputVOLTset; //D
  String s4stoutputVOLTMEASCURRENT; //
  String s4stoutputVOLTMEASMIN; //
  String s4stoutputVOLTMEASMAX; //
  String s4stoutputPOWERMEASCURRENT; //
  String s4stoutputPOWERMEASMIN; //
  String s4stoutputPOWERMEASMAX; //
  String s4stHEATINGTEMPMEASCURRENT; //
  String s4stHEATINGTEMPMEASMIN; //
  String s4stHEATINGTEMPMEASMAX; //
  String s4ndHEATINGWAITSETTIME;
  String s4ndHEATINGWAITMEASTIME;
  String s4stHEATINGSETTIME; //
  String s4stHEATINGMEASTIME; //

  String AIRCOOLINGTIMESET;
  String AIRCOOLINGTIMEMEAS;
  String HEADCENTERREV;
  String TAILCENTERREV;
  String CYCLETIME;
  String BARCODE;
}

class YMDDATAmodel {
  YMDDATAmodel({
    this.NO = '',
    this.Item = '',
    this.PartNO = '',
    this.PartName = '',
    this.QTY = '',
    this.LoadingTime01 = '',
    this.Degressing02Temp = '',
    this.Degressing02Time = '',
    this.Degressing03Temp = '',
    this.Degressing03Time = '',
    this.Shower04Temp = '',
    this.Shower04Time = '',
    this.Degressing05Temp = '',
    this.Degressing05Time = '',
    this.Degressing06Temp = '',
    this.Degressing06Time = '',
    this.Degressing07Temp = '',
    this.Degressing07Time = '',
    this.WaterRinse08Temp = '',
    this.WaterRinse08Time = '',
    this.WaterRinse09Temp = '',
    this.WaterRinse09Time = '',
    this.AcidWashing10Temp = '',
    this.AcidWashing10Time = '',
    this.WaterRinse11Temp = '',
    this.WaterRinse11Time = '',
    this.WaterRinse12Temp = '',
    this.WaterRinse12Time = '',
    this.ElectrolyticAnodic13Volt = '',
    this.ElectrolyticAnodic13Amp = '',
    this.ElectrolyticAnodic13Temp = '',
    this.ElectrolyticAnodic13Rpm = '',
    this.ElectrolyticAnodic13Time = '',
    this.ElectrolyticCathod14Volt = '',
    this.ElectrolyticCathod14Amp = '',
    this.ElectrolyticCathod14Temp = '',
    this.ElectrolyticCathod14Rpm = '',
    this.ElectrolyticCathod14Time = '',
    this.WaterRinse15Temp = '',
    this.WaterRinse15Time = '',
    this.WaterRinse16Temp = '',
    this.WaterRinse16Time = '',
    this.Activetion17Temp = '',
    this.Activetion17Time = '',
    this.WaterRinse18Temp = '',
    this.WaterRinse18Time = '',
    this.CuCyanide19Volt = '',
    this.CuCyanide19Amp = '',
    this.CuCyanide19Temp = '',
    this.CuCyanide19Rpm = '',
    this.CuCyanide19Time = '',
    this.CuCyanide20Volt = '',
    this.CuCyanide20Amp = '',
    this.CuCyanide20Temp = '',
    this.CuCyanide20Rpm = '',
    this.CuCyanide20Time = '',
    this.WaterRinse21Temp = '',
    this.WaterRinse21Time = '',
    this.WaterRinse22Temp = '',
    this.WaterRinse22Time = '',
    this.ActivetionH2S042223Temp = '',
    this.ActivetionH2S04223Time = '',
    this.CoperSulfate24Volt = '',
    this.CoperSulfate24Amp = '',
    this.CoperSulfate24Temp = '',
    this.CoperSulfate24Rpm = '',
    this.CoperSulfate024Time = '',
    this.WaterRinse25Temp = '',
    this.WaterRinse25Time = '',
    this.SemiBrightNickel26Volt = '',
    this.SemiBrightNickel26Amp = '',
    this.SemiBrightNickel26Temp = '',
    this.SemiBrightNickel26Rpm = '',
    this.SemiBrightNickel26Time = '',
    this.SemiBrightNickel27Volt = '',
    this.SemiBrightNickel27Amp = '',
    this.SemiBrightNickel27Temp = '',
    this.SemiBrightNickel27Rpm = '',
    this.SemiBrightNickel27Time = '',
    this.SemiBrightNickel28Volt = '',
    this.SemiBrightNickel28Amp = '',
    this.SemiBrightNickel28Temp = '',
    this.SemiBrightNickel28Rpm = '',
    this.SemiBrightNickel28Time = '',
    this.WaterRinse29Temp = '',
    this.WaterRinse29Time = '',
    this.DullSnPlating30Volt = '',
    this.DullSnPlating30Amp = '',
    this.DullSnPlating30Temp = '',
    this.DullSnPlating30Rpm = '',
    this.DullSnPlating30Time = '',
    this.DullSnPlating31Volt = '',
    this.DullSnPlating31Amp = '',
    this.DullSnPlating31Temp = '',
    this.DullSnPlating31Rpm = '',
    this.DullSnPlating31Time = '',
    this.DullSnPlating32Volt = '',
    this.DullSnPlating32Amp = '',
    this.DullSnPlating32Temp = '',
    this.DullSnPlating32Rpm = '',
    this.DullSnPlating32Time = '',
    this.DullSnPlating33Volt = '',
    this.DullSnPlating33Amp = '',
    this.DullSnPlating33Temp = '',
    this.DullSnPlating33Rpm = '',
    this.DullSnPlating33Time = '',
    this.WaterRinse34Temp = '',
    this.WaterRinse34Time = '',
    this.BrightSnPlating35Volt = '',
    this.BrightSnPlating35Amp = '',
    this.BrightSnPlating35Temp = '',
    this.BrightSnPlating35Rpm = '',
    this.BrightSnPlating35Time = '',
    this.BrightSnPlating36Volt = '',
    this.BrightSnPlating36Amp = '',
    this.BrightSnPlating36Temp = '',
    this.BrightSnPlating36Rpm = '',
    this.BrightSnPlating36Time = '',
    this.WaterRinse37Temp = '',
    this.WaterRinse37Time = '',
    this.Postrement38Temp = '',
    this.Postrement38Time = '',
    this.Postrement39Temp = '',
    this.Postrement39Time = '',
    this.HotWaterRinse40Temp = '',
    this.HotWaterRinse40Time = '',
    this.HotWaterRinse41Temp = '',
    this.HotWaterRinse41Time = '',
  });
  String NO;
  String Item;
  String PartNO;
  String PartName;
  String QTY;
  String LoadingTime01;
  String Degressing02Temp;
  String Degressing02Time;
  String Degressing03Temp;
  String Degressing03Time;
  String Shower04Temp;
  String Shower04Time;
  String Degressing05Temp;
  String Degressing05Time;
  String Degressing06Temp;
  String Degressing06Time;
  String Degressing07Temp;
  String Degressing07Time;
  String WaterRinse08Temp;
  String WaterRinse08Time;
  String WaterRinse09Temp;
  String WaterRinse09Time;
  String AcidWashing10Temp;
  String AcidWashing10Time;
  String WaterRinse11Temp;
  String WaterRinse11Time;
  String WaterRinse12Temp;
  String WaterRinse12Time;
  String ElectrolyticAnodic13Volt;
  String ElectrolyticAnodic13Amp;
  String ElectrolyticAnodic13Temp;
  String ElectrolyticAnodic13Rpm;
  String ElectrolyticAnodic13Time;
  String ElectrolyticCathod14Volt;
  String ElectrolyticCathod14Amp;
  String ElectrolyticCathod14Temp;
  String ElectrolyticCathod14Rpm;
  String ElectrolyticCathod14Time;
  String WaterRinse15Temp;
  String WaterRinse15Time;
  String WaterRinse16Temp;
  String WaterRinse16Time;
  String Activetion17Temp;
  String Activetion17Time;
  String WaterRinse18Temp;
  String WaterRinse18Time;
  String CuCyanide19Volt;
  String CuCyanide19Amp;
  String CuCyanide19Temp;
  String CuCyanide19Rpm;
  String CuCyanide19Time;
  String CuCyanide20Volt;
  String CuCyanide20Amp;
  String CuCyanide20Temp;
  String CuCyanide20Rpm;
  String CuCyanide20Time;
  String WaterRinse21Temp;
  String WaterRinse21Time;
  String WaterRinse22Temp;
  String WaterRinse22Time;
  String ActivetionH2S042223Temp;
  String ActivetionH2S04223Time;
  String CoperSulfate24Volt;
  String CoperSulfate24Amp;
  String CoperSulfate24Temp;
  String CoperSulfate24Rpm;
  String CoperSulfate024Time;

  String WaterRinse25Temp;
  String WaterRinse25Time;

  String SemiBrightNickel26Volt;
  String SemiBrightNickel26Amp;
  String SemiBrightNickel26Temp;
  String SemiBrightNickel26Rpm;
  String SemiBrightNickel26Time;

  String SemiBrightNickel27Volt;
  String SemiBrightNickel27Amp;
  String SemiBrightNickel27Temp;
  String SemiBrightNickel27Rpm;
  String SemiBrightNickel27Time;

  String SemiBrightNickel28Volt;
  String SemiBrightNickel28Amp;
  String SemiBrightNickel28Temp;
  String SemiBrightNickel28Rpm;
  String SemiBrightNickel28Time;

  String WaterRinse29Temp;
  String WaterRinse29Time;

  String DullSnPlating30Volt;
  String DullSnPlating30Amp;
  String DullSnPlating30Temp;
  String DullSnPlating30Rpm;
  String DullSnPlating30Time;

  String DullSnPlating31Volt;
  String DullSnPlating31Amp;
  String DullSnPlating31Temp;
  String DullSnPlating31Rpm;
  String DullSnPlating31Time;

  String DullSnPlating32Volt;
  String DullSnPlating32Amp;
  String DullSnPlating32Temp;
  String DullSnPlating32Rpm;
  String DullSnPlating32Time;

  String DullSnPlating33Volt;
  String DullSnPlating33Amp;
  String DullSnPlating33Temp;
  String DullSnPlating33Rpm;
  String DullSnPlating33Time;

  String WaterRinse34Temp;
  String WaterRinse34Time;

  String BrightSnPlating35Volt;
  String BrightSnPlating35Amp;
  String BrightSnPlating35Temp;
  String BrightSnPlating35Rpm;
  String BrightSnPlating35Time;

  String BrightSnPlating36Volt;
  String BrightSnPlating36Amp;
  String BrightSnPlating36Temp;
  String BrightSnPlating36Rpm;
  String BrightSnPlating36Time;

  String WaterRinse37Temp;
  String WaterRinse37Time;

  String Postrement38Temp;
  String Postrement38Time;

  String Postrement39Temp;
  String Postrement39Time;

  String HotWaterRinse40Temp;
  String HotWaterRinse40Time;

  String HotWaterRinse41Temp;
  String HotWaterRinse41Time;
}
