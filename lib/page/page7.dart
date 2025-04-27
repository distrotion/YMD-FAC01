import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/BlocEvent/07-01-getactualdata_AUTOGAMA.dart';
import '../data/modelmaster.dart';

import '07DASHBOARD_AUTOGAMA/Dashboardmain_AUTOSN.dart';
import 'page0.dart';
import '../data/global.dart';

class Page7 extends StatelessWidget {
  const Page7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page7BodyCSVbloc();
  }
}

class Page7BodyCSVbloc extends StatelessWidget {
  const Page7BodyCSVbloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => ACTUALDATA_AUTOGAMA_Bloc(),
        child: BlocBuilder<ACTUALDATA_AUTOGAMA_Bloc, List<YMDDATAMASTERmodel2>>(
          builder: (context, datatable) {
            return Page7Body(
              datatable: datatable,
            );
          },
        ));

    ;
  }
}

class Page7Body extends StatelessWidget {
  Page7Body({
    Key? key,
    this.datatable,
  }) : super(key: key);
  List<YMDDATAMASTERmodel2>? datatable;
  @override
  Widget build(BuildContext context) {
    return DashBoard_AUTOGAMA(
      datatable: datatable,
    );
  }
}
