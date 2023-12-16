import 'dart:convert';
import 'dart:html';

import 'package:csv/csv.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import '../../data/datadummy.dart';
import '../../data/global.dart';
import '../../data/model.dart';
import '../../data/modelmaster.dart';
import '../../data/test.dart';
import '../../page/02Report_AUTOSN/ReportMAIN_AUTOSN.dart';
import '../../page/02Report_AUTOSN/ReportVAR_AUTOSN.dart';
import '../../page/06Report_AUTOPEELING02/ReportVAR_AUTOPEELING02.dart';
import '../../page/page2.dart';

//-------------------------------------------------

String server = GserverYMD;
//  ReportVAR_AUTOPEELING02.selectedDate

abstract class CsvExport_AUTOPEELING02_Event {}

class CsvExport_AUTOPEELING02GetData extends CsvExport_AUTOPEELING02_Event {}

class CsvExport_AUTOPEELING02GetData_R extends CsvExport_AUTOPEELING02_Event {}

class CsvExport_AUTOPEELING02_Bloc
    extends Bloc<CsvExport_AUTOPEELING02_Event, List<YMDDATAMASTERmodel>> {
  CsvExport_AUTOPEELING02_Bloc() : super([]) {
    on<CsvExport_AUTOPEELING02GetData>((event, emit) {
      return _CsvExport_AUTOPEELING02Get_Function([], emit);
    });
    on<CsvExport_AUTOPEELING02GetData_R>((event, emit) {
      return _CsvExport_AUTOPEELING02Get_Function_R([], emit);
    });
  }
  Future<void> _CsvExport_AUTOPEELING02Get_Function(
      List<YMDDATAMASTERmodel> toAdd,
      Emitter<List<YMDDATAMASTERmodel>> emit) async {
    final response = await Dio().post(
      server + "selectedDate_AUTOPL2",
      data: {"date": ReportVAR_AUTOPEELING02.selectedDate},
    );

    // final response = await http.post(Uri.parse(server + "getcsvdata"), body: {
    //   "date": selectedDate.toString()
    // }, headers: {
    //   "Accept": "application/json",
    //   "Access-Control_Allow_Origin": "*"
    // });

    List<YMDDATAMASTERmodel> output = [];
    // if (true) {
    if (response.statusCode == 200) {
      var databuff = response.data;
      // var databuff = testdata;

      for (var i = 0; i < databuff.length; i++) {
        //
        output.add(YMDDATAMASTERmodel(
          NO: '${i + 1}',
          Item: _NullCheck(databuff[i]['ItemID']),
          ItemNO: _NullCheck(databuff[i]['ItemNO']),
          PartNO: _NullCheck(databuff[i]['PartNumber']),
          PartName: _NullCheck(databuff[i]['PartName']),
          QTY: _NullCheck(databuff[i]['QTY']),
          LoadingTime01: _daycon(_NullCheck(databuff[i]['LoadingTime'])),
          Tank02Temp: todesimol(_NullCheck(databuff[i]['State02tempPV'])),
          Tank02Time: _NullCheck(databuff[i]['State02timePV']),
          Tank03Time: _NullCheck(databuff[i]['State03timePV']),
          Tank03Temp: todesimol(_NullCheck(databuff[i]['State03tempPV'])),
          Tank04Time: _NullCheck(databuff[i]['State04timePV']),
          Tank04Temp: todesimol(_NullCheck(databuff[i]['State04tempPV'])),
          Tank05Time: _NullCheck(databuff[i]['State05timePV']),
          Tank05Temp: todesimol(_NullCheck(databuff[i]['State05tempPV'])),
          Tank06Time: _NullCheck(databuff[i]['State06timePV']),
          Tank06Temp: todesimol(_NullCheck(databuff[i]['State06tempPV'])),
          Tank07Time: _NullCheck(databuff[i]['State07timePV']),
          Tank07Temp: todesimol(_NullCheck(databuff[i]['State07tempPV'])),
          Tank08Time: _NullCheck(databuff[i]['State08timePV']),
          Tank08Temp: todesimol(_NullCheck(databuff[i]['State08tempPV'])),
          Tank09Time: _NullCheck(databuff[i]['State09timePV']),
          Tank09Temp: todesimol(_NullCheck(databuff[i]['State09tempPV'])),
          Tank10Time: _NullCheck(databuff[i]['State10timePV']),
          Tank10Temp: todesimol(_NullCheck(databuff[i]['State10tempPV'])),
        ));
      }
    } else {
      print("NO SERVICE");
    }
    ExpCSV(output);
    emit(output);
  }

  Future<void> _CsvExport_AUTOPEELING02Get_Function_R(
      List<YMDDATAMASTERmodel> toAdd,
      Emitter<List<YMDDATAMASTERmodel>> emit) async {
    final response = await Dio().post(
      server + "selectedDate_AUTOPL2",
      data: {"date": ReportVAR_AUTOPEELING02.selectedDate},
    );

    // final response = await http.post(Uri.parse(server + "getcsvdata"), body: {
    //   "date": selectedDate.toString()
    // }, headers: {
    //   "Accept": "application/json",
    //   "Access-Control_Allow_Origin": "*"
    // });

    List<YMDDATAMASTERmodel> output = [];

    if (response.statusCode == 200) {
      // if (true) {
      var databuff = response.data;
      // var databuff = testdata;

      for (var i = 0; i < databuff.length; i++) {
        //
        output.add(YMDDATAMASTERmodel(
          NO: '${i + 1}',
          Item: _NullCheck(databuff[i]['ItemID']),
          ItemNO: _NullCheck(databuff[i]['ItemNO']),
          PartNO: _NullCheck(databuff[i]['PartNumber']),
          PartName: _NullCheck(databuff[i]['PartName']),
          QTY: _NullCheck(databuff[i]['QTY']),
          LoadingTime01: _daycon(_NullCheck(databuff[i]['LoadingTime'])),
          Tank02Temp: todesimol(_NullCheck(databuff[i]['State02tempPV'])),
          Tank02Time: _NullCheck(databuff[i]['State02timePV']),
          Tank03Time: _NullCheck(databuff[i]['State03timePV']),
          Tank03Temp: todesimol(_NullCheck(databuff[i]['State03tempPV'])),
          Tank04Time: _NullCheck(databuff[i]['State04timePV']),
          Tank04Temp: todesimol(_NullCheck(databuff[i]['State04tempPV'])),
          Tank05Time: _NullCheck(databuff[i]['State05timePV']),
          Tank05Temp: todesimol(_NullCheck(databuff[i]['State05tempPV'])),
          Tank06Time: _NullCheck(databuff[i]['State06timePV']),
          Tank06Temp: todesimol(_NullCheck(databuff[i]['State06tempPV'])),
          Tank07Time: _NullCheck(databuff[i]['State07timePV']),
          Tank07Temp: todesimol(_NullCheck(databuff[i]['State07tempPV'])),
          Tank08Time: _NullCheck(databuff[i]['State08timePV']),
          Tank08Temp: todesimol(_NullCheck(databuff[i]['State08tempPV'])),
          Tank09Time: _NullCheck(databuff[i]['State09timePV']),
          Tank09Temp: todesimol(_NullCheck(databuff[i]['State09tempPV'])),
          Tank10Time: _NullCheck(databuff[i]['State10timePV']),
          Tank10Temp: todesimol(_NullCheck(databuff[i]['State10tempPV'])),
        ));
      }
    } else {
      print("NO SERVICE");
    }

    emit(output);
  }
}

