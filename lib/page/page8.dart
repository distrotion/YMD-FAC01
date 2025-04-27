import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/BlocEvent/08-01-CsvExportEvent_AUTOGAMA.dart';
import '../data/modelmaster.dart';

import '08Report_AUTOGAMA/ReportMAIN_AUTOSN.dart';
import 'page0.dart';
import '../data/global.dart';

class Page8 extends StatelessWidget {
  const Page8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page8BodyCSVbloc();
  }
}

class Page8BodyCSVbloc extends StatelessWidget {
  const Page8BodyCSVbloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => CsvExport_AUTOGAMA_Bloc(),
        child: BlocBuilder<CsvExport_AUTOGAMA_Bloc, List<YMDDATAMASTERmodel2>>(
          builder: (context, datatable) {
            return Page8Body(
              datatable: datatable,
            );
          },
        ));
  }
}

class Page8Body extends StatelessWidget {
  Page8Body({
    Key? key,
    this.datatable,
  }) : super(key: key);
  List<YMDDATAMASTERmodel2>? datatable;

  @override
  Widget build(BuildContext context) {
    return CsvPicker_AUTOGAMA(
      datatable: datatable,
    );
  }
}
