import 'package:flutter/material.dart';

//---------------------------------------------------------
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/BlocEvent/01-getactualdata.dart';
import '../bloc/cubit/NotificationEvent.dart';
import '../data/model.dart';
import '01DASHBOARD/dashboardmain.dart';
import 'page0.dart';
import '../data/global.dart';

//---------------------------------------------------------

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page1BlocBody();
  }
}

class Page1BlocBody extends StatelessWidget {
  /// {@macro counter_page}
  const Page1BlocBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => ACTUALDATA_Bloc(),
        child: BlocBuilder<ACTUALDATA_Bloc, actDATAmodel>(
          builder: (context, data) {
            return Page1Body(
              data: data,
            );
          },
        ));
  }
}

class Page1Body extends StatelessWidget {
  Page1Body({Key? key, this.data}) : super(key: key);
  actDATAmodel? data;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: DashBoard(
      data: data,
    ));
  }
}
