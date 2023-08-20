import 'dart:async';

import 'package:flutter/material.dart';
import '../page/page0.dart';

String token = '';
Widget CuPage = const Page0();
int CuPageLV = 0;
int UserLV = 0;
int Pagememory = 0;

class PageLevel {
  static int page01 = 1;
  static int page02 = 1;
  static int page03 = 4;
  static int page04 = 1;
  static int page05 = 1;
  static int page06 = 1;
  static int page07 = 1;
  static int page08 = 1;
  static int page09 = 1;
  static int page10 = 1;
}

class actDATA {
  static String ConditionNo = ''; //D900
  static String G = ''; //D1902
  static String NG = ''; //D1904
  static String s1stoutputVOLTset = ''; //D710
  static String s1stoutputVOLTMEASCURRENT = ''; //
  static String s1stoutputVOLTMEASMIN = ''; //
  static String s1stoutputVOLTMEASMAX = ''; //
  static String s1stoutputPOWERMEASCURRENT = ''; //
  static String s1stoutputPOWERMEASMIN = ''; //
  static String s1stoutputPOWERMEASMAX = ''; //
  static String s1stHEATINGTEMPMEASCURRENT = ''; //
  static String s1stHEATINGTEMPMEASMIN = ''; //
  static String s1stHEATINGTEMPMEASMAX = ''; //
  static String s1stHEATINGSETTIME = ''; //
  static String s1stHEATINGMEASTIME = ''; //

  static String s2stoutputVOLTset = ''; //D
  static String s2stoutputVOLTMEASCURRENT = ''; //
  static String s2stoutputVOLTMEASMIN = ''; //
  static String s2stoutputVOLTMEASMAX = ''; //
  static String s2stoutputPOWERMEASCURRENT = ''; //
  static String s2stoutputPOWERMEASMIN = ''; //
  static String s2stoutputPOWERMEASMAX = ''; //
  static String s2stHEATINGTEMPMEASCURRENT = ''; //
  static String s2stHEATINGTEMPMEASMIN = ''; //
  static String s2stHEATINGTEMPMEASMAX = ''; //
  static String s2stHEATINGSETTIME = ''; //
  static String s2stHEATINGMEASTIME = ''; //

  static String s3stoutputVOLTset = ''; //D
  static String s3stoutputVOLTMEASCURRENT = ''; //
  static String s3stoutputVOLTMEASMIN = ''; //
  static String s3stoutputVOLTMEASMAX = ''; //
  static String s3stoutputPOWERMEASCURRENT = ''; //
  static String s3stoutputPOWERMEASMIN = ''; //
  static String s3stoutputPOWERMEASMAX = ''; //
  static String s3stHEATINGTEMPMEASCURRENT = ''; //
  static String s3stHEATINGTEMPMEASMIN = ''; //
  static String s3stHEATINGTEMPMEASMAX = ''; //
  static String s3stHEATINGSETTIME = ''; //
  static String s3stHEATINGMEASTIME = ''; //

  static String s4stoutputVOLTset = ''; //D
  static String s4stoutputVOLTMEASCURRENT = ''; //
  static String s4stoutputVOLTMEASMIN = ''; //
  static String s4stoutputVOLTMEASMAX = ''; //
  static String s4stoutputPOWERMEASCURRENT = ''; //
  static String s4stoutputPOWERMEASMIN = ''; //
  static String s4stoutputPOWERMEASMAX = ''; //
  static String s4stHEATINGTEMPMEASCURRENT = ''; //
  static String s4stHEATINGTEMPMEASMIN = ''; //
  static String s4stHEATINGTEMPMEASMAX = ''; //
  static String s4stHEATINGSETTIME = ''; //
  static String s4stHEATINGMEASTIME = ''; //

  static String AIRCOOLINGTIMESET = '';
  static String AIRCOOLINGTIMEMEAS = '';
  static String HEADCENTERREV = '';
  static String TAILCENTERREV = '';
  static String CYCLETIME = '';
}

late Timer DHtimer;
late Timer JGC_DASHBOARDtimer;

String GserverIND = 'http://172.23.10.40:2500/';
String GserverNEW = 'http://172.23.10.40:14500/';
// String GserverNEW = 'http://127.0.0.1:14500/';
String GserverJGC = 'http://172.23.10.60:1880/';
//
// String GserverNEWTEST = 'http://127.0.0.1:14500/';
