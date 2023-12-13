import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '03DASHBOARD_AUTOCU/Dashboardmain_AUTOCU.dart';
import 'page0.dart';
import '../data/global.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page3Body();
  }
}

class Page3Body extends StatelessWidget {
  Page3Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DashBoard_AUTOCU();
  }
}
