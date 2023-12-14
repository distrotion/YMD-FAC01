import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/BlocEvent/04-01-CsvExportEvent_AUTOCU.dart';
import '../data/modelmaster.dart';
import '04Report_AUTOCU/ReportMAIN_AUTOCU.dart';
import 'page0.dart';
import '../data/global.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page4BodyCSVbloc();
  }
}

class Page4BodyCSVbloc extends StatelessWidget {
  const Page4BodyCSVbloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => CsvExport_AUTOCU_Bloc(),
        child: BlocBuilder<CsvExport_AUTOCU_Bloc, List<YMDDATAMASTERmodel>>(
          builder: (context, datatable) {
            return Page4Body(
              datatable: datatable,
            );
          },
        ));
  }
}

class Page4Body extends StatelessWidget {
  Page4Body({
    Key? key,
    this.datatable,
  }) : super(key: key);
  List<YMDDATAMASTERmodel>? datatable;

  @override
  Widget build(BuildContext context) {
    return CsvPicker_AUTOCU(
      datatable: datatable,
    );
  }
}
