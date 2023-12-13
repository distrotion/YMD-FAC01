import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '05DASHBOARD_AUTOPEELING02/Dashboardmain_AUTOPEELING02.dart';
import 'page0.dart';
import '../data/global.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page5Body();
  }
}

class Page5Body extends StatelessWidget {
  Page5Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DashBoard_AUTOPEELING02();
  }
}
