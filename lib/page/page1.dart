import 'package:flutter/material.dart';

//---------------------------------------------------------
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/BlocEvent/01-01-getactualdata.dart';
import '../bloc/cubit/NotificationEvent.dart';
import '../data/model.dart';
import '01DASHBOARD_AUTOSN/Dashboardmain_AUTOSN.dart';
import 'page0.dart';
import '../data/global.dart';

//---------------------------------------------------------

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page1BodyCSVbloc();
  }
}

class Page1BodyCSVbloc extends StatelessWidget {
  const Page1BodyCSVbloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => ACTUALDATA_Bloc(),
        child: BlocBuilder<ACTUALDATA_Bloc, List<YMDDATAmodel>>(
          builder: (context, datatable) {
            return Page1Body(
              datatable: datatable,
            );
          },
        ));

    ;
  }
}

class Page1Body extends StatelessWidget {
  Page1Body({Key? key, this.datatable}) : super(key: key);
  List<YMDDATAmodel>? datatable;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: DashBoard_AUTOSN(
      datatable: datatable,
    ));
  }
}
