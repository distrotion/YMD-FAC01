import 'dart:convert';
import 'dart:html';

import 'package:csv/csv.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

import '../../data/datadummy.dart';
import '../../data/global.dart';
import '../../data/model.dart';
import '../../data/test.dart';
import '../../page/02INDreport/INDreportMAIN.dart';
import '../../page/02INDreport/INDreportVAR.dart';
import '../../page/page2.dart';

//-------------------------------------------------

String server = GserverYMD;
//  INDreportVAR.selectedDate

abstract class CsvExport_Event {}

class CsvExportGetData extends CsvExport_Event {}

class CsvExportGetData_R extends CsvExport_Event {}

class CsvExport_Bloc extends Bloc<CsvExport_Event, List<YMDDATAmodel>> {
  CsvExport_Bloc() : super([]) {
    on<CsvExportGetData>((event, emit) {
      return _CsvExportGet_Function([], emit);
    });
    on<CsvExportGetData_R>((event, emit) {
      return _CsvExportGet_Function_R([], emit);
    });
  }
  Future<void> _CsvExportGet_Function(
      List<YMDDATAmodel> toAdd, Emitter<List<YMDDATAmodel>> emit) async {
    final response = await Dio().post(
      server + "selectedDate",
      data: {"date": INDreportVAR.selectedDate},
    );

    // final response = await http.post(Uri.parse(server + "getcsvdata"), body: {
    //   "date": selectedDate.toString()
    // }, headers: {
    //   "Accept": "application/json",
    //   "Access-Control_Allow_Origin": "*"
    // });

    List<YMDDATAmodel> output = [];

    if (response.statusCode == 200) {
      var databuff = jsonDecode(response.data);
      // var databuff = response.data;
      // var databuff = testdata;

      for (var i = 0; i < databuff.length; i++) {
        //
        output.add(YMDDATAmodel(
          NO: '${i + 1}',
          Item: _NullCheck(databuff[i]['ItemID']),
          PartNO: _NullCheck(databuff[i]['PartNumber']),
          PartName: _NullCheck(databuff[i]['PartName']),
          LoadingTime01: _NullCheck(databuff[i]['LoadingTime']),
          Degressing02Temp: _NullCheck(databuff[i]['State02tempPV']),
          Degressing02Time: _NullCheck(databuff[i]['State02timePV']),
          Degressing03Temp: _NullCheck(databuff[i]['State03tempPV']),
          Degressing03Time: _NullCheck(databuff[i]['State03timePV']),
          Shower04Temp: _NullCheck(databuff[i]['State04tempPV']),
          Shower04Time: _NullCheck(databuff[i]['State04timePV']),
          Degressing05Temp: _NullCheck(databuff[i]['State05tempPV']),
          Degressing05Time: _NullCheck(databuff[i]['State05timePV']),
          Degressing06Temp: _NullCheck(databuff[i]['State06tempPV']),
          Degressing06Time: _NullCheck(databuff[i]['State06timePV']),
          Degressing07Temp: _NullCheck(databuff[i]['State07tempPV']),
          Degressing07Time: _NullCheck(databuff[i]['State07timePV']),
          WaterRinse08Temp: _NullCheck(databuff[i]['State08tempPV']),
          WaterRinse08Time: _NullCheck(databuff[i]['State08timePV']),
          WaterRinse09Temp: _NullCheck(databuff[i]['State09tempPV']),
          WaterRinse09Time: _NullCheck(databuff[i]['State09timePV']),
          AcidWashing10Temp: _NullCheck(databuff[i]['State10tempPV']),
          AcidWashing10Time: _NullCheck(databuff[i]['State10timePV']),
          WaterRinse11Temp: _NullCheck(databuff[i]['State11tempPV']),
          WaterRinse11Time: _NullCheck(databuff[i]['State11timePV']),
          WaterRinse12Temp: _NullCheck(databuff[i]['State12tempPV']),
          WaterRinse12Time: _NullCheck(databuff[i]['State12timePV']),
          ElectrolyticAnodic13Volt: _NullCheck(databuff[i]['PartName']),
          ElectrolyticAnodic13Amp: _NullCheck(databuff[i]['PartName']),
          ElectrolyticAnodic13Temp: _NullCheck(databuff[i]['State13tempPV']),
          ElectrolyticAnodic13Rpm: _NullCheck(databuff[i]['PartName']),
          ElectrolyticAnodic13Time: _NullCheck(databuff[i]['State13timePV']),
          ElectrolyticCathod14Volt: _NullCheck(databuff[i]['PartName']),
          ElectrolyticCathod14Amp: _NullCheck(databuff[i]['PartName']),
          ElectrolyticCathod14Temp: _NullCheck(databuff[i]['State14tempPV']),
          ElectrolyticCathod14Rpm: _NullCheck(databuff[i]['PartName']),
          ElectrolyticCathod14Time: _NullCheck(databuff[i]['State14timePV']),
          WaterRinse15Temp: _NullCheck(databuff[i]['State15tempPV']),
          WaterRinse15Time: _NullCheck(databuff[i]['State15timePV']),
          WaterRinse16Temp: _NullCheck(databuff[i]['State16tempPV']),
          WaterRinse16Time: _NullCheck(databuff[i]['State16timePV']),
          Activetion17Temp: _NullCheck(databuff[i]['State17tempPV']),
          Activetion17Time: _NullCheck(databuff[i]['State17timePV']),
          WaterRinse18Temp: _NullCheck(databuff[i]['State18tempPV']),
          WaterRinse18Time: _NullCheck(databuff[i]['PartName']),
          CuCyanide19Volt: _NullCheck(databuff[i]['PartName']),
          CuCyanide19Amp: _NullCheck(databuff[i]['PartName']),
          CuCyanide19Temp: _NullCheck(databuff[i]['State19tempPV']),
          CuCyanide19Rpm: _NullCheck(databuff[i]['PartName']),
          CuCyanide19Time: _NullCheck(databuff[i]['State19timePV']),
          CuCyanide20Volt: _NullCheck(databuff[i]['PartName']),
          CuCyanide20Amp: _NullCheck(databuff[i]['PartName']),
          CuCyanide20Temp: _NullCheck(databuff[i]['State20tempPV']),
          CuCyanide20Rpm: _NullCheck(databuff[i]['PartName']),
          CuCyanide20Time: _NullCheck(databuff[i]['State20timePV']),
          WaterRinse21Temp: _NullCheck(databuff[i]['State21tempPV']),
          WaterRinse21Time: _NullCheck(databuff[i]['PartName']),
          WaterRinse22Temp: _NullCheck(databuff[i]['State22tempPV']),
          WaterRinse22Time: _NullCheck(databuff[i]['State22timePV']),
          ActivetionH2S042223Temp: _NullCheck(databuff[i]['State23tempPV']),
          ActivetionH2S04223Time: _NullCheck(databuff[i]['PartName']),
          CoperSulfate24Volt: _NullCheck(databuff[i]['PartName']),
          CoperSulfate24Amp: _NullCheck(databuff[i]['PartName']),
          CoperSulfate24Temp: _NullCheck(databuff[i]['State24tempPV']),
          CoperSulfate24Rpm: _NullCheck(databuff[i]['PartName']),
          CoperSulfate024Time: _NullCheck(databuff[i]['State24timePV']),
          WaterRinse25Temp: _NullCheck(databuff[i]['State25tempPV']),
          WaterRinse25Time: _NullCheck(databuff[i]['State25timePV']),
          SemiBrightNickel26Volt: _NullCheck(databuff[i]['PartName']),
          SemiBrightNickel26Amp: _NullCheck(databuff[i]['PartName']),
          SemiBrightNickel26Temp: _NullCheck(databuff[i]['State26tempPV']),
          SemiBrightNickel26Rpm: _NullCheck(databuff[i]['PartName']),
          SemiBrightNickel26Time: _NullCheck(databuff[i]['State26timePV']),
          SemiBrightNickel27Volt: _NullCheck(databuff[i]['PartName']),
          SemiBrightNickel27Amp: _NullCheck(databuff[i]['PartName']),
          SemiBrightNickel27Temp: _NullCheck(databuff[i]['State27tempPV']),
          SemiBrightNickel27Rpm: _NullCheck(databuff[i]['PartName']),
          SemiBrightNickel27Time: _NullCheck(databuff[i]['State27timePV']),
          SemiBrightNickel28Volt: _NullCheck(databuff[i]['PartName']),
          SemiBrightNickel28Amp: _NullCheck(databuff[i]['PartName']),
          SemiBrightNickel28Temp: _NullCheck(databuff[i]['State28tempPV']),
          SemiBrightNickel28Rpm: _NullCheck(databuff[i]['PartName']),
          SemiBrightNickel28Time: _NullCheck(databuff[i]['State28timePV']),
          WaterRinse29Temp: _NullCheck(databuff[i]['State29tempPV']),
          WaterRinse29Time: _NullCheck(databuff[i]['State29timePV']),
          DullSnPlating30Volt: _NullCheck(databuff[i]['PartName']),
          DullSnPlating30Amp: _NullCheck(databuff[i]['PartName']),
          DullSnPlating30Temp: _NullCheck(databuff[i]['State30tempPV']),
          DullSnPlating30Rpm: _NullCheck(databuff[i]['PartName']),
          DullSnPlating30Time: _NullCheck(databuff[i]['State30timePV']),
          DullSnPlating31Volt: _NullCheck(databuff[i]['PartName']),
          DullSnPlating31Amp: _NullCheck(databuff[i]['PartName']),
          DullSnPlating31Temp: _NullCheck(databuff[i]['State31tempPV']),
          DullSnPlating31Rpm: _NullCheck(databuff[i]['PartName']),
          DullSnPlating31Time: _NullCheck(databuff[i]['State31timePV']),
          DullSnPlating32Volt: _NullCheck(databuff[i]['PartName']),
          DullSnPlating32Amp: _NullCheck(databuff[i]['PartName']),
          DullSnPlating32Temp: _NullCheck(databuff[i]['State32tempPV']),
          DullSnPlating32Rpm: _NullCheck(databuff[i]['PartName']),
          DullSnPlating32Time: _NullCheck(databuff[i]['State32timePV']),
          DullSnPlating33Volt: _NullCheck(databuff[i]['PartName']),
          DullSnPlating33Amp: _NullCheck(databuff[i]['PartName']),
          DullSnPlating33Temp: _NullCheck(databuff[i]['State33tempPV']),
          DullSnPlating33Rpm: _NullCheck(databuff[i]['PartName']),
          DullSnPlating33Time: _NullCheck(databuff[i]['State33timePV']),
          WaterRinse34Temp: _NullCheck(databuff[i]['State34tempPV']),
          WaterRinse34Time: _NullCheck(databuff[i]['State34timePV']),
          BrightSnPlating35Volt: _NullCheck(databuff[i]['PartName']),
          BrightSnPlating35Amp: _NullCheck(databuff[i]['PartName']),
          BrightSnPlating35Temp: _NullCheck(databuff[i]['State35tempPV']),
          BrightSnPlating35Rpm: _NullCheck(databuff[i]['PartName']),
          BrightSnPlating35Time: _NullCheck(databuff[i]['State35timePV']),
          BrightSnPlating36Volt: _NullCheck(databuff[i]['PartName']),
          BrightSnPlating36Amp: _NullCheck(databuff[i]['PartName']),
          BrightSnPlating36Temp: _NullCheck(databuff[i]['State36tempPV']),
          BrightSnPlating36Rpm: _NullCheck(databuff[i]['PartName']),
          BrightSnPlating36Time: _NullCheck(databuff[i]['State36timePV']),
          WaterRinse37Temp: _NullCheck(databuff[i]['State37tempPV']),
          WaterRinse37Time: _NullCheck(databuff[i]['State37timePV']),
          Postrement38Temp: _NullCheck(databuff[i]['State38tempPV']),
          Postrement38Time: _NullCheck(databuff[i]['State38timePV']),
          Postrement39Temp: _NullCheck(databuff[i]['State39tempPV']),
          Postrement39Time: _NullCheck(databuff[i]['State39timePV']),
          HotWaterRinse40Temp: _NullCheck(databuff[i]['State40tempPV']),
          HotWaterRinse40Time: _NullCheck(databuff[i]['State40timePV']),
          HotWaterRinse41Temp: _NullCheck(databuff[i]['State41tempPV']),
          HotWaterRinse41Time: _NullCheck(databuff[i]['State41timePV']),
        ));
      }
    } else {
      print("NO SERVICE");
    }
    ExpCSV(output);
    emit(output);
  }

