import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/BlocEvent/05-01-getactualdata_AUTOPEELING02.dart';
import '../data/modelmaster.dart';
import '05DASHBOARD_AUTOPEELING02/Dashboardmain_AUTOPEELING02.dart';
import 'page0.dart';
import '../data/global.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page5BodyCSVbloc();
  }
}

class Page5BodyCSVbloc extends StatelessWidget {
  const Page5BodyCSVbloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => ACTUALDATA_AUTOPEELING02_Bloc(),
        child: BlocBuilder<ACTUALDATA_AUTOPEELING02_Bloc,
            List<YMDDATAMASTERmodel>>(
          builder: (context, datatable) {
            return Page5Body(
              datatable: datatable,
            );
          },
        ));

    ;
  }
}

class Page5Body extends StatelessWidget {
  Page5Body({
    Key? key,
    this.datatable,
  }) : super(key: key);
  List<YMDDATAMASTERmodel>? datatable;
  @override
  Widget build(BuildContext context) {
    return DashBoard_AUTOPEELING02(
      datatable: datatable,
    );
  }
}
