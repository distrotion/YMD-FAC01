import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/BlocEvent/03-01-getactualdata_AUTOCU.dart';
import '../data/modelmaster.dart';
import '03DASHBOARD_AUTOCU/Dashboardmain_AUTOCU.dart';
import 'page0.dart';
import '../data/global.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page3BodyCSVbloc();
  }
}

class Page3BodyCSVbloc extends StatelessWidget {
  const Page3BodyCSVbloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => ACTUALDATA_AUTOCU_Bloc(),
        child: BlocBuilder<ACTUALDATA_AUTOCU_Bloc, List<YMDDATAMASTERmodel>>(
          builder: (context, datatable) {
            return Page3Body(
              datatable: datatable,
            );
          },
        ));

    ;
  }
}

class Page3Body extends StatelessWidget {
  Page3Body({
    Key? key,
    this.datatable,
  }) : super(key: key);
  List<YMDDATAMASTERmodel>? datatable;
  @override
  Widget build(BuildContext context) {
    return DashBoard_AUTOCU(
      datatable: datatable,
    );
  }
}
