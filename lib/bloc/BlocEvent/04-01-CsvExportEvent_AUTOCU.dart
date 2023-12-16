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
import '../../page/04Report_AUTOCU/ReportVAR_AUTOCU.dart';
import '../../page/page2.dart';

//-------------------------------------------------

String server = GserverYMD;
//  ReportVAR_AUTOCU.selectedDate

abstract class CsvExport_AUTOCU_Event {}

class CsvExport_AUTOCUGetData extends CsvExport_AUTOCU_Event {}

class CsvExport_AUTOCUGetData_R extends CsvExport_AUTOCU_Event {}

class CsvExport_AUTOCU_Bloc
    extends Bloc<CsvExport_AUTOCU_Event, List<YMDDATAMASTERmodel>> {
  CsvExport_AUTOCU_Bloc() : super([]) {
    on<CsvExport_AUTOCUGetData>((event, emit) {
      return _CsvExport_AUTOCUGet_Function([], emit);
    });
    on<CsvExport_AUTOCUGetData_R>((event, emit) {
      return _CsvExport_AUTOCUGet_Function_R([], emit);
    });
  }
  Future<void> _CsvExport_AUTOCUGet_Function(List<YMDDATAMASTERmodel> toAdd,
      Emitter<List<YMDDATAMASTERmodel>> emit) async {
    final response = await Dio().post(
      server + "selectedDate_AUTOCU",
      data: {"date": ReportVAR_AUTOCU.selectedDate},
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
          Tank11Time: _NullCheck(databuff[i]['State11timePV']),
          Tank11Temp: todesimol(_NullCheck(databuff[i]['State11tempPV'])),
          Tank12Time: _NullCheck(databuff[i]['State12timePV']),
          Tank12Temp: todesimol(_NullCheck(databuff[i]['State12tempPV'])),
          Tank13Time: _NullCheck(databuff[i]['State13timePV']),
          Tank13Temp: todesimol(_NullCheck(databuff[i]['State13tempPV'])),
          Tank14Time: _NullCheck(databuff[i]['State14timePV']),
          Tank14Temp: todesimol(_NullCheck(databuff[i]['State14tempPV'])),
          Tank15Time: _NullCheck(databuff[i]['State15timePV']),
          Tank15Temp: todesimol(_NullCheck(databuff[i]['State15tempPV'])),
          Tank16Time: _NullCheck(databuff[i]['State16timePV']),
          Tank16Temp: todesimol(_NullCheck(databuff[i]['State16tempPV'])),
          //
          Tank17Volt: todesimol(_NullCheck(databuff[i]['State17voltPV'])),
          Tank17Amp: _NullCheck(databuff[i]['State17amPV']),
          Tank17Temp: todesimol(_NullCheck(databuff[i]['State17tempPV'])),
          Tank17Rpm: _NullCheck(databuff[i]['State17rpmPV']),
          Tank17Time: _NullCheck(databuff[i]['State17timePV']),
          //
          Tank18Time: _NullCheck(databuff[i]['State18timePV']),
          Tank18Temp: todesimol(_NullCheck(databuff[i]['State18tempPV'])),
          Tank19Time: _NullCheck(databuff[i]['State19timePV']),
          Tank19Temp: todesimol(_NullCheck(databuff[i]['State19tempPV'])),
          //
          Tank20Volt: todesimol(_NullCheck(databuff[i]['State20voltPV'])),
          Tank20Amp: _NullCheck(databuff[i]['State20amPV']),
          Tank20Temp: todesimol(_NullCheck(databuff[i]['State20tempPV'])),
          Tank20Rpm: _NullCheck(databuff[i]['State20rpmPV']),
          Tank20Time: _NullCheck(databuff[i]['State20timePV']),
          //
          Tank21Time: _NullCheck(databuff[i]['State21timePV']),
          Tank21Temp: todesimol(_NullCheck(databuff[i]['State21tempPV'])),
          Tank22Time: _NullCheck(databuff[i]['State22timePV']),
          Tank22Temp: todesimol(_NullCheck(databuff[i]['State22tempPV'])),
          Tank23Time: _NullCheck(databuff[i]['State23timePV']),
          Tank23Temp: todesimol(_NullCheck(databuff[i]['State23tempPV'])),
          //
          Tank24Volt: todesimol(_NullCheck(databuff[i]['State24voltPV'])),
          Tank24Amp: _NullCheck(databuff[i]['State24amPV']),
          Tank24Temp: todesimol(_NullCheck(databuff[i]['State24tempPV'])),
          Tank24Rpm: _NullCheck(databuff[i]['State24rpmPV']),
          Tank24Time: _NullCheck(databuff[i]['State24timePV']),
          //
          Tank25Time: _NullCheck(databuff[i]['State25timePV']),
          Tank25Temp: todesimol(_NullCheck(databuff[i]['State25tempPV'])),
          Tank26Time: _NullCheck(databuff[i]['State26timePV']),
          Tank26Temp: todesimol(_NullCheck(databuff[i]['State26tempPV'])),
          //
          Tank27Volt: todesimol(_NullCheck(databuff[i]['State27voltPV'])),
          Tank27Amp: _NullCheck(databuff[i]['State27amPV']),
          Tank27Temp: todesimol(_NullCheck(databuff[i]['State27tempPV'])),
          Tank27Rpm: _NullCheck(databuff[i]['State27rpmPV']),
          Tank27Time: _NullCheck(databuff[i]['State27timePV']),

          Tank28Volt: todesimol(_NullCheck(databuff[i]['State28voltPV'])),
          Tank28Amp: _NullCheck(databuff[i]['State28amPV']),
          Tank28Temp: todesimol(_NullCheck(databuff[i]['State28tempPV'])),
          Tank28Rpm: _NullCheck(databuff[i]['State28rpmPV']),
          Tank28Time: _NullCheck(databuff[i]['State28timePV']),
          //
          Tank29Time: _NullCheck(databuff[i]['State29timePV']),
          Tank29Temp: todesimol(_NullCheck(databuff[i]['State29tempPV'])),
          //
          Tank30Volt: todesimol(_NullCheck(databuff[i]['State30voltPV'])),
          Tank30Amp: _NullCheck(databuff[i]['State30amPV']),
          Tank30Temp: todesimol(_NullCheck(databuff[i]['State30tempPV'])),
          Tank30Rpm: _NullCheck(databuff[i]['State30rpmPV']),
          Tank30Time: _NullCheck(databuff[i]['State30timePV']),

          Tank31Volt: todesimol(_NullCheck(databuff[i]['State31voltPV'])),
          Tank31Amp: _NullCheck(databuff[i]['State31amPV']),
          Tank31Temp: todesimol(_NullCheck(databuff[i]['State31tempPV'])),
          Tank31Rpm: _NullCheck(databuff[i]['State31rpmPV']),
          Tank31Time: _NullCheck(databuff[i]['State31timePV']),
          //
          Tank32Time: _NullCheck(databuff[i]['State32timePV']),
          Tank32Temp: todesimol(_NullCheck(databuff[i]['State32tempPV'])),
          //
          Tank33Volt: todesimol(_NullCheck(databuff[i]['State33voltPV'])),
          Tank33Amp: _NullCheck(databuff[i]['State33amPV']),
          Tank33Temp: todesimol(_NullCheck(databuff[i]['State33tempPV'])),
          Tank33Rpm: _NullCheck(databuff[i]['State33rpmPV']),
          Tank33Time: _NullCheck(databuff[i]['State33timePV']),

          Tank34Volt: todesimol(_NullCheck(databuff[i]['State34voltPV'])),
          Tank34Amp: _NullCheck(databuff[i]['State34amPV']),
          Tank34Temp: todesimol(_NullCheck(databuff[i]['State34tempPV'])),
          Tank34Rpm: _NullCheck(databuff[i]['State34rpmPV']),
          Tank34Time: _NullCheck(databuff[i]['State34timePV']),
          //
          Tank35Time: _NullCheck(databuff[i]['State35timePV']),
          Tank35Temp: todesimol(_NullCheck(databuff[i]['State35tempPV'])),
          //
          Tank36Volt: todesimol(_NullCheck(databuff[i]['State36voltPV'])),
          Tank36Amp: _NullCheck(databuff[i]['State36amPV']),
          Tank36Temp: todesimol(_NullCheck(databuff[i]['State36tempPV'])),
          Tank36Rpm: _NullCheck(databuff[i]['State36rpmPV']),
          Tank36Time: _NullCheck(databuff[i]['State36timePV']),

          Tank37Volt: todesimol(_NullCheck(databuff[i]['State37voltPV'])),
          Tank37Amp: _NullCheck(databuff[i]['State37amPV']),
          Tank37Temp: todesimol(_NullCheck(databuff[i]['State37tempPV'])),
          Tank37Rpm: _NullCheck(databuff[i]['State37rpmPV']),
          Tank37Time: _NullCheck(databuff[i]['State37timePV']),
          //
          Tank38Time: _NullCheck(databuff[i]['State38timePV']),
          Tank38Temp: todesimol(_NullCheck(databuff[i]['State38tempPV'])),

          Tank39Time: _NullCheck(databuff[i]['State39timePV']),
          Tank39Temp: todesimol(_NullCheck(databuff[i]['State39tempPV'])),
          Tank40Time: _NullCheck(databuff[i]['State40timePV']),
          Tank40Temp: todesimol(_NullCheck(databuff[i]['State40tempPV'])),
          Tank41Time: _NullCheck(databuff[i]['State41timePV']),
          Tank41Temp: todesimol(_NullCheck(databuff[i]['State41tempPV'])),
          Tank42Time: _NullCheck(databuff[i]['State42timePV']),
          Tank42Temp: todesimol(_NullCheck(databuff[i]['State42tempPV'])),
          Tank43Time: _NullCheck(databuff[i]['State43timePV']),
          Tank43Temp: todesimol(_NullCheck(databuff[i]['State43tempPV'])),
          Tank44Time: _NullCheck(databuff[i]['State44timePV']),
          Tank44Temp: todesimol(_NullCheck(databuff[i]['State44tempPV'])),
          Tank45Time: _NullCheck(databuff[i]['State45timePV']),
          Tank45Temp: todesimol(_NullCheck(databuff[i]['State45tempPV'])),
        ));
      }
    } else {
      print("NO SERVICE");
    }
    ExpCSV(output);
    emit(output);
  }

  Future<void> _CsvExport_AUTOCUGet_Function_R(List<YMDDATAMASTERmodel> toAdd,
      Emitter<List<YMDDATAMASTERmodel>> emit) async {
    final response = await Dio().post(
      server + "selectedDate_AUTOCU",
      data: {"date": ReportVAR_AUTOCU.selectedDate},
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
          Tank11Time: _NullCheck(databuff[i]['State11timePV']),
          Tank11Temp: todesimol(_NullCheck(databuff[i]['State11tempPV'])),
          Tank12Time: _NullCheck(databuff[i]['State12timePV']),
          Tank12Temp: todesimol(_NullCheck(databuff[i]['State12tempPV'])),
          Tank13Time: _NullCheck(databuff[i]['State13timePV']),
          Tank13Temp: todesimol(_NullCheck(databuff[i]['State13tempPV'])),
          Tank14Time: _NullCheck(databuff[i]['State14timePV']),
          Tank14Temp: todesimol(_NullCheck(databuff[i]['State14tempPV'])),
          Tank15Time: _NullCheck(databuff[i]['State15timePV']),
          Tank15Temp: todesimol(_NullCheck(databuff[i]['State15tempPV'])),
          Tank16Time: _NullCheck(databuff[i]['State16timePV']),
          Tank16Temp: todesimol(_NullCheck(databuff[i]['State16tempPV'])),
          //
          Tank17Volt: todesimol(_NullCheck(databuff[i]['State17voltPV'])),
          Tank17Amp: _NullCheck(databuff[i]['State17amPV']),
          Tank17Temp: todesimol(_NullCheck(databuff[i]['State17tempPV'])),
          Tank17Rpm: _NullCheck(databuff[i]['State17rpmPV']),
          Tank17Time: _NullCheck(databuff[i]['State17timePV']),
          //
          Tank18Time: _NullCheck(databuff[i]['State18timePV']),
          Tank18Temp: todesimol(_NullCheck(databuff[i]['State18tempPV'])),
          Tank19Time: _NullCheck(databuff[i]['State19timePV']),
          Tank19Temp: todesimol(_NullCheck(databuff[i]['State19tempPV'])),
          //
          Tank20Volt: todesimol(_NullCheck(databuff[i]['State20voltPV'])),
          Tank20Amp: _NullCheck(databuff[i]['State20amPV']),
          Tank20Temp: todesimol(_NullCheck(databuff[i]['State20tempPV'])),
          Tank20Rpm: _NullCheck(databuff[i]['State20rpmPV']),
          Tank20Time: _NullCheck(databuff[i]['State20timePV']),
          //
          Tank21Time: _NullCheck(databuff[i]['State21timePV']),
          Tank21Temp: todesimol(_NullCheck(databuff[i]['State21tempPV'])),
          Tank22Time: _NullCheck(databuff[i]['State22timePV']),
          Tank22Temp: todesimol(_NullCheck(databuff[i]['State22tempPV'])),
          Tank23Time: _NullCheck(databuff[i]['State23timePV']),
          Tank23Temp: todesimol(_NullCheck(databuff[i]['State23tempPV'])),
          //
          Tank24Volt: todesimol(_NullCheck(databuff[i]['State24voltPV'])),
          Tank24Amp: _NullCheck(databuff[i]['State24amPV']),
          Tank24Temp: todesimol(_NullCheck(databuff[i]['State24tempPV'])),
          Tank24Rpm: _NullCheck(databuff[i]['State24rpmPV']),
          Tank24Time: _NullCheck(databuff[i]['State24timePV']),
          //
          Tank25Time: _NullCheck(databuff[i]['State25timePV']),
          Tank25Temp: todesimol(_NullCheck(databuff[i]['State25tempPV'])),
          Tank26Time: _NullCheck(databuff[i]['State26timePV']),
          Tank26Temp: todesimol(_NullCheck(databuff[i]['State26tempPV'])),
          //
          Tank27Volt: todesimol(_NullCheck(databuff[i]['State27voltPV'])),
          Tank27Amp: _NullCheck(databuff[i]['State27amPV']),
          Tank27Temp: todesimol(_NullCheck(databuff[i]['State27tempPV'])),
          Tank27Rpm: _NullCheck(databuff[i]['State27rpmPV']),
          Tank27Time: _NullCheck(databuff[i]['State27timePV']),

          Tank28Volt: todesimol(_NullCheck(databuff[i]['State28voltPV'])),
          Tank28Amp: _NullCheck(databuff[i]['State28amPV']),
          Tank28Temp: todesimol(_NullCheck(databuff[i]['State28tempPV'])),
          Tank28Rpm: _NullCheck(databuff[i]['State28rpmPV']),
          Tank28Time: _NullCheck(databuff[i]['State28timePV']),
          //
          Tank29Time: _NullCheck(databuff[i]['State29timePV']),
          Tank29Temp: todesimol(_NullCheck(databuff[i]['State29tempPV'])),
          //
          Tank30Volt: todesimol(_NullCheck(databuff[i]['State30voltPV'])),
          Tank30Amp: _NullCheck(databuff[i]['State30amPV']),
          Tank30Temp: todesimol(_NullCheck(databuff[i]['State30tempPV'])),
          Tank30Rpm: _NullCheck(databuff[i]['State30rpmPV']),
          Tank30Time: _NullCheck(databuff[i]['State30timePV']),

          Tank31Volt: todesimol(_NullCheck(databuff[i]['State31voltPV'])),
          Tank31Amp: _NullCheck(databuff[i]['State31amPV']),
          Tank31Temp: todesimol(_NullCheck(databuff[i]['State31tempPV'])),
          Tank31Rpm: _NullCheck(databuff[i]['State31rpmPV']),
          Tank31Time: _NullCheck(databuff[i]['State31timePV']),
          //
          Tank32Time: _NullCheck(databuff[i]['State32timePV']),
          Tank32Temp: todesimol(_NullCheck(databuff[i]['State32tempPV'])),
          //
          Tank33Volt: todesimol(_NullCheck(databuff[i]['State33voltPV'])),
          Tank33Amp: _NullCheck(databuff[i]['State33amPV']),
          Tank33Temp: todesimol(_NullCheck(databuff[i]['State33tempPV'])),
          Tank33Rpm: _NullCheck(databuff[i]['State33rpmPV']),
          Tank33Time: _NullCheck(databuff[i]['State33timePV']),

          Tank34Volt: todesimol(_NullCheck(databuff[i]['State34voltPV'])),
          Tank34Amp: _NullCheck(databuff[i]['State34amPV']),
          Tank34Temp: todesimol(_NullCheck(databuff[i]['State34tempPV'])),
          Tank34Rpm: _NullCheck(databuff[i]['State34rpmPV']),
          Tank34Time: _NullCheck(databuff[i]['State34timePV']),
          //
          Tank35Time: _NullCheck(databuff[i]['State35timePV']),
          Tank35Temp: todesimol(_NullCheck(databuff[i]['State35tempPV'])),
          //
          Tank36Volt: todesimol(_NullCheck(databuff[i]['State36voltPV'])),
          Tank36Amp: _NullCheck(databuff[i]['State36amPV']),
          Tank36Temp: todesimol(_NullCheck(databuff[i]['State36tempPV'])),
          Tank36Rpm: _NullCheck(databuff[i]['State36rpmPV']),
          Tank36Time: _NullCheck(databuff[i]['State36timePV']),

          Tank37Volt: todesimol(_NullCheck(databuff[i]['State37voltPV'])),
          Tank37Amp: _NullCheck(databuff[i]['State37amPV']),
          Tank37Temp: todesimol(_NullCheck(databuff[i]['State37tempPV'])),
          Tank37Rpm: _NullCheck(databuff[i]['State37rpmPV']),
          Tank37Time: _NullCheck(databuff[i]['State37timePV']),
          //
          Tank38Time: _NullCheck(databuff[i]['State38timePV']),
          Tank38Temp: todesimol(_NullCheck(databuff[i]['State38tempPV'])),

          Tank39Time: _NullCheck(databuff[i]['State39timePV']),
          Tank39Temp: todesimol(_NullCheck(databuff[i]['State39tempPV'])),
          Tank40Time: _NullCheck(databuff[i]['State40timePV']),
          Tank40Temp: todesimol(_NullCheck(databuff[i]['State40tempPV'])),
          Tank41Time: _NullCheck(databuff[i]['State41timePV']),
          Tank41Temp: todesimol(_NullCheck(databuff[i]['State41tempPV'])),
          Tank42Time: _NullCheck(databuff[i]['State42timePV']),
          Tank42Temp: todesimol(_NullCheck(databuff[i]['State42tempPV'])),
          Tank43Time: _NullCheck(databuff[i]['State43timePV']),
          Tank43Temp: todesimol(_NullCheck(databuff[i]['State43tempPV'])),
          Tank44Time: _NullCheck(databuff[i]['State44timePV']),
          Tank44Temp: todesimol(_NullCheck(databuff[i]['State44tempPV'])),
          Tank45Time: _NullCheck(databuff[i]['State45timePV']),
          Tank45Temp: todesimol(_NullCheck(databuff[i]['State45tempPV'])),
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
      row.add('ItemNO');
      row.add('PartNO');
      row.add('PartName');
      row.add('QTY');
      row.add('LoadingTime01');
      row.add('02Degressing1/1Temp');
      row.add('02Degressing1/1Time');
      row.add('03Degressing1/2Temp');
      row.add('03Degressing1/2Time');
      row.add('04WaterRinse');
      row.add('05WaterRinse');
      row.add('06Degressing2/1Temp');
      row.add('06Degressing2/1Time');
      row.add('07Degressing2/2Temp');
      row.add('07Degressing2/2Time');
      row.add('08WaterRinse');
      row.add('09WaterRinse');

      row.add('11ACID_WASHINGTemp');
      row.add('11ACID_WASHINGTime');
      row.add('12WaterRinse');
      row.add('13WaterRinse');
      row.add('14ACID_WASHINGTemp');
      row.add('14ACID_WASHINGTime');
      row.add('15WaterRinse');
      row.add('16WaterRinse');
      row.add('17Elec.Clean01Volt');
      row.add('17Elec.Clean01Amp');
      row.add('17Elec.Clean01Temp');
      row.add('17Elec.Clean01Rpm');
      row.add('17Elec.Clean01Time');
      row.add('18WaterRinse');
      row.add('19WaterRinse');
      row.add('20Elec.Clean01Volt');
      row.add('20Elec.Clean01Amp');
      row.add('20Elec.Clean01Temp');
      row.add('20Elec.Clean01Rpm');
      row.add('20Elec.Clean01Time');
      row.add('21WaterRinse');
      row.add('22WaterRinse');
      row.add('24Elec.CyanideVolt');
      row.add('24Elec.CyanideAmp');
      row.add('24Elec.CyanideTemp');
      row.add('24Elec.CyanideRpm');
      row.add('24Elec.CyanideTime');
      row.add('25WaterRinse');
      row.add('27CU_Strike01Volt');
      row.add('27CU_Strike01Amp');
      row.add('27CU_Strike01Temp');
      row.add('27CU_Strike01Rpm');
      row.add('27CU_Strike01Time');
      row.add('28CU_Strike02Volt');
      row.add('28CU_Strike02Amp');
      row.add('28CU_Strike02Temp');
      row.add('28CU_Strike02Rpm');
      row.add('28CU_Strike02Time');
      row.add('29WaterRinse');

      row.add('30CU_Plate01Volt');
      row.add('30CU_Plate01Amp');
      row.add('30CU_Plate01Temp');
      row.add('30CU_Plate01Rpm');
      row.add('30CU_Plate01Time');
      row.add('31CU_Plate01Volt');
      row.add('31CU_Plate01Amp');
      row.add('31CU_Plate01Temp');
      row.add('31CU_Plate01Rpm');
      row.add('31CU_Plate01Time');
      row.add('32WaterRinse');
      row.add('33CU_Plate01Volt');
      row.add('33CU_Plate01Amp');
      row.add('33CU_Plate01Temp');
      row.add('33CU_Plate01Rpm');
      row.add('33CU_Plate01Time');
      row.add('34CU_Plate01Volt');
      row.add('34CU_Plate01Amp');
      row.add('34CU_Plate01Temp');
      row.add('34CU_Plate01Rpm');
      row.add('34CU_Plate01Time');
      row.add('35WaterRinse');
      row.add('36CU_Plate01Volt');
      row.add('36CU_Plate01Amp');
      row.add('36CU_Plate01Temp');
      row.add('36CU_Plate01Rpm');
      row.add('36CU_Plate01Time');
      row.add('37CU_Plate01Volt');
      row.add('37CU_Plate01Amp');
      row.add('37CU_Plate01Temp');
      row.add('37CU_Plate01Rpm');
      row.add('37CU_Plate01Time');
      row.add('38WaterRinse');
      row.add('40WaterRinse');
      row.add('41WaterRinse');
      row.add('42PosteamentTemp');
      row.add('42PosteamentTime');
      row.add('43WaterRinse');
      row.add('44WaterRinse');
      row.add('45WaterRinse');
    } else {
      row.add(data[i].NO);
      row.add(data[i].Item);
      row.add(data[i].ItemNO);
      row.add(data[i].PartNO);
      row.add(data[i].PartName);
      row.add(data[i].QTY);
      row.add((data[i].LoadingTime01));
      row.add(data[i].Tank02Temp);
      row.add(data[i].Tank02Time);
      row.add(data[i].Tank03Temp);
      row.add(data[i].Tank03Time);

      row.add(data[i].Tank04Time);
      row.add(data[i].Tank05Time);

      row.add(data[i].Tank06Temp);
      row.add(data[i].Tank06Time);
      row.add(data[i].Tank07Temp);
      row.add(data[i].Tank07Time);

      row.add(data[i].Tank08Time);
      row.add(data[i].Tank09Time);

      row.add(data[i].Tank11Temp);
      row.add(data[i].Tank11Time);

      row.add(data[i].Tank12Time);
      row.add(data[i].Tank13Time);

      row.add(data[i].Tank14Temp);
      row.add(data[i].Tank14Time);

      row.add(data[i].Tank15Time);
      row.add(data[i].Tank16Time);

      //
      row.add(data[i].Tank17Volt);
      row.add(data[i].Tank17Amp);
      row.add(data[i].Tank17Temp);
      row.add(data[i].Tank17Rpm);
      row.add(data[i].Tank17Time);
      //
      row.add(data[i].Tank18Time);
      row.add(data[i].Tank19Time);
      //
      row.add(data[i].Tank20Volt);
      row.add(data[i].Tank20Amp);
      row.add(data[i].Tank20Temp);
      row.add(data[i].Tank20Rpm);
      row.add(data[i].Tank20Time);
      //
      row.add(data[i].Tank21Time);
      row.add(data[i].Tank22Time);
      //
      row.add(data[i].Tank24Volt);
      row.add(data[i].Tank24Amp);
      row.add(data[i].Tank24Temp);
      row.add(data[i].Tank24Rpm);
      row.add(data[i].Tank24Time);
      //
      row.add(data[i].Tank25Time);
      //
      row.add(data[i].Tank27Volt);
      row.add(data[i].Tank27Amp);
      row.add(data[i].Tank27Temp);
      row.add(data[i].Tank27Rpm);
      row.add(data[i].Tank27Time);

      row.add(data[i].Tank28Volt);
      row.add(data[i].Tank28Amp);
      row.add(data[i].Tank28Temp);
      row.add(data[i].Tank28Rpm);
      row.add(data[i].Tank28Time);
      //
      row.add(data[i].Tank29Time);
      //
      row.add(data[i].Tank30Volt);
      row.add(data[i].Tank30Amp);
      row.add(data[i].Tank30Temp);
      row.add(data[i].Tank30Rpm);
      row.add(data[i].Tank30Time);

      row.add(data[i].Tank31Volt);
      row.add(data[i].Tank31Amp);
      row.add(data[i].Tank31Temp);
      row.add(data[i].Tank31Rpm);
      row.add(data[i].Tank31Time);
      //
      row.add(data[i].Tank32Time);
      //
      row.add(data[i].Tank33Volt);
      row.add(data[i].Tank33Amp);
      row.add(data[i].Tank33Temp);
      row.add(data[i].Tank33Rpm);
      row.add(data[i].Tank33Time);

      row.add(data[i].Tank34Volt);
      row.add(data[i].Tank34Amp);
      row.add(data[i].Tank34Temp);
      row.add(data[i].Tank34Rpm);
      row.add(data[i].Tank34Time);
      //
      row.add(data[i].Tank35Time);
      //
      row.add(data[i].Tank36Volt);
      row.add(data[i].Tank36Amp);
      row.add(data[i].Tank36Temp);
      row.add(data[i].Tank36Rpm);
      row.add(data[i].Tank36Time);

      row.add(data[i].Tank37Volt);
      row.add(data[i].Tank37Amp);
      row.add(data[i].Tank37Temp);
      row.add(data[i].Tank37Rpm);
      row.add(data[i].Tank37Time);
      //
      row.add(data[i].Tank38Time);
      row.add(data[i].Tank40Time);
      row.add(data[i].Tank41Time);
      row.add(data[i].Tank42Temp);
      row.add(data[i].Tank42Time);
      row.add(data[i].Tank43Time);
      row.add(data[i].Tank44Time);
      row.add(data[i].Tank45Time);
      //
    }

    rows.add(row);
  }
  String datetada = "${selectedDate.toLocal()}".split(' ')[0];
  String csv = const ListToCsvConverter().convert(rows);
  AnchorElement(href: "data:text/plain;charset=utf-8,$csv")
    ..setAttribute("download", "DATA ${ReportVAR_AUTOCU.selectedDate}.csv")
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
