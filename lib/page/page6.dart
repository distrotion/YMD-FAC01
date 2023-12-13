import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '06Report_AUTOPEELING02/ReportMAIN_AUTOPEELING02.dart';
import 'page0.dart';
import '../data/global.dart';

class Page6 extends StatelessWidget {
  const Page6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page6Body();
  }
}

class Page6Body extends StatelessWidget {
  Page6Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CsvPicker_AUTOPEELING02();
  }
}
