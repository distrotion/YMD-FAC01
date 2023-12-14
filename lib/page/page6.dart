import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/BlocEvent/06-01-CsvExportEvent_AUTOPEELING02.dart';
import '../data/modelmaster.dart';
import '06Report_AUTOPEELING02/ReportMAIN_AUTOPEELING02.dart';
import 'page0.dart';
import '../data/global.dart';

class Page6 extends StatelessWidget {
  const Page6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page6BodyCSVbloc();
  }
}

class Page6BodyCSVbloc extends StatelessWidget {
  const Page6BodyCSVbloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => CsvExport_AUTOPEELING02_Bloc(),
        child:
            BlocBuilder<CsvExport_AUTOPEELING02_Bloc, List<YMDDATAMASTERmodel>>(
          builder: (context, datatable) {
            return Page6Body(
              datatable: datatable,
            );
          },
        ));
  }
}

class Page6Body extends StatelessWidget {
  Page6Body({
    Key? key,
    this.datatable,
  }) : super(key: key);
  List<YMDDATAMASTERmodel>? datatable;
  @override
  Widget build(BuildContext context) {
    return CsvPicker_AUTOPEELING02(
      datatable: datatable,
    );
  }
}
