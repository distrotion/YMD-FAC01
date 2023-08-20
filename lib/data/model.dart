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