  Future<void> _CsvExportGet_Function_R(
      List<YMDDATAmodel> toAdd, Emitter<List<YMDDATAmodel>> emit) async {
    final response = await Dio().post(
      server + "selectedDate",
      data: {"date": INDreportVAR.selectedDate},
    );

    // final response = await http.post(Uri.parse(server + "getcsvdata"), body: {
    //   "date": selectedDate.toString()
    // }, headers: {
    //   "Accept": "application/json",
    //   "Access-Control_Allow_Origin": "*"
    // });

    List<YMDDATAmodel> output = [];

    if (response.statusCode == 200) {
      // var databuff = jsonDecode(response.data);
      var databuff = response.data;
      // var databuff = testdata;

      for (var i = 0; i < databuff.length; i++) {
        //
        output.add(YMDDATAmodel(
          NO: '${i + 1}',
          Item: _NullCheck(databuff[i]['ItemID']),
          PartNO: _NullCheck(databuff[i]['PartNumber']),
          PartName: _NullCheck(databuff[i]['PartName']),
          LoadingTime01: _NullCheck(databuff[i]['LoadingTime']),
          Degressing02Temp: _NullCheck(databuff[i]['State02tempPV']),
          Degressing02Time: _NullCheck(databuff[i]['State02timePV']),
          Degressing03Temp: _NullCheck(databuff[i]['State03tempPV']),
          Degressing03Time: _NullCheck(databuff[i]['State03timePV']),
          Shower04Temp: _NullCheck(databuff[i]['State04tempPV']),
          Shower04Time: _NullCheck(databuff[i]['State04timePV']),
          Degressing05Temp: _NullCheck(databuff[i]['State05tempPV']),
          Degressing05Time: _NullCheck(databuff[i]['State05timePV']),
          Degressing06Temp: _NullCheck(databuff[i]['State06tempPV']),
          Degressing06Time: _NullCheck(databuff[i]['State06timePV']),
          Degressing07Temp: _NullCheck(databuff[i]['State07tempPV']),
          Degressing07Time: _NullCheck(databuff[i]['State07timePV']),
          WaterRinse08Temp: _NullCheck(databuff[i]['State08tempPV']),
          WaterRinse08Time: _NullCheck(databuff[i]['State08timePV']),
          WaterRinse09Temp: _NullCheck(databuff[i]['State09tempPV']),
          WaterRinse09Time: _NullCheck(databuff[i]['State09timePV']),
          AcidWashing10Temp: _NullCheck(databuff[i]['State10tempPV']),
          AcidWashing10Time: _NullCheck(databuff[i]['State10timePV']),
          WaterRinse11Temp: _NullCheck(databuff[i]['State11tempPV']),
          WaterRinse11Time: _NullCheck(databuff[i]['State11timePV']),
          WaterRinse12Temp: _NullCheck(databuff[i]['State12tempPV']),
          WaterRinse12Time: _NullCheck(databuff[i]['State12timePV']),
          ElectrolyticAnodic13Volt: _NullCheck(databuff[i]['PartName']),
          ElectrolyticAnodic13Amp: _NullCheck(databuff[i]['PartName']),
          ElectrolyticAnodic13Temp: _NullCheck(databuff[i]['State13tempPV']),
          ElectrolyticAnodic13Rpm: _NullCheck(databuff[i]['PartName']),
          ElectrolyticAnodic13Time: _NullCheck(databuff[i]['State13timePV']),
          ElectrolyticCathod14Volt: _NullCheck(databuff[i]['PartName']),
          ElectrolyticCathod14Amp: _NullCheck(databuff[i]['PartName']),
          ElectrolyticCathod14Temp: _NullCheck(databuff[i]['State14tempPV']),
          ElectrolyticCathod14Rpm: _NullCheck(databuff[i]['PartName']),
          ElectrolyticCathod14Time: _NullCheck(databuff[i]['State14timePV']),
          WaterRinse15Temp: _NullCheck(databuff[i]['State15tempPV']),
          WaterRinse15Time: _NullCheck(databuff[i]['State15timePV']),
          WaterRinse16Temp: _NullCheck(databuff[i]['State16tempPV']),
          WaterRinse16Time: _NullCheck(databuff[i]['State16timePV']),
          Activetion17Temp: _NullCheck(databuff[i]['State17tempPV']),
          Activetion17Time: _NullCheck(databuff[i]['State17timePV']),
          WaterRinse18Temp: _NullCheck(databuff[i]['State18tempPV']),
          WaterRinse18Time: _NullCheck(databuff[i]['PartName']),
          CuCyanide19Volt: _NullCheck(databuff[i]['PartName']),
          CuCyanide19Amp: _NullCheck(databuff[i]['PartName']),
          CuCyanide19Temp: _NullCheck(databuff[i]['State19tempPV']),
          CuCyanide19Rpm: _NullCheck(databuff[i]['PartName']),
          CuCyanide19Time: _NullCheck(databuff[i]['State19timePV']),
          CuCyanide20Volt: _NullCheck(databuff[i]['PartName']),
          CuCyanide20Amp: _NullCheck(databuff[i]['PartName']),
          CuCyanide20Temp: _NullCheck(databuff[i]['State20tempPV']),
          CuCyanide20Rpm: _NullCheck(databuff[i]['PartName']),
          CuCyanide20Time: _NullCheck(databuff[i]['State20timePV']),
          WaterRinse21Temp: _NullCheck(databuff[i]['State21tempPV']),
          WaterRinse21Time: _NullCheck(databuff[i]['PartName']),
          WaterRinse22Temp: _NullCheck(databuff[i]['State22tempPV']),
          WaterRinse22Time: _NullCheck(databuff[i]['State22timePV']),
          ActivetionH2S042223Temp: _NullCheck(databuff[i]['State23tempPV']),
          ActivetionH2S04223Time: _NullCheck(databuff[i]['PartName']),
          CoperSulfate24Volt: _NullCheck(databuff[i]['PartName']),
          CoperSulfate24Amp: _NullCheck(databuff[i]['PartName']),
          CoperSulfate24Temp: _NullCheck(databuff[i]['State24tempPV']),
          CoperSulfate24Rpm: _NullCheck(databuff[i]['PartName']),
          CoperSulfate024Time: _NullCheck(databuff[i]['State24timePV']),
          WaterRinse25Temp: _NullCheck(databuff[i]['State25tempPV']),
          WaterRinse25Time: _NullCheck(databuff[i]['State25timePV']),
          SemiBrightNickel26Volt: _NullCheck(databuff[i]['PartName']),
          SemiBrightNickel26Amp: _NullCheck(databuff[i]['PartName']),
          SemiBrightNickel26Temp: _NullCheck(databuff[i]['State26tempPV']),
          SemiBrightNickel26Rpm: _NullCheck(databuff[i]['PartName']),
          SemiBrightNickel26Time: _NullCheck(databuff[i]['State26timePV']),
          SemiBrightNickel27Volt: _NullCheck(databuff[i]['PartName']),
          SemiBrightNickel27Amp: _NullCheck(databuff[i]['PartName']),
          SemiBrightNickel27Temp: _NullCheck(databuff[i]['State27tempPV']),
          SemiBrightNickel27Rpm: _NullCheck(databuff[i]['PartName']),
          SemiBrightNickel27Time: _NullCheck(databuff[i]['State27timePV']),
          SemiBrightNickel28Volt: _NullCheck(databuff[i]['PartName']),
          SemiBrightNickel28Amp: _NullCheck(databuff[i]['PartName']),
          SemiBrightNickel28Temp: _NullCheck(databuff[i]['State28tempPV']),
          SemiBrightNickel28Rpm: _NullCheck(databuff[i]['PartName']),
          SemiBrightNickel28Time: _NullCheck(databuff[i]['State28timePV']),
          WaterRinse29Temp: _NullCheck(databuff[i]['State29tempPV']),
          WaterRinse29Time: _NullCheck(databuff[i]['State29timePV']),
          DullSnPlating30Volt: _NullCheck(databuff[i]['PartName']),
          DullSnPlating30Amp: _NullCheck(databuff[i]['PartName']),
          DullSnPlating30Temp: _NullCheck(databuff[i]['State30tempPV']),
          DullSnPlating30Rpm: _NullCheck(databuff[i]['PartName']),
          DullSnPlating30Time: _NullCheck(databuff[i]['State30timePV']),
          DullSnPlating31Volt: _NullCheck(databuff[i]['PartName']),
          DullSnPlating31Amp: _NullCheck(databuff[i]['PartName']),
          DullSnPlating31Temp: _NullCheck(databuff[i]['State31tempPV']),
          DullSnPlating31Rpm: _NullCheck(databuff[i]['PartName']),
          DullSnPlating31Time: _NullCheck(databuff[i]['State31timePV']),
          DullSnPlating32Volt: _NullCheck(databuff[i]['PartName']),
          DullSnPlating32Amp: _NullCheck(databuff[i]['PartName']),
          DullSnPlating32Temp: _NullCheck(databuff[i]['State32tempPV']),
          DullSnPlating32Rpm: _NullCheck(databuff[i]['PartName']),
          DullSnPlating32Time: _NullCheck(databuff[i]['State32timePV']),
          DullSnPlating33Volt: _NullCheck(databuff[i]['PartName']),
          DullSnPlating33Amp: _NullCheck(databuff[i]['PartName']),
          DullSnPlating33Temp: _NullCheck(databuff[i]['State33tempPV']),
          DullSnPlating33Rpm: _NullCheck(databuff[i]['PartName']),
          DullSnPlating33Time: _NullCheck(databuff[i]['State33timePV']),
          WaterRinse34Temp: _NullCheck(databuff[i]['State34tempPV']),
          WaterRinse34Time: _NullCheck(databuff[i]['State34timePV']),
          BrightSnPlating35Volt: _NullCheck(databuff[i]['PartName']),
          BrightSnPlating35Amp: _NullCheck(databuff[i]['PartName']),
          BrightSnPlating35Temp: _NullCheck(databuff[i]['State35tempPV']),
          BrightSnPlating35Rpm: _NullCheck(databuff[i]['PartName']),
          BrightSnPlating35Time: _NullCheck(databuff[i]['State35timePV']),
          BrightSnPlating36Volt: _NullCheck(databuff[i]['PartName']),
          BrightSnPlating36Amp: _NullCheck(databuff[i]['PartName']),
          BrightSnPlating36Temp: _NullCheck(databuff[i]['State36tempPV']),
          BrightSnPlating36Rpm: _NullCheck(databuff[i]['PartName']),
          BrightSnPlating36Time: _NullCheck(databuff[i]['State36timePV']),
          WaterRinse37Temp: _NullCheck(databuff[i]['State37tempPV']),
          WaterRinse37Time: _NullCheck(databuff[i]['State37timePV']),
          Postrement38Temp: _NullCheck(databuff[i]['State38tempPV']),
          Postrement38Time: _NullCheck(databuff[i]['State38timePV']),
          Postrement39Temp: _NullCheck(databuff[i]['State39tempPV']),
          Postrement39Time: _NullCheck(databuff[i]['State39timePV']),
          HotWaterRinse40Temp: _NullCheck(databuff[i]['State40tempPV']),
          HotWaterRinse40Time: _NullCheck(databuff[i]['State40timePV']),
          HotWaterRinse41Temp: _NullCheck(databuff[i]['State41tempPV']),
          HotWaterRinse41Time: _NullCheck(databuff[i]['State41timePV']),
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

ExpCSV(List<YMDDATAmodel> data) {
  List<List<dynamic>> rows = [];

  for (int i = -1; i < data.length; i++) {
    List<dynamic> row = [];
    if (i == -1) {
      row.add('NO');
      row.add('Item');
      row.add('PartNO No');
      row.add('PartName');
      row.add('LoadingTime01');
      row.add('Degressing02Temp');
      row.add('Degressing02Time');
      row.add('Degressing03Temp');
      row.add('Degressing03Time');
      row.add('Shower04Temp');
      row.add('Shower04Time');
      row.add('Degressing05Temp');
      row.add('Degressing05Time');
      row.add('Degressing06Temp');
      row.add('Degressing06Time');
      row.add('Degressing07Temp');
      row.add('Degressing07Time');
      row.add('WaterRinse08Temp');
      row.add('WaterRinse08Time');
      row.add('WaterRinse09Temp');
      row.add('WaterRinse09Time');
      row.add('AcidWashing10Temp');
      row.add('AcidWashing10Time');
      row.add('WaterRinse11Temp');
      row.add('WaterRinse11Time');
      row.add('WaterRinse12Temp');
      row.add('WaterRinse12Time');
      row.add('ElectrolyticAnodic13Volt');
      row.add('ElectrolyticAnodic13Amp');
      row.add('ElectrolyticAnodic13Temp');
      row.add('ElectrolyticAnodic13Rpm');
      row.add('ElectrolyticAnodic13Time');
      row.add('ElectrolyticCathod14Volt');
      row.add('ElectrolyticCathod14Amp');
      row.add('ElectrolyticCathod14Temp');
      row.add('ElectrolyticCathod14Rpm');
      row.add('ElectrolyticCathod14Time');
      row.add('WaterRinse15Temp');
      row.add('WaterRinse15Time');
      row.add('WaterRinse16Temp');
      row.add('WaterRinse16Time');
      row.add('Activetion17Temp');
      row.add('Activetion17Time');
      row.add('WaterRinse18Temp');
      row.add('WaterRinse18Time');
      row.add('CuCyanide19Volt');
      row.add('CuCyanide19Amp');
      row.add('CuCyanide19Temp');
      row.add('CuCyanide19Rpm');
      row.add('CuCyanide19Time');
      row.add('CuCyanide20Volt');
      row.add('CuCyanide20Amp');
      row.add('CuCyanide20Temp');
      row.add('CuCyanide20Rpm');
      row.add('CuCyanide20Time');
      row.add('WaterRinse21Temp');
      row.add('WaterRinse21Time');
      row.add('WaterRinse22Temp');
      row.add('WaterRinse22Time');
      row.add('ActivetionH2S042223Temp');
      row.add('ActivetionH2S04223Time');
      row.add('CoperSulfate24Volt');
      row.add('CoperSulfate24Amp');
      row.add('CoperSulfate24Temp');
      row.add('CoperSulfate24Rpm');
      row.add('CoperSulfate24Time');
      row.add('WaterRinse25Temp');
      row.add('WaterRinse25Time');
      row.add('SemiBrightNickel26Volt');
      row.add('SemiBrightNickel26Amp');
      row.add('SemiBrightNickel26Temp');
      row.add('SemiBrightNickel26Rpm');
      row.add('SemiBrightNickel26Time');
      row.add('SemiBrightNickel27Volt');
      row.add('SemiBrightNickel27Amp');
      row.add('SemiBrightNickel27Temp');
      row.add('SemiBrightNickel27Rpm');
      row.add('SemiBrightNickel27Time');
      row.add('SemiBrightNickel28Volt');
      row.add('SemiBrightNickel28Amp');
      row.add('SemiBrightNickel28Temp');
      row.add('SemiBrightNickel28Rpm');
      row.add('SemiBrightNickel28Time');
      row.add('WaterRinse29Temp');
      row.add('WaterRinse29Time');
      row.add('DullSnPlating30Volt');
      row.add('DullSnPlating30Amp');
      row.add('DullSnPlating30Temp');
      row.add('DullSnPlating30Rpm');
      row.add('DullSnPlating30Time');
      row.add('DullSnPlating31Volt');
      row.add('DullSnPlating31Amp');
      row.add('DullSnPlating31Temp');
      row.add('DullSnPlating31Rpm');
      row.add('DullSnPlating31Time');
      row.add('DullSnPlating32Volt');
      row.add('DullSnPlating32Amp');
      row.add('DullSnPlating32Temp');
      row.add('DullSnPlating32Rpm');
      row.add('DullSnPlating32Time');

      row.add('DullSnPlating33Volt');
      row.add('DullSnPlating33Amp');
      row.add('DullSnPlating33Temp');
      row.add('DullSnPlating33Rpm');
      row.add('DullSnPlating33Time');
      row.add('WaterRinse34Temp');
      row.add('WaterRinse34Time');
      row.add('BrightSnPlating35Volt');
      row.add('BrightSnPlating35Amp');
      row.add('BrightSnPlating35Temp');
      row.add('BrightSnPlating35Rpm');
      row.add('BrightSnPlating35Time');
      row.add('BrightSnPlating36Volt');
      row.add('BrightSnPlating36Amp');
      row.add('BrightSnPlating36Temp');
      row.add('BrightSnPlating36Rpm');
      row.add('BrightSnPlating36Time');
      row.add('WaterRinse37Temp');
      row.add('WaterRinse37Time');
      row.add('Postrement38Temp');
      row.add('Postrement38Time');
      row.add('Postrement39Temp');
      row.add('Postrement39Time');
      row.add('HotWaterRinse40Temp');
      row.add('HotWaterRinse40Time');
      row.add('HotWaterRinse41Temp');
      row.add('HotWaterRinse41Time');
    } else {
      row.add(data[i].NO);
      row.add(data[i].Item);
      row.add(data[i].PartNO);
      row.add(data[i].PartName);
      row.add(data[i].LoadingTime01);
      row.add(data[i].Degressing02Temp);
      row.add(data[i].Degressing02Time);
      row.add(data[i].Degressing03Temp);
      row.add(data[i].Degressing03Time);
      row.add(data[i].Shower04Temp);
      row.add(data[i].Shower04Time);
      row.add(data[i].Degressing05Temp);
      row.add(data[i].Degressing05Time);
      row.add(data[i].Degressing06Temp);
      row.add(data[i].Degressing06Time);
      row.add(data[i].Degressing07Temp);
      row.add(data[i].Degressing07Time);
      row.add(data[i].WaterRinse08Temp);
      row.add(data[i].WaterRinse08Time);
      row.add(data[i].WaterRinse09Temp);
      row.add(data[i].WaterRinse09Time);
      row.add(data[i].AcidWashing10Temp);
      row.add(data[i].AcidWashing10Time);
      row.add(data[i].WaterRinse11Temp);
      row.add(data[i].WaterRinse11Time);
      row.add(data[i].WaterRinse12Temp);
      row.add(data[i].WaterRinse12Time);

      row.add(data[i].ElectrolyticAnodic13Volt);
      row.add(data[i].ElectrolyticAnodic13Amp);
      row.add(data[i].ElectrolyticAnodic13Temp);
      row.add(data[i].ElectrolyticAnodic13Rpm);
      row.add(data[i].ElectrolyticAnodic13Time);
      row.add(data[i].ElectrolyticCathod14Volt);
      row.add(data[i].ElectrolyticCathod14Amp);
      row.add(data[i].ElectrolyticCathod14Temp);
      row.add(data[i].ElectrolyticCathod14Rpm);
      row.add(data[i].ElectrolyticCathod14Time);
      row.add(data[i].WaterRinse15Temp);
      row.add(data[i].WaterRinse15Time);
      row.add(data[i].WaterRinse16Temp);
      row.add(data[i].WaterRinse16Time);
      row.add(data[i].Activetion17Temp);
      row.add(data[i].Activetion17Time);
      row.add(data[i].WaterRinse18Temp);
      row.add(data[i].WaterRinse18Time);
      row.add(data[i].CuCyanide19Volt);
      row.add(data[i].CuCyanide19Amp);

      row.add(data[i].CuCyanide19Temp);
      row.add(data[i].CuCyanide19Rpm);
      row.add(data[i].CuCyanide19Time);
      row.add(data[i].CuCyanide20Volt);
      row.add(data[i].CuCyanide20Amp);
      row.add(data[i].CuCyanide20Temp);
      row.add(data[i].CuCyanide20Rpm);
      row.add(data[i].CuCyanide20Time);
      row.add(data[i].WaterRinse21Temp);
      row.add(data[i].WaterRinse21Time);
      row.add(data[i].WaterRinse22Temp);
      row.add(data[i].WaterRinse22Time);
      row.add(data[i].ActivetionH2S042223Temp);
      row.add(data[i].ActivetionH2S04223Time);
      row.add(data[i].CoperSulfate24Volt);
      row.add(data[i].CoperSulfate24Amp);
      row.add(data[i].CoperSulfate24Temp);
      row.add(data[i].CoperSulfate24Rpm);
      row.add(data[i].CoperSulfate024Time);
      row.add(data[i].WaterRinse25Temp);

      row.add(data[i].WaterRinse25Time);
      row.add(data[i].SemiBrightNickel26Volt);
      row.add(data[i].SemiBrightNickel26Amp);
      row.add(data[i].SemiBrightNickel26Temp);
      row.add(data[i].SemiBrightNickel26Rpm);
      row.add(data[i].SemiBrightNickel26Time);
      row.add(data[i].SemiBrightNickel27Volt);
      row.add(data[i].SemiBrightNickel27Amp);
      row.add(data[i].SemiBrightNickel27Temp);
      row.add(data[i].SemiBrightNickel27Rpm);
      row.add(data[i].SemiBrightNickel27Time);
      row.add(data[i].SemiBrightNickel28Volt);
      row.add(data[i].SemiBrightNickel28Amp);
      row.add(data[i].SemiBrightNickel28Temp);
      row.add(data[i].SemiBrightNickel28Rpm);
      row.add(data[i].SemiBrightNickel28Time);
      row.add(data[i].WaterRinse29Temp);
      row.add(data[i].WaterRinse29Time);
      row.add(data[i].DullSnPlating30Volt);
      row.add(data[i].DullSnPlating30Amp);

      row.add(data[i].DullSnPlating30Temp);
      row.add(data[i].DullSnPlating30Rpm);
      row.add(data[i].DullSnPlating30Time);
      row.add(data[i].DullSnPlating31Volt);
      row.add(data[i].DullSnPlating31Amp);
      row.add(data[i].DullSnPlating31Temp);
      row.add(data[i].DullSnPlating31Rpm);
      row.add(data[i].DullSnPlating31Time);
      row.add(data[i].DullSnPlating32Volt);
      row.add(data[i].DullSnPlating32Amp);
      row.add(data[i].DullSnPlating32Temp);
      row.add(data[i].DullSnPlating32Rpm);
      row.add(data[i].DullSnPlating32Time);
      row.add(data[i].DullSnPlating33Volt);
      row.add(data[i].DullSnPlating33Amp);
      row.add(data[i].DullSnPlating33Temp);
      row.add(data[i].DullSnPlating33Rpm);
      row.add(data[i].DullSnPlating33Time);
      row.add(data[i].WaterRinse34Temp);
      row.add(data[i].WaterRinse34Time);

      row.add(data[i].BrightSnPlating35Volt);
      row.add(data[i].BrightSnPlating35Amp);
      row.add(data[i].BrightSnPlating35Temp);
      row.add(data[i].BrightSnPlating35Rpm);
      row.add(data[i].BrightSnPlating35Time);
      row.add(data[i].BrightSnPlating36Volt);
      row.add(data[i].BrightSnPlating36Amp);
      row.add(data[i].BrightSnPlating36Temp);
      row.add(data[i].BrightSnPlating36Rpm);
      row.add(data[i].BrightSnPlating36Time);
      row.add(data[i].WaterRinse37Temp);
      row.add(data[i].WaterRinse37Time);
      row.add(data[i].Postrement38Temp);
      row.add(data[i].Postrement38Time);
      row.add(data[i].Postrement39Temp);
      row.add(data[i].Postrement39Time);
      row.add(data[i].HotWaterRinse40Temp);
      row.add(data[i].HotWaterRinse40Time);
      row.add(data[i].HotWaterRinse41Temp);
      row.add(data[i].HotWaterRinse41Time);
    }

    rows.add(row);
  }
  String datetada = "${selectedDate.toLocal()}".split(' ')[0];
  String csv = const ListToCsvConverter().convert(rows);
  AnchorElement(href: "data:text/plain;charset=utf-8,$csv")
    ..setAttribute("download", "DATA ${INDreportVAR.selectedDate}.csv")
    ..click();
}
