import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

import '../../data/datadummy.dart';
import '../../data/model.dart';
import '../../page/02INDreport/INDreportMAIN.dart';
import '../../page/page2.dart';

//-------------------------------------------------

var csvdata = [];
String server = 'http://172.23.10.40:2500/';

abstract class CsvExport_Event {}

class CsvExportGetData extends CsvExport_Event {}

class CsvExport_Bloc extends Bloc<CsvExport_Event, List<dataset>> {
  CsvExport_Bloc() : super([]) {
    on<CsvExportGetData>((event, emit) {
      return _CsvExportGet_Function([], emit);
    });
  }
  Future<void> _CsvExportGet_Function(
      List<dataset> toAdd, Emitter<List<dataset>> emit) async {
    final response = await Dio().post(
      server + "getcsvdata",
      data: {"date": "${selectedDate.toLocal()}".split(' ')[0]},
    );

    // final response = await http.post(Uri.parse(server + "getcsvdata"), body: {
    //   "date": selectedDate.toString()
    // }, headers: {
    //   "Accept": "application/json",
    //   "Access-Control_Allow_Origin": "*"
    // });

    List<dataset> output = [];

    if (response.statusCode == 200) {
      // var data = jsonDecode(response.data);
      var data = response.data;
      csvdata = data;
      for (int i = 0; i < data.length; i++) {
        output.add(dataset(
          id: i,
          f01: data[i]['date'].toString(),
          f02: data[i]['BARCODE'].toString(),
          f03: (data[i]['Condition No']).toString(),
          f04: (data[i]['G']).toString(),
          f05: (data[i]['NG']).toString(),
        ));

        // row.f01 = ;
        // row.f02 = data[i]['Condition No'].toString();
        // row.f03 = ;
        // row.f04 = ;

        // row.f05 = (data[i]['1st output VOLT set']).toString();
        // row.f06 = (data[i]['1st output VOLT MEAS CURRENT']).toString();
        // row.f07 = (data[i]['1st output VOLT MEAS MIN']).toString();
        // row.f08 = (data[i]['1st output VOLT MEAS MAX']).toString();
        // row.f09 = (data[i]['1st output POWER MEAS CURRENT']).toString();
        // row.f10 = (data[i]['1st output POWER MEAS MIN']).toString();
        // row.f11 = (data[i]['1st output POWER MEAS MAX']).toString();
        // row.f12 = (data[i]['1st HEATING TEMP MEAS CURRENT']).toString();
        // row.f13 = (data[i]['1st HEATING TEMP MEAS MIN']).toString();
        // row.f14 = (data[i]['1st HEATING TEMP MEAS MAX']).toString();
        // row.f15 = (data[i]['1st HEATING SET TIME']).toString();
        // row.f16 = (data[i]['1st HEATING MEAS TIME']).toString();

        // row.f17 = (data[i]['2nd output VOLT set']).toString();
        // row.f18 = (data[i]['2nd output VOLT MEAS CURRENT']).toString();
        // row.f19 = (data[i]['2nd output VOLT MEAS MIN']).toString();
        // row.f20 = (data[i]['2nd output VOLT MEAS MAX']).toString();
        // row.f21 = (data[i]['2nd output POWER MEAS CURRENT']).toString();
        // row.f22 = (data[i]['2nd output POWER MEAS MIN']).toString();
        // row.f23 = (data[i]['2nd output POWER MEAS MAX']).toString();
        // row.f24 = (data[i]['2nd HEATING TEMP MEAS CURRENT']).toString();
        // row.f25 = (data[i]['2nd HEATING TEMP MEAS MIN']).toString();
        // row.f26 = (data[i]['2nd HEATING TEMP MEAS MAX']).toString();
        // row.f27 = (data[i]['2nd HEATING WAIT SET TIME']).toString();
        // row.f28 = (data[i]['2nd HEATING WAIT MEAS TIME']).toString();
        // row.f29 = (data[i]['2nd HEATING SET TIME']).toString();
        // row.f30 = (data[i]['2nd HEATING MEAS TIME']).toString();

        // row.f31 = (data[i]['3th output VOLT set']).toString();
        // row.f32 = (data[i]['3th output VOLT MEAS CURRENT']).toString();
        // row.f33 = (data[i]['3th output VOLT MEAS MIN']).toString();
        // row.f34 = (data[i]['3th output VOLT MEAS MAX']).toString();
        // row.f35 = (data[i]['3th output POWER MEAS CURRENT']).toString();
        // row.f36 = (data[i]['3th output POWER MEAS MIN']).toString();
        // row.f37 = (data[i]['3th output POWER MEAS MAX']).toString();
        // row.f38 = (data[i]['3th HEATING TEMP MEAS CURRENT']).toString();
        // row.f39 = (data[i]['3th HEATING TEMP MEAS MIN']).toString();
        // row.f40 = (data[i]['3th HEATING TEMP MEAS MAX']).toString();
        // row.f41 = (data[i]['3th HEATING WAIT SET TIME']).toString();
        // row.f42 = (data[i]['3th HEATING WAIT MEAS TIME']).toString();
        // row.f43 = (data[i]['3th HEATING SET TIME']).toString();
        // row.f44 = (data[i]['3th HEATING MEAS TIME']).toString();

        // row.f45 = (data[i]['4th output VOLT set']).toString();
        // row.f46 = (data[i]['4th output VOLT MEAS CURRENT']).toString();
        // row.f47 = (data[i]['4th output VOLT MEAS MIN']).toString();
        // row.f48 = (data[i]['4th output VOLT MEAS MAX']).toString();
        // row.f49 = (data[i]['4th output POWER MEAS CURRENT']).toString();
        // row.f50 = (data[i]['4th output POWER MEAS MIN']).toString();
        // row.f51 = (data[i]['4th output POWER MEAS MAX']).toString();
        // row.f52 = (data[i]['4th HEATING TEMP MEAS CURRENT']).toString();
        // row.f53 = (data[i]['4th HEATING TEMP MEAS MIN']).toString();
        // row.f54 = (data[i]['4th HEATING TEMP MEAS MAX']).toString();
        // row.f55 = (data[i]['4th HEATING WAIT SET TIME']).toString();
        // row.f56 = (data[i]['4th HEATING WAIT MEAS TIME']).toString();
        // row.f57 = (data[i]['4th HEATING SET TIME']).toString();
        // row.f58 = (data[i]['4th HEATING MEAS TIME']).toString();

        // row.f59 = (data[i]['AIR COOLING TIME SET']).toString();
        // row.f60 = (data[i]['AIR COOLING TIME MEAS']).toString();
        // row.f61 = (data[i]['HEAD CENTER REV']).toString();
        // row.f62 = (data[i]['TAIL CENTER REV']).toString();
        // row.f63 = (data[i]['CYCLE TIME']).toString();

      }
    } else {
      print("NO SERVICE");
    }

    emit(output);
  }
}