String _NullCheck(dynamic input) {
  String output = '-';
  if (input != null) {
    if (input != '0') {
      output = input.toString();
    }
  }
  return output;
}

ExpCSV(List<YMDDATAMASTERmodel> data) {
  List<List<dynamic>> rows = [];

  for (int i = -1; i < data.length; i++) {
    List<dynamic> row = [];
    if (i == -1) {
      row.add('NO');
      row.add('Item');
      row.add('PartNO No');
      row.add('PartName');
      row.add('QTY');
      row.add('LoadingTime01');
      row.add('02AirPressureTank');
      row.add('03WaterRinse4');
      row.add('04WaterRinse3');
      row.add('05WaterRinse2');
      row.add('06WaterRinse1');
      row.add('07Degressing1/1Temp');
      row.add('07Degressing1/1Time');
      row.add('08Degressing1/1Temp');
      row.add('08Degressing1/1Time');
      row.add('09Degressing1/1Temp');
      row.add('09Degressing1/1Time');
      row.add('10Degressing1/1Temp');
      row.add('10Degressing1/1Time');
    } else {
      row.add(data[i].NO);
      row.add(data[i].Item);
      row.add(data[i].PartNO);
      row.add(data[i].PartName);
      row.add(data[i].QTY);
      row.add((data[i].LoadingTime01));
      row.add(data[i].Tank02Time);
      row.add(data[i].Tank03Time);
      row.add(data[i].Tank04Time);
      row.add(data[i].Tank05Time);
      row.add(data[i].Tank06Time);
      row.add(data[i].Tank07Temp);
      row.add(data[i].Tank07Time);
      row.add(data[i].Tank08Temp);
      row.add(data[i].Tank08Time);
      row.add(data[i].Tank09Temp);
      row.add(data[i].Tank09Time);
      row.add(data[i].Tank10Temp);
      row.add(data[i].Tank10Time);

      //
    }

    rows.add(row);
  }
  String datetada = "${selectedDate.toLocal()}".split(' ')[0];
  String csv = const ListToCsvConverter().convert(rows);
  AnchorElement(href: "data:text/plain;charset=utf-8,$csv")
    ..setAttribute(
        "download", "DATA ${ReportVAR_AUTOPEELING02.selectedDate}.csv")
    ..click();
}

String _daycon(String input) {
  String output = '-';
  if (isNumeric(input)) {
    int datain = int.parse(input);
    var date = DateTime.fromMillisecondsSinceEpoch(datain);
    // print(date);
    // print(DateFormat('dd/MM/yyyy hh:mm a').format(date));
    output = DateFormat('dd/MM/yyyy hh:mm a').format(date);
  }

  return output;
}

String ConverstStr(String input) {
  if (isNumeric(input)) {
    return input;
  } else {
    return '0';
  }
}

bool isNumeric(String s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}

String todesimol(String s) {
  String output = '-';
  if (s != '-') {
    output = (double.parse(ConverstStr(s)) / 10).toStringAsFixed(1);
  }

  return output;
}
