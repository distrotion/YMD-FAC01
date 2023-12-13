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

// String GserverYMD = 'http://192.168.71.102:1885/';
String GserverYMD = 'http://192.168.1.148:1885/';

//
// String GserverNEWTEST = 'http://127.0.0.1:14500/';

late Timer Dashboardvar_AUTOSN_DHtimer;
late Timer Dashboardvar_AUTOCU_DHtimer;
late Timer Dashboardvar_AUTOPEELING02_DHtimer;
