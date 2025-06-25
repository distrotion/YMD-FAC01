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

import '../../page/08Report_AUTOGAMA/ReportVAR_AUTOSN.dart';
import '../../page/page2.dart';

//-------------------------------------------------

String server = GserverYMD1;
//  INDreportGAMAVAR.selectedDate

abstract class CsvExport_AUTOGAMA_Event {}

class CsvExport_AUTOGAMAGetData extends CsvExport_AUTOGAMA_Event {}

class CsvExport_AUTOGAMAGetData_R extends CsvExport_AUTOGAMA_Event {}

class CsvExport_AUTOGAMA_Bloc
    extends Bloc<CsvExport_AUTOGAMA_Event, List<YMDDATAMASTERmodel2>> {
  CsvExport_AUTOGAMA_Bloc() : super([]) {
    on<CsvExport_AUTOGAMAGetData>((event, emit) {
      return _CsvExport_AUTOGAMAGet_Function([], emit);
    });
    on<CsvExport_AUTOGAMAGetData_R>((event, emit) {
      return _CsvExport_AUTOGAMAGet_Function_R([], emit);
    });
  }
  Future<void> _CsvExport_AUTOGAMAGet_Function(List<YMDDATAMASTERmodel2> toAdd,
      Emitter<List<YMDDATAMASTERmodel2>> emit) async {
    final response = await Dio().post(
      server + "selectedDate_AUTOGAMA",
      data: {"date": INDreportGAMAVAR.selectedDate},
    );

    // final response = await http.post(Uri.parse(server + "getcsvdata"), body: {
    //   "date": selectedDate.toString()
    // }, headers: {
    //   "Accept": "application/json",
    //   "Access-Control_Allow_Origin": "*"
    // });

    List<YMDDATAMASTERmodel2> output = [];
    // if (true) {
    if (response.statusCode == 200) {
      var databuff = response.data;
      // var databuff = testdata;

      for (var i = 0; i < databuff.length; i++) {
        //
        output.add(YMDDATAMASTERmodel2(
          NO: '${i + 1}',
          Item: _NullCheck(databuff[i]['ItemID']),
          ItemNO: _NullCheck(databuff[i]['ItemNO']),
          PartNO: _NullCheck(databuff[i]['PartNumber']),
          PartName: _NullCheck(databuff[i]['PartName']),
          QTY: _NullCheck(databuff[i]['QTY']),
          LoadingTime01: _daycon(_NullCheck(databuff[i]['LoadingTime'])),
          TANK01Temp: (_NullCheck(databuff[i]['State01tempPV'])),
          TANK01Time: (_NullCheck(databuff[i]['State01timePV'])),
          TANK01Volt: (_NullCheck(databuff[i]['State01voltPV'])),
          TANK01Amp: (_NullCheck(databuff[i]['State01amPV'])),
          TANK01Rpm: (_NullCheck(databuff[i]['State01rpmPV'])),
          TANK02Temp: (_NullCheck(databuff[i]['State02tempPV'])),
          TANK02Time: (_NullCheck(databuff[i]['State02timePV'])),
          TANK02Volt: (_NullCheck(databuff[i]['State02voltPV'])),
          TANK02Amp: (_NullCheck(databuff[i]['State02amPV'])),
          TANK02Rpm: (_NullCheck(databuff[i]['State02rpmPV'])),
          TANK03Temp: (_NullCheck(databuff[i]['State03tempPV'])),
          TANK03Time: (_NullCheck(databuff[i]['State03timePV'])),
          TANK03Volt: (_NullCheck(databuff[i]['State03voltPV'])),
          TANK03Amp: (_NullCheck(databuff[i]['State03amPV'])),
          TANK03Rpm: (_NullCheck(databuff[i]['State03rpmPV'])),
          TANK04Temp: (_NullCheck(databuff[i]['State04tempPV'])),
          TANK04Time: (_NullCheck(databuff[i]['State04timePV'])),
          TANK04Volt: (_NullCheck(databuff[i]['State04voltPV'])),
          TANK04Amp: (_NullCheck(databuff[i]['State04amPV'])),
          TANK04Rpm: (_NullCheck(databuff[i]['State04rpmPV'])),
          TANK05Temp: (_NullCheck(databuff[i]['State05tempPV'])),
          TANK05Time: (_NullCheck(databuff[i]['State05timePV'])),
          TANK05Volt: (_NullCheck(databuff[i]['State05voltPV'])),
          TANK05Amp: (_NullCheck(databuff[i]['State05amPV'])),
          TANK05Rpm: (_NullCheck(databuff[i]['State05rpmPV'])),
          TANK06Temp: (_NullCheck(databuff[i]['State06tempPV'])),
          TANK06Time: (_NullCheck(databuff[i]['State06timePV'])),
          TANK06Volt: (_NullCheck(databuff[i]['State06voltPV'])),
          TANK06Amp: (_NullCheck(databuff[i]['State06amPV'])),
          TANK06Rpm: (_NullCheck(databuff[i]['State06rpmPV'])),
          TANK07Temp: (_NullCheck(databuff[i]['State07tempPV'])),
          TANK07Time: (_NullCheck(databuff[i]['State07timePV'])),
          TANK07Volt: (_NullCheck(databuff[i]['State07voltPV'])),
          TANK07Amp: (_NullCheck(databuff[i]['State07amPV'])),
          TANK07Rpm: (_NullCheck(databuff[i]['State07rpmPV'])),
          TANK08Temp: (_NullCheck(databuff[i]['State08tempPV'])),
          TANK08Time: (_NullCheck(databuff[i]['State08timePV'])),
          TANK08Volt: (_NullCheck(databuff[i]['State08voltPV'])),
          TANK08Amp: (_NullCheck(databuff[i]['State08amPV'])),
          TANK08Rpm: (_NullCheck(databuff[i]['State08rpmPV'])),
          TANK09Temp: (_NullCheck(databuff[i]['State09tempPV'])),
          TANK09Time: (_NullCheck(databuff[i]['State09timePV'])),
          TANK09Volt: (_NullCheck(databuff[i]['State09voltPV'])),
          TANK09Amp: (_NullCheck(databuff[i]['State09amPV'])),
          TANK09Rpm: (_NullCheck(databuff[i]['State09rpmPV'])),
          TANK10Temp: (_NullCheck(databuff[i]['State10tempPV'])),
          TANK10Time: (_NullCheck(databuff[i]['State10timePV'])),
          TANK10Volt: (_NullCheck(databuff[i]['State10voltPV'])),
          TANK10Amp: (_NullCheck(databuff[i]['State10amPV'])),
          TANK10Rpm: (_NullCheck(databuff[i]['State10rpmPV'])),
          TANK11Temp: (_NullCheck(databuff[i]['State11tempPV'])),
          TANK11Time: (_NullCheck(databuff[i]['State11timePV'])),
          TANK11Volt: (_NullCheck(databuff[i]['State11voltPV'])),
          TANK11Amp: (_NullCheck(databuff[i]['State11amPV'])),
          TANK11Rpm: (_NullCheck(databuff[i]['State11rpmPV'])),
          TANK12Temp: (_NullCheck(databuff[i]['State12tempPV'])),
          TANK12Time: (_NullCheck(databuff[i]['State12timePV'])),
          TANK12Volt: (_NullCheck(databuff[i]['State12voltPV'])),
          TANK12Amp: (_NullCheck(databuff[i]['State12amPV'])),
          TANK12Rpm: (_NullCheck(databuff[i]['State12rpmPV'])),
          TANK13Temp: (_NullCheck(databuff[i]['State13tempPV'])),
          TANK13Time: (_NullCheck(databuff[i]['State13timePV'])),
          TANK13Volt: (_NullCheck(databuff[i]['State13voltPV'])),
          TANK13Amp: (_NullCheck(databuff[i]['State13amPV'])),
          TANK13Rpm: (_NullCheck(databuff[i]['State13rpmPV'])),
          TANK14Temp: (_NullCheck(databuff[i]['State14tempPV'])),
          TANK14Time: (_NullCheck(databuff[i]['State14timePV'])),
          TANK14Volt: (_NullCheck(databuff[i]['State14voltPV'])),
          TANK14Amp: (_NullCheck(databuff[i]['State14amPV'])),
          TANK14Rpm: (_NullCheck(databuff[i]['State14rpmPV'])),
          TANK15Temp: (_NullCheck(databuff[i]['State15tempPV'])),
          TANK15Time: (_NullCheck(databuff[i]['State15timePV'])),
          TANK15Volt: (_NullCheck(databuff[i]['State15voltPV'])),
          TANK15Amp: (_NullCheck(databuff[i]['State15amPV'])),
          TANK15Rpm: (_NullCheck(databuff[i]['State15rpmPV'])),
          TANK16Temp: (_NullCheck(databuff[i]['State16tempPV'])),
          TANK16Time: (_NullCheck(databuff[i]['State16timePV'])),
          TANK16Volt: (_NullCheck(databuff[i]['State16voltPV'])),
          TANK16Amp: (_NullCheck(databuff[i]['State16amPV'])),
          TANK16Rpm: (_NullCheck(databuff[i]['State16rpmPV'])),
          TANK17Temp: (_NullCheck(databuff[i]['State17tempPV'])),
          TANK17Time: (_NullCheck(databuff[i]['State17timePV'])),
          TANK17Volt: (_NullCheck(databuff[i]['State17voltPV'])),
          TANK17Amp: (_NullCheck(databuff[i]['State17amPV'])),
          TANK17Rpm: (_NullCheck(databuff[i]['State17rpmPV'])),
          TANK18Temp: (_NullCheck(databuff[i]['State18tempPV'])),
          TANK18Time: (_NullCheck(databuff[i]['State18timePV'])),
          TANK18Volt: (_NullCheck(databuff[i]['State18voltPV'])),
          TANK18Amp: (_NullCheck(databuff[i]['State18amPV'])),
          TANK18Rpm: (_NullCheck(databuff[i]['State18rpmPV'])),
          TANK19Temp: (_NullCheck(databuff[i]['State19tempPV'])),
          TANK19Time: (_NullCheck(databuff[i]['State19timePV'])),
          TANK19Volt: (_NullCheck(databuff[i]['State19voltPV'])),
          TANK19Amp: (_NullCheck(databuff[i]['State19amPV'])),
          TANK19Rpm: (_NullCheck(databuff[i]['State19rpmPV'])),
          TANK20Temp: (_NullCheck(databuff[i]['State20tempPV'])),
          TANK20Time: (_NullCheck(databuff[i]['State20timePV'])),
          TANK20Volt: (_NullCheck(databuff[i]['State20voltPV'])),
          TANK20Amp: (_NullCheck(databuff[i]['State20amPV'])),
          TANK20Rpm: (_NullCheck(databuff[i]['State20rpmPV'])),
          TANK21Temp: (_NullCheck(databuff[i]['State21tempPV'])),
          TANK21Time: (_NullCheck(databuff[i]['State21timePV'])),
          TANK21Volt: (_NullCheck(databuff[i]['State21voltPV'])),
          TANK21Amp: (_NullCheck(databuff[i]['State21amPV'])),
          TANK21Rpm: (_NullCheck(databuff[i]['State21rpmPV'])),
          TANK22Temp: (_NullCheck(databuff[i]['State22tempPV'])),
          TANK22Time: (_NullCheck(databuff[i]['State22timePV'])),
          TANK22Volt: (_NullCheck(databuff[i]['State22voltPV'])),
          TANK22Amp: (_NullCheck(databuff[i]['State22amPV'])),
          TANK22Rpm: (_NullCheck(databuff[i]['State22rpmPV'])),
          TANK23Temp: (_NullCheck(databuff[i]['State23tempPV'])),
          TANK23Time: (_NullCheck(databuff[i]['State23timePV'])),
          TANK23Volt: (_NullCheck(databuff[i]['State23voltPV'])),
          TANK23Amp: (_NullCheck(databuff[i]['State23amPV'])),
          TANK23Rpm: (_NullCheck(databuff[i]['State23rpmPV'])),
          TANK24Temp: (_NullCheck(databuff[i]['State24tempPV'])),
          TANK24Time: (_NullCheck(databuff[i]['State24timePV'])),
          TANK24Volt: (_NullCheck(databuff[i]['State24voltPV'])),
          TANK24Amp: (_NullCheck(databuff[i]['State24amPV'])),
          TANK24Rpm: (_NullCheck(databuff[i]['State24rpmPV'])),
          TANK25Temp: (_NullCheck(databuff[i]['State25tempPV'])),
          TANK25Time: (_NullCheck(databuff[i]['State25timePV'])),
          TANK25Volt: (_NullCheck(databuff[i]['State25voltPV'])),
          TANK25Amp: (_NullCheck(databuff[i]['State25amPV'])),
          TANK25Rpm: (_NullCheck(databuff[i]['State25rpmPV'])),
          TANK26Temp: (_NullCheck(databuff[i]['State26tempPV'])),
          TANK26Time: (_NullCheck(databuff[i]['State26timePV'])),
          TANK26Volt: (_NullCheck(databuff[i]['State26voltPV'])),
          TANK26Amp: (_NullCheck(databuff[i]['State26amPV'])),
          TANK26Rpm: (_NullCheck(databuff[i]['State26rpmPV'])),
          TANK27Temp: (_NullCheck(databuff[i]['State27tempPV'])),
          TANK27Time: (_NullCheck(databuff[i]['State27timePV'])),
          TANK27Volt: (_NullCheck(databuff[i]['State27voltPV'])),
          TANK27Amp: (_NullCheck(databuff[i]['State27amPV'])),
          TANK27Rpm: (_NullCheck(databuff[i]['State27rpmPV'])),
          TANK28Temp: (_NullCheck(databuff[i]['State28tempPV'])),
          TANK28Time: (_NullCheck(databuff[i]['State28timePV'])),
          TANK28Volt: (_NullCheck(databuff[i]['State28voltPV'])),
          TANK28Amp: (_NullCheck(databuff[i]['State28amPV'])),
          TANK28Rpm: (_NullCheck(databuff[i]['State28rpmPV'])),
          TANK29Temp: (_NullCheck(databuff[i]['State29tempPV'])),
          TANK29Time: (_NullCheck(databuff[i]['State29timePV'])),
          TANK29Volt: (_NullCheck(databuff[i]['State29voltPV'])),
          TANK29Amp: (_NullCheck(databuff[i]['State29amPV'])),
          TANK29Rpm: (_NullCheck(databuff[i]['State29rpmPV'])),
          TANK30Temp: (_NullCheck(databuff[i]['State30tempPV'])),
          TANK30Time: (_NullCheck(databuff[i]['State30timePV'])),
          TANK30Volt: (_NullCheck(databuff[i]['State30voltPV'])),
          TANK30Amp: (_NullCheck(databuff[i]['State30amPV'])),
          TANK30Rpm: (_NullCheck(databuff[i]['State30rpmPV'])),
          TANK31Temp: (_NullCheck(databuff[i]['State31tempPV'])),
          TANK31Time: (_NullCheck(databuff[i]['State31timePV'])),
          TANK31Volt: (_NullCheck(databuff[i]['State31voltPV'])),
          TANK31Amp: (_NullCheck(databuff[i]['State31amPV'])),
          TANK31Rpm: (_NullCheck(databuff[i]['State31rpmPV'])),
          TANK32Temp: (_NullCheck(databuff[i]['State32tempPV'])),
          TANK32Time: (_NullCheck(databuff[i]['State32timePV'])),
          TANK32Volt: (_NullCheck(databuff[i]['State32voltPV'])),
          TANK32Amp: (_NullCheck(databuff[i]['State32amPV'])),
          TANK32Rpm: (_NullCheck(databuff[i]['State32rpmPV'])),
          TANK33Temp: (_NullCheck(databuff[i]['State33tempPV'])),
          TANK33Time: (_NullCheck(databuff[i]['State33timePV'])),
          TANK33Volt: (_NullCheck(databuff[i]['State33voltPV'])),
          TANK33Amp: (_NullCheck(databuff[i]['State33amPV'])),
          TANK33Rpm: (_NullCheck(databuff[i]['State33rpmPV'])),
          TANK34Temp: (_NullCheck(databuff[i]['State34tempPV'])),
          TANK34Time: (_NullCheck(databuff[i]['State34timePV'])),
          TANK34Volt: (_NullCheck(databuff[i]['State34voltPV'])),
          TANK34Amp: (_NullCheck(databuff[i]['State34amPV'])),
          TANK34Rpm: (_NullCheck(databuff[i]['State34rpmPV'])),
          TANK35Temp: (_NullCheck(databuff[i]['State35tempPV'])),
          TANK35Time: (_NullCheck(databuff[i]['State35timePV'])),
          TANK35Volt: (_NullCheck(databuff[i]['State35voltPV'])),
          TANK35Amp: (_NullCheck(databuff[i]['State35amPV'])),
          TANK35Rpm: (_NullCheck(databuff[i]['State35rpmPV'])),
          TANK36Temp: (_NullCheck(databuff[i]['State36tempPV'])),
          TANK36Time: (_NullCheck(databuff[i]['State36timePV'])),
          TANK36Volt: (_NullCheck(databuff[i]['State36voltPV'])),
          TANK36Amp: (_NullCheck(databuff[i]['State36amPV'])),
          TANK36Rpm: (_NullCheck(databuff[i]['State36rpmPV'])),
          TANK37Temp: (_NullCheck(databuff[i]['State37tempPV'])),
          TANK37Time: (_NullCheck(databuff[i]['State37timePV'])),
          TANK37Volt: (_NullCheck(databuff[i]['State37voltPV'])),
          TANK37Amp: (_NullCheck(databuff[i]['State37amPV'])),
          TANK37Rpm: (_NullCheck(databuff[i]['State37rpmPV'])),
          TANK38Temp: (_NullCheck(databuff[i]['State38tempPV'])),
          TANK38Time: (_NullCheck(databuff[i]['State38timePV'])),
          TANK38Volt: (_NullCheck(databuff[i]['State38voltPV'])),
          TANK38Amp: (_NullCheck(databuff[i]['State38amPV'])),
          TANK38Rpm: (_NullCheck(databuff[i]['State38rpmPV'])),
          TANK39Temp: (_NullCheck(databuff[i]['State39tempPV'])),
          TANK39Time: (_NullCheck(databuff[i]['State39timePV'])),
          TANK39Volt: (_NullCheck(databuff[i]['State39voltPV'])),
          TANK39Amp: (_NullCheck(databuff[i]['State39amPV'])),
          TANK39Rpm: (_NullCheck(databuff[i]['State39rpmPV'])),
          TANK40Temp: (_NullCheck(databuff[i]['State40tempPV'])),
          TANK40Time: (_NullCheck(databuff[i]['State40timePV'])),
          TANK40Volt: (_NullCheck(databuff[i]['State40voltPV'])),
          TANK40Amp: (_NullCheck(databuff[i]['State40amPV'])),
          TANK40Rpm: (_NullCheck(databuff[i]['State40rpmPV'])),
          TANK41Temp: (_NullCheck(databuff[i]['State41tempPV'])),
          TANK41Time: (_NullCheck(databuff[i]['State41timePV'])),
          TANK41Volt: (_NullCheck(databuff[i]['State41voltPV'])),
          TANK41Amp: (_NullCheck(databuff[i]['State41amPV'])),
          TANK41Rpm: (_NullCheck(databuff[i]['State41rpmPV'])),
          TANK42Temp: (_NullCheck(databuff[i]['State42tempPV'])),
          TANK42Time: (_NullCheck(databuff[i]['State42timePV'])),
          TANK42Volt: (_NullCheck(databuff[i]['State42voltPV'])),
          TANK42Amp: (_NullCheck(databuff[i]['State42amPV'])),
          TANK42Rpm: (_NullCheck(databuff[i]['State42rpmPV'])),
          TANK43Temp: (_NullCheck(databuff[i]['State43tempPV'])),
          TANK43Time: (_NullCheck(databuff[i]['State43timePV'])),
          TANK43Volt: (_NullCheck(databuff[i]['State43voltPV'])),
          TANK43Amp: (_NullCheck(databuff[i]['State43amPV'])),
          TANK43Rpm: (_NullCheck(databuff[i]['State43rpmPV'])),
          TANK44Temp: (_NullCheck(databuff[i]['State44tempPV'])),
          TANK44Time: (_NullCheck(databuff[i]['State44timePV'])),
          TANK44Volt: (_NullCheck(databuff[i]['State44voltPV'])),
          TANK44Amp: (_NullCheck(databuff[i]['State44amPV'])),
          TANK44Rpm: (_NullCheck(databuff[i]['State44rpmPV'])),
          TANK45Temp: (_NullCheck(databuff[i]['State45tempPV'])),
          TANK45Time: (_NullCheck(databuff[i]['State45timePV'])),
          TANK45Volt: (_NullCheck(databuff[i]['State45voltPV'])),
          TANK45Amp: (_NullCheck(databuff[i]['State45amPV'])),
          TANK45Rpm: (_NullCheck(databuff[i]['State45rpmPV'])),
          TANK46Temp: "",
          TANK46Time: "",
          TANK46Volt: "",
          TANK46Amp: "",
          TANK46Rpm: "",
          TANK47Temp: "",
          TANK47Time: "",
          TANK47Volt: "",
          TANK47Amp: "",
          TANK47Rpm: "",
          TANK48Temp: "",
          TANK48Time: "",
          TANK48Volt: "",
          TANK48Amp: "",
          TANK48Rpm: "",
          TANK49Temp: "",
          TANK49Time: "",
          TANK49Volt: "",
          TANK49Amp: "",
          TANK49Rpm: "",
          TANK50Temp: "",
          TANK50Time: "",
          TANK50Volt: "",
          TANK50Amp: "",
          TANK50Rpm: "",
        ));
      }
    } else {
      print("NO SERVICE");
    }
    ExpCSV(output);
    emit(output);
  }

  Future<void> _CsvExport_AUTOGAMAGet_Function_R(
      List<YMDDATAMASTERmodel2> toAdd,
      Emitter<List<YMDDATAMASTERmodel2>> emit) async {
    final response = await Dio().post(
      server + "selectedDate_AUTOGAMA",
      data: {"date": INDreportGAMAVAR.selectedDate},
    );

    // final response = await http.post(Uri.parse(server + "getcsvdata"), body: {
    //   "date": selectedDate.toString()
    // }, headers: {
    //   "Accept": "application/json",
    //   "Access-Control_Allow_Origin": "*"
    // });

    List<YMDDATAMASTERmodel2> output = [];

    if (response.statusCode == 200) {
      // if (true) {
      var databuff = response.data;
      // var databuff = testdata;

      for (var i = 0; i < databuff.length; i++) {
        //
        output.add(YMDDATAMASTERmodel2(
          NO: '${i + 1}',
          Item: _NullCheck(databuff[i]['ItemID']),
          ItemNO: _NullCheck(databuff[i]['ItemNO']),
          PartNO: _NullCheck(databuff[i]['PartNumber']),
          PartName: _NullCheck(databuff[i]['PartName']),
          QTY: _NullCheck(databuff[i]['QTY']),
          LoadingTime01: _daycon(_NullCheck(databuff[i]['LoadingTime'])),
          TANK01Temp: (_NullCheck(databuff[i]['State01tempPV'])),
          TANK01Time: (_NullCheck(databuff[i]['State01timePV'])),
          TANK01Volt: (_NullCheck(databuff[i]['State01voltPV'])),
          TANK01Amp: (_NullCheck(databuff[i]['State01amPV'])),
          TANK01Rpm: (_NullCheck(databuff[i]['State01rpmPV'])),
          TANK02Temp: (_NullCheck(databuff[i]['State02tempPV'])),
          TANK02Time: (_NullCheck(databuff[i]['State02timePV'])),
          TANK02Volt: (_NullCheck(databuff[i]['State02voltPV'])),
          TANK02Amp: (_NullCheck(databuff[i]['State02amPV'])),
          TANK02Rpm: (_NullCheck(databuff[i]['State02rpmPV'])),
          TANK03Temp: (_NullCheck(databuff[i]['State03tempPV'])),
          TANK03Time: (_NullCheck(databuff[i]['State03timePV'])),
          TANK03Volt: (_NullCheck(databuff[i]['State03voltPV'])),
          TANK03Amp: (_NullCheck(databuff[i]['State03amPV'])),
          TANK03Rpm: (_NullCheck(databuff[i]['State03rpmPV'])),
          TANK04Temp: (_NullCheck(databuff[i]['State04tempPV'])),
          TANK04Time: (_NullCheck(databuff[i]['State04timePV'])),
          TANK04Volt: (_NullCheck(databuff[i]['State04voltPV'])),
          TANK04Amp: (_NullCheck(databuff[i]['State04amPV'])),
          TANK04Rpm: (_NullCheck(databuff[i]['State04rpmPV'])),
          TANK05Temp: (_NullCheck(databuff[i]['State05tempPV'])),
          TANK05Time: (_NullCheck(databuff[i]['State05timePV'])),
          TANK05Volt: (_NullCheck(databuff[i]['State05voltPV'])),
          TANK05Amp: (_NullCheck(databuff[i]['State05amPV'])),
          TANK05Rpm: (_NullCheck(databuff[i]['State05rpmPV'])),
          TANK06Temp: (_NullCheck(databuff[i]['State06tempPV'])),
          TANK06Time: (_NullCheck(databuff[i]['State06timePV'])),
          TANK06Volt: (_NullCheck(databuff[i]['State06voltPV'])),
          TANK06Amp: (_NullCheck(databuff[i]['State06amPV'])),
          TANK06Rpm: (_NullCheck(databuff[i]['State06rpmPV'])),
          TANK07Temp: (_NullCheck(databuff[i]['State07tempPV'])),
          TANK07Time: (_NullCheck(databuff[i]['State07timePV'])),
          TANK07Volt: (_NullCheck(databuff[i]['State07voltPV'])),
          TANK07Amp: (_NullCheck(databuff[i]['State07amPV'])),
          TANK07Rpm: (_NullCheck(databuff[i]['State07rpmPV'])),
          TANK08Temp: (_NullCheck(databuff[i]['State08tempPV'])),
          TANK08Time: (_NullCheck(databuff[i]['State08timePV'])),
          TANK08Volt: (_NullCheck(databuff[i]['State08voltPV'])),
          TANK08Amp: (_NullCheck(databuff[i]['State08amPV'])),
          TANK08Rpm: (_NullCheck(databuff[i]['State08rpmPV'])),
          TANK09Temp: (_NullCheck(databuff[i]['State09tempPV'])),
          TANK09Time: (_NullCheck(databuff[i]['State09timePV'])),
          TANK09Volt: (_NullCheck(databuff[i]['State09voltPV'])),
          TANK09Amp: (_NullCheck(databuff[i]['State09amPV'])),
          TANK09Rpm: (_NullCheck(databuff[i]['State09rpmPV'])),
          TANK10Temp: (_NullCheck(databuff[i]['State10tempPV'])),
          TANK10Time: (_NullCheck(databuff[i]['State10timePV'])),
          TANK10Volt: (_NullCheck(databuff[i]['State10voltPV'])),
          TANK10Amp: (_NullCheck(databuff[i]['State10amPV'])),
          TANK10Rpm: (_NullCheck(databuff[i]['State10rpmPV'])),
          TANK11Temp: (_NullCheck(databuff[i]['State11tempPV'])),
          TANK11Time: (_NullCheck(databuff[i]['State11timePV'])),
          TANK11Volt: (_NullCheck(databuff[i]['State11voltPV'])),
          TANK11Amp: (_NullCheck(databuff[i]['State11amPV'])),
          TANK11Rpm: (_NullCheck(databuff[i]['State11rpmPV'])),
          TANK12Temp: (_NullCheck(databuff[i]['State12tempPV'])),
          TANK12Time: (_NullCheck(databuff[i]['State12timePV'])),
          TANK12Volt: (_NullCheck(databuff[i]['State12voltPV'])),
          TANK12Amp: (_NullCheck(databuff[i]['State12amPV'])),
          TANK12Rpm: (_NullCheck(databuff[i]['State12rpmPV'])),
          TANK13Temp: (_NullCheck(databuff[i]['State13tempPV'])),
          TANK13Time: (_NullCheck(databuff[i]['State13timePV'])),
          TANK13Volt: (_NullCheck(databuff[i]['State13voltPV'])),
          TANK13Amp: (_NullCheck(databuff[i]['State13amPV'])),
          TANK13Rpm: (_NullCheck(databuff[i]['State13rpmPV'])),
          TANK14Temp: (_NullCheck(databuff[i]['State14tempPV'])),
          TANK14Time: (_NullCheck(databuff[i]['State14timePV'])),
          TANK14Volt: (_NullCheck(databuff[i]['State14voltPV'])),
          TANK14Amp: (_NullCheck(databuff[i]['State14amPV'])),
          TANK14Rpm: (_NullCheck(databuff[i]['State14rpmPV'])),
          TANK15Temp: (_NullCheck(databuff[i]['State15tempPV'])),
          TANK15Time: (_NullCheck(databuff[i]['State15timePV'])),
          TANK15Volt: (_NullCheck(databuff[i]['State15voltPV'])),
          TANK15Amp: (_NullCheck(databuff[i]['State15amPV'])),
          TANK15Rpm: (_NullCheck(databuff[i]['State15rpmPV'])),
          TANK16Temp: (_NullCheck(databuff[i]['State16tempPV'])),
          TANK16Time: (_NullCheck(databuff[i]['State16timePV'])),
          TANK16Volt: (_NullCheck(databuff[i]['State16voltPV'])),
          TANK16Amp: (_NullCheck(databuff[i]['State16amPV'])),
          TANK16Rpm: (_NullCheck(databuff[i]['State16rpmPV'])),
          TANK17Temp: (_NullCheck(databuff[i]['State17tempPV'])),
          TANK17Time: (_NullCheck(databuff[i]['State17timePV'])),
          TANK17Volt: (_NullCheck(databuff[i]['State17voltPV'])),
          TANK17Amp: (_NullCheck(databuff[i]['State17amPV'])),
          TANK17Rpm: (_NullCheck(databuff[i]['State17rpmPV'])),
          TANK18Temp: (_NullCheck(databuff[i]['State18tempPV'])),
          TANK18Time: (_NullCheck(databuff[i]['State18timePV'])),
          TANK18Volt: (_NullCheck(databuff[i]['State18voltPV'])),
          TANK18Amp: (_NullCheck(databuff[i]['State18amPV'])),
          TANK18Rpm: (_NullCheck(databuff[i]['State18rpmPV'])),
          TANK19Temp: (_NullCheck(databuff[i]['State19tempPV'])),
          TANK19Time: (_NullCheck(databuff[i]['State19timePV'])),
          TANK19Volt: (_NullCheck(databuff[i]['State19voltPV'])),
          TANK19Amp: (_NullCheck(databuff[i]['State19amPV'])),
          TANK19Rpm: (_NullCheck(databuff[i]['State19rpmPV'])),
          TANK20Temp: (_NullCheck(databuff[i]['State20tempPV'])),
          TANK20Time: (_NullCheck(databuff[i]['State20timePV'])),
          TANK20Volt: (_NullCheck(databuff[i]['State20voltPV'])),
          TANK20Amp: (_NullCheck(databuff[i]['State20amPV'])),
          TANK20Rpm: (_NullCheck(databuff[i]['State20rpmPV'])),
          TANK21Temp: (_NullCheck(databuff[i]['State21tempPV'])),
          TANK21Time: (_NullCheck(databuff[i]['State21timePV'])),
          TANK21Volt: (_NullCheck(databuff[i]['State21voltPV'])),
          TANK21Amp: (_NullCheck(databuff[i]['State21amPV'])),
          TANK21Rpm: (_NullCheck(databuff[i]['State21rpmPV'])),
          TANK22Temp: (_NullCheck(databuff[i]['State22tempPV'])),
          TANK22Time: (_NullCheck(databuff[i]['State22timePV'])),
          TANK22Volt: (_NullCheck(databuff[i]['State22voltPV'])),
          TANK22Amp: (_NullCheck(databuff[i]['State22amPV'])),
          TANK22Rpm: (_NullCheck(databuff[i]['State22rpmPV'])),
          TANK23Temp: (_NullCheck(databuff[i]['State23tempPV'])),
          TANK23Time: (_NullCheck(databuff[i]['State23timePV'])),
          TANK23Volt: (_NullCheck(databuff[i]['State23voltPV'])),
          TANK23Amp: (_NullCheck(databuff[i]['State23amPV'])),
          TANK23Rpm: (_NullCheck(databuff[i]['State23rpmPV'])),
          TANK24Temp: (_NullCheck(databuff[i]['State24tempPV'])),
          TANK24Time: (_NullCheck(databuff[i]['State24timePV'])),
          TANK24Volt: (_NullCheck(databuff[i]['State24voltPV'])),
          TANK24Amp: (_NullCheck(databuff[i]['State24amPV'])),
          TANK24Rpm: (_NullCheck(databuff[i]['State24rpmPV'])),
          TANK25Temp: (_NullCheck(databuff[i]['State25tempPV'])),
          TANK25Time: (_NullCheck(databuff[i]['State25timePV'])),
          TANK25Volt: (_NullCheck(databuff[i]['State25voltPV'])),
          TANK25Amp: (_NullCheck(databuff[i]['State25amPV'])),
          TANK25Rpm: (_NullCheck(databuff[i]['State25rpmPV'])),
          TANK26Temp: (_NullCheck(databuff[i]['State26tempPV'])),
          TANK26Time: (_NullCheck(databuff[i]['State26timePV'])),
          TANK26Volt: (_NullCheck(databuff[i]['State26voltPV'])),
          TANK26Amp: (_NullCheck(databuff[i]['State26amPV'])),
          TANK26Rpm: (_NullCheck(databuff[i]['State26rpmPV'])),
          TANK27Temp: (_NullCheck(databuff[i]['State27tempPV'])),
          TANK27Time: (_NullCheck(databuff[i]['State27timePV'])),
          TANK27Volt: (_NullCheck(databuff[i]['State27voltPV'])),
          TANK27Amp: (_NullCheck(databuff[i]['State27amPV'])),
          TANK27Rpm: (_NullCheck(databuff[i]['State27rpmPV'])),
          TANK28Temp: (_NullCheck(databuff[i]['State28tempPV'])),
          TANK28Time: (_NullCheck(databuff[i]['State28timePV'])),
          TANK28Volt: (_NullCheck(databuff[i]['State28voltPV'])),
          TANK28Amp: (_NullCheck(databuff[i]['State28amPV'])),
          TANK28Rpm: (_NullCheck(databuff[i]['State28rpmPV'])),
          TANK29Temp: (_NullCheck(databuff[i]['State29tempPV'])),
          TANK29Time: (_NullCheck(databuff[i]['State29timePV'])),
          TANK29Volt: (_NullCheck(databuff[i]['State29voltPV'])),
          TANK29Amp: (_NullCheck(databuff[i]['State29amPV'])),
          TANK29Rpm: (_NullCheck(databuff[i]['State29rpmPV'])),
          TANK30Temp: (_NullCheck(databuff[i]['State30tempPV'])),
          TANK30Time: (_NullCheck(databuff[i]['State30timePV'])),
          TANK30Volt: (_NullCheck(databuff[i]['State30voltPV'])),
          TANK30Amp: (_NullCheck(databuff[i]['State30amPV'])),
          TANK30Rpm: (_NullCheck(databuff[i]['State30rpmPV'])),
          TANK31Temp: (_NullCheck(databuff[i]['State31tempPV'])),
          TANK31Time: (_NullCheck(databuff[i]['State31timePV'])),
          TANK31Volt: (_NullCheck(databuff[i]['State31voltPV'])),
          TANK31Amp: (_NullCheck(databuff[i]['State31amPV'])),
          TANK31Rpm: (_NullCheck(databuff[i]['State31rpmPV'])),
          TANK32Temp: (_NullCheck(databuff[i]['State32tempPV'])),
          TANK32Time: (_NullCheck(databuff[i]['State32timePV'])),
          TANK32Volt: (_NullCheck(databuff[i]['State32voltPV'])),
          TANK32Amp: (_NullCheck(databuff[i]['State32amPV'])),
          TANK32Rpm: (_NullCheck(databuff[i]['State32rpmPV'])),
          TANK33Temp: (_NullCheck(databuff[i]['State33tempPV'])),
          TANK33Time: (_NullCheck(databuff[i]['State33timePV'])),
          TANK33Volt: (_NullCheck(databuff[i]['State33voltPV'])),
          TANK33Amp: (_NullCheck(databuff[i]['State33amPV'])),
          TANK33Rpm: (_NullCheck(databuff[i]['State33rpmPV'])),
          TANK34Temp: (_NullCheck(databuff[i]['State34tempPV'])),
          TANK34Time: (_NullCheck(databuff[i]['State34timePV'])),
          TANK34Volt: (_NullCheck(databuff[i]['State34voltPV'])),
          TANK34Amp: (_NullCheck(databuff[i]['State34amPV'])),
          TANK34Rpm: (_NullCheck(databuff[i]['State34rpmPV'])),
          TANK35Temp: (_NullCheck(databuff[i]['State35tempPV'])),
          TANK35Time: (_NullCheck(databuff[i]['State35timePV'])),
          TANK35Volt: (_NullCheck(databuff[i]['State35voltPV'])),
          TANK35Amp: (_NullCheck(databuff[i]['State35amPV'])),
          TANK35Rpm: (_NullCheck(databuff[i]['State35rpmPV'])),
          TANK36Temp: (_NullCheck(databuff[i]['State36tempPV'])),
          TANK36Time: (_NullCheck(databuff[i]['State36timePV'])),
          TANK36Volt: (_NullCheck(databuff[i]['State36voltPV'])),
          TANK36Amp: (_NullCheck(databuff[i]['State36amPV'])),
          TANK36Rpm: (_NullCheck(databuff[i]['State36rpmPV'])),
          TANK37Temp: (_NullCheck(databuff[i]['State37tempPV'])),
          TANK37Time: (_NullCheck(databuff[i]['State37timePV'])),
          TANK37Volt: (_NullCheck(databuff[i]['State37voltPV'])),
          TANK37Amp: (_NullCheck(databuff[i]['State37amPV'])),
          TANK37Rpm: (_NullCheck(databuff[i]['State37rpmPV'])),
          TANK38Temp: (_NullCheck(databuff[i]['State38tempPV'])),
          TANK38Time: (_NullCheck(databuff[i]['State38timePV'])),
          TANK38Volt: (_NullCheck(databuff[i]['State38voltPV'])),
          TANK38Amp: (_NullCheck(databuff[i]['State38amPV'])),
          TANK38Rpm: (_NullCheck(databuff[i]['State38rpmPV'])),
          TANK39Temp: (_NullCheck(databuff[i]['State39tempPV'])),
          TANK39Time: (_NullCheck(databuff[i]['State39timePV'])),
          TANK39Volt: (_NullCheck(databuff[i]['State39voltPV'])),
          TANK39Amp: (_NullCheck(databuff[i]['State39amPV'])),
          TANK39Rpm: (_NullCheck(databuff[i]['State39rpmPV'])),
          TANK40Temp: (_NullCheck(databuff[i]['State40tempPV'])),
          TANK40Time: (_NullCheck(databuff[i]['State40timePV'])),
          TANK40Volt: (_NullCheck(databuff[i]['State40voltPV'])),
          TANK40Amp: (_NullCheck(databuff[i]['State40amPV'])),
          TANK40Rpm: (_NullCheck(databuff[i]['State40rpmPV'])),
          TANK41Temp: (_NullCheck(databuff[i]['State41tempPV'])),
          TANK41Time: (_NullCheck(databuff[i]['State41timePV'])),
          TANK41Volt: (_NullCheck(databuff[i]['State41voltPV'])),
          TANK41Amp: (_NullCheck(databuff[i]['State41amPV'])),
          TANK41Rpm: (_NullCheck(databuff[i]['State41rpmPV'])),
          TANK42Temp: (_NullCheck(databuff[i]['State42tempPV'])),
          TANK42Time: (_NullCheck(databuff[i]['State42timePV'])),
          TANK42Volt: (_NullCheck(databuff[i]['State42voltPV'])),
          TANK42Amp: (_NullCheck(databuff[i]['State42amPV'])),
          TANK42Rpm: (_NullCheck(databuff[i]['State42rpmPV'])),
          TANK43Temp: (_NullCheck(databuff[i]['State43tempPV'])),
          TANK43Time: (_NullCheck(databuff[i]['State43timePV'])),
          TANK43Volt: (_NullCheck(databuff[i]['State43voltPV'])),
          TANK43Amp: (_NullCheck(databuff[i]['State43amPV'])),
          TANK43Rpm: (_NullCheck(databuff[i]['State43rpmPV'])),
          TANK44Temp: (_NullCheck(databuff[i]['State44tempPV'])),
          TANK44Time: (_NullCheck(databuff[i]['State44timePV'])),
          TANK44Volt: (_NullCheck(databuff[i]['State44voltPV'])),
          TANK44Amp: (_NullCheck(databuff[i]['State44amPV'])),
          TANK44Rpm: (_NullCheck(databuff[i]['State44rpmPV'])),
          TANK45Temp: (_NullCheck(databuff[i]['State45tempPV'])),
          TANK45Time: (_NullCheck(databuff[i]['State45timePV'])),
          TANK45Volt: (_NullCheck(databuff[i]['State45voltPV'])),
          TANK45Amp: (_NullCheck(databuff[i]['State45amPV'])),
          TANK45Rpm: (_NullCheck(databuff[i]['State45rpmPV'])),
          TANK46Temp: "",
          TANK46Time: "",
          TANK46Volt: "",
          TANK46Amp: "",
          TANK46Rpm: "",
          TANK47Temp: "",
          TANK47Time: "",
          TANK47Volt: "",
          TANK47Amp: "",
          TANK47Rpm: "",
          TANK48Temp: "",
          TANK48Time: "",
          TANK48Volt: "",
          TANK48Amp: "",
          TANK48Rpm: "",
          TANK49Temp: "",
          TANK49Time: "",
          TANK49Volt: "",
          TANK49Amp: "",
          TANK49Rpm: "",
          TANK50Temp: "",
          TANK50Time: "",
          TANK50Volt: "",
          TANK50Amp: "",
          TANK50Rpm: "",
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

ExpCSV(List<YMDDATAMASTERmodel2> data) {
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
    } else {
      row.add(data[i].NO);
      row.add(data[i].Item);
      row.add(data[i].ItemNO);
      row.add(data[i].PartNO);
      row.add(data[i].PartName);
      row.add(data[i].QTY);
      row.add((data[i].LoadingTime01));

      //
    }

    rows.add(row);
  }
  String datetada = "${selectedDate.toLocal()}".split(' ')[0];
  String csv = const ListToCsvConverter().convert(rows);
  AnchorElement(href: "data:text/plain;charset=utf-8,$csv")
    ..setAttribute("download", "DATA ${INDreportGAMAVAR.selectedDate}.csv")
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
