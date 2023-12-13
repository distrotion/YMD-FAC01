import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '04Report_AUTOCU/ReportMAIN_AUTOCU.dart';
import 'page0.dart';
import '../data/global.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page4Body();
  }
}

class Page4Body extends StatelessWidget {
  Page4Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CsvPicker_AUTOCU();
  }
}
