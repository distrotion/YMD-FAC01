import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

import '../../data/global.dart';
import '../../data/model.dart';
import '../../data/test.dart';

//-------------------------------------------------

String server = GserverYMD;

abstract class ACTUALDATA_Event {}

class ACTUALDATA_Pressed extends ACTUALDATA_Event {}

class ACTUALDATA_Bloc extends Bloc<ACTUALDATA_Event, List<YMDDATAmodel>> {
  ACTUALDATA_Bloc() : super([]) {
    on<ACTUALDATA_Pressed>((event, emit) {
      return _Function_01([], emit);
    });
  }
  Future<void> _Function_01(
      List<YMDDATAmodel> toAdd, Emitter<List<YMDDATAmodel>> emit) async {
    final response = await Dio().post(
      server + "Today",
      data: {},
    );

    List<YMDDATAmodel> output = [];
    if (response.statusCode == 200) {
      // if (true) {
      var databuff = response.data;
      // var databuff = testdata;
      // print(databuff);
      for (var i = 0; i < databuff.length; i++) {
        //
        output.add(YMDDATAmodel(
          NO: '${i + 1}',
          Item: _NullCheck(databuff[i]['ItemID']),
          PartNO: _NullCheck(databuff[i]['PartNumber']),
          PartName: _NullCheck(databuff[i]['PartName']),
          QTY: _NullCheck(databuff[i]['QTY']),
          LoadingTime01: _daycon(_NullCheck(databuff[i]['LoadingTime'])),
          Degressing02Temp: todesimol(_NullCheck(databuff[i]['State02tempPV'])),
          Degressing02Time: _NullCheck(databuff[i]['State02timePV']),
          Degressing03Temp: todesimol(_NullCheck(databuff[i]['State03tempPV'])),
          Degressing03Time: _NullCheck(databuff[i]['State03timePV']),
          Shower04Temp: todesimol(_NullCheck(databuff[i]['State04tempPV'])),
          Shower04Time: _NullCheck(databuff[i]['State04timePV']),
          Degressing05Temp: todesimol(_NullCheck(databuff[i]['State05tempPV'])),
          Degressing05Time: _NullCheck(databuff[i]['State05timePV']),
          Degressing06Temp: todesimol(_NullCheck(databuff[i]['State06tempPV'])),
          Degressing06Time: _NullCheck(databuff[i]['State06timePV']),
          Degressing07Temp: todesimol(_NullCheck(databuff[i]['State07tempPV'])),
          Degressing07Time: _NullCheck(databuff[i]['State07timePV']),
          WaterRinse08Temp: todesimol(_NullCheck(databuff[i]['State08tempPV'])),
          WaterRinse08Time: _NullCheck(databuff[i]['State08timePV']),
          WaterRinse09Temp: todesimol(_NullCheck(databuff[i]['State09tempPV'])),
          WaterRinse09Time: _NullCheck(databuff[i]['State09timePV']),
          AcidWashing10Temp:
              todesimol(_NullCheck(databuff[i]['State10tempPV'])),
          AcidWashing10Time: _NullCheck(databuff[i]['State10timePV']),
          WaterRinse11Temp: todesimol(_NullCheck(databuff[i]['State11tempPV'])),
          WaterRinse11Time: _NullCheck(databuff[i]['State11timePV']),
          WaterRinse12Temp: todesimol(_NullCheck(databuff[i]['State12tempPV'])),
          WaterRinse12Time: _NullCheck(databuff[i]['State12timePV']),
          ElectrolyticAnodic13Volt:
              todesimol(_NullCheck(databuff[i]['State13voltPV'])),
          ElectrolyticAnodic13Amp: _NullCheck(databuff[i]['State13amPV']),
          ElectrolyticAnodic13Temp:
              todesimol(_NullCheck(databuff[i]['State13tempPV'])),
          ElectrolyticAnodic13Rpm: _NullCheck(databuff[i]['State13rpmPV']),
          ElectrolyticAnodic13Time: _NullCheck(databuff[i]['State13timePV']),
          ElectrolyticCathod14Volt:
              todesimol(_NullCheck(databuff[i]['State14voltPV'])),
          ElectrolyticCathod14Amp: _NullCheck(databuff[i]['State14amPV']),
          ElectrolyticCathod14Temp:
              todesimol(_NullCheck(databuff[i]['State14tempPV'])),
          ElectrolyticCathod14Rpm: _NullCheck(databuff[i]['State14rpmPV']),
          ElectrolyticCathod14Time: _NullCheck(databuff[i]['State14timePV']),
          WaterRinse15Temp: todesimol(_NullCheck(databuff[i]['State15tempPV'])),
          WaterRinse15Time: _NullCheck(databuff[i]['State15timePV']),
          WaterRinse16Temp: todesimol(_NullCheck(databuff[i]['State16tempPV'])),
          WaterRinse16Time: _NullCheck(databuff[i]['State16timePV']),
          Activetion17Temp: todesimol(_NullCheck(databuff[i]['State17tempPV'])),
          Activetion17Time: _NullCheck(databuff[i]['State17timePV']),
          WaterRinse18Temp: todesimol(_NullCheck(databuff[i]['State18tempPV'])),
          WaterRinse18Time: _NullCheck(databuff[i]['State18timePV']),
          CuCyanide19Volt: todesimol(_NullCheck(databuff[i]['State19voltPV'])),
          CuCyanide19Amp: _NullCheck(databuff[i]['State19amPV']),
          CuCyanide19Temp: todesimol(_NullCheck(databuff[i]['State19tempPV'])),
          CuCyanide19Rpm: _NullCheck(databuff[i]['State19rpmPV']),
          CuCyanide19Time: _NullCheck(databuff[i]['State19timePV']),
          CuCyanide20Volt: todesimol(_NullCheck(databuff[i]['State20voltPV'])),
          CuCyanide20Amp: _NullCheck(databuff[i]['State20amPV']),
          CuCyanide20Temp: todesimol(_NullCheck(databuff[i]['State20tempPV'])),
          CuCyanide20Rpm: _NullCheck(databuff[i]['State20rpmPV']),
          CuCyanide20Time: _NullCheck(databuff[i]['State20timePV']),
          WaterRinse21Temp: todesimol(_NullCheck(databuff[i]['State21tempPV'])),
          WaterRinse21Time: _NullCheck(databuff[i]['State21timePV']),
          WaterRinse22Temp: todesimol(_NullCheck(databuff[i]['State22tempPV'])),
          WaterRinse22Time: _NullCheck(databuff[i]['State22timePV']),
          ActivetionH2S042223Temp:
              todesimol(_NullCheck(databuff[i]['State23tempPV'])),
          ActivetionH2S04223Time: _NullCheck(databuff[i]['State23timePV']),
          CoperSulfate24Volt:
              todesimol(_NullCheck(databuff[i]['State24voltPV'])),
          CoperSulfate24Amp: _NullCheck(databuff[i]['State24amPV']),
          CoperSulfate24Temp:
              todesimol(_NullCheck(databuff[i]['State24tempPV'])),
          CoperSulfate24Rpm: _NullCheck(databuff[i]['State24rpmPV']),
          CoperSulfate024Time: _NullCheck(databuff[i]['State24timePV']),
          WaterRinse25Temp: todesimol(_NullCheck(databuff[i]['State25tempPV'])),
          WaterRinse25Time: _NullCheck(databuff[i]['State25timePV']),
          SemiBrightNickel26Volt:
              todesimol(_NullCheck(databuff[i]['State26voltPV'])),
          SemiBrightNickel26Amp: _NullCheck(databuff[i]['State26amPV']),
          SemiBrightNickel26Temp:
              todesimol(_NullCheck(databuff[i]['State26tempPV'])),
          SemiBrightNickel26Rpm: _NullCheck(databuff[i]['State26rpmPV']),
          SemiBrightNickel26Time: _NullCheck(databuff[i]['State26timePV']),
          SemiBrightNickel27Volt:
              todesimol(_NullCheck(databuff[i]['State27voltPV'])),
          SemiBrightNickel27Amp: _NullCheck(databuff[i]['State27amPV']),
          SemiBrightNickel27Temp:
              todesimol(_NullCheck(databuff[i]['State27tempPV'])),
          SemiBrightNickel27Rpm: _NullCheck(databuff[i]['State27rpmPV']),
          SemiBrightNickel27Time: _NullCheck(databuff[i]['State27timePV']),
          SemiBrightNickel28Volt:
              todesimol(_NullCheck(databuff[i]['State28voltPV'])),
          SemiBrightNickel28Amp: _NullCheck(databuff[i]['State28amPV']),
          SemiBrightNickel28Temp:
              todesimol(_NullCheck(databuff[i]['State28tempPV'])),
          SemiBrightNickel28Rpm: _NullCheck(databuff[i]['State28rpmPV']),
          SemiBrightNickel28Time: _NullCheck(databuff[i]['State28timePV']),
          WaterRinse29Temp: todesimol(_NullCheck(databuff[i]['State29tempPV'])),
          WaterRinse29Time: _NullCheck(databuff[i]['State29timePV']),
          DullSnPlating30Volt:
              todesimol(_NullCheck(databuff[i]['State30voltPV'])),
          DullSnPlating30Amp: _NullCheck(databuff[i]['State30amPV']),
          DullSnPlating30Temp:
              todesimol(_NullCheck(databuff[i]['State30tempPV'])),
          DullSnPlating30Rpm: _NullCheck(databuff[i]['State30rpmPV']),
          DullSnPlating30Time: _NullCheck(databuff[i]['State30timePV']),
          DullSnPlating31Volt:
              todesimol(_NullCheck(databuff[i]['State31voltPV'])),
          DullSnPlating31Amp: _NullCheck(databuff[i]['State31amPV']),
          DullSnPlating31Temp:
              todesimol(_NullCheck(databuff[i]['State31tempPV'])),
          DullSnPlating31Rpm: _NullCheck(databuff[i]['State31rpmPV']),
          DullSnPlating31Time: _NullCheck(databuff[i]['State31timePV']),
          DullSnPlating32Volt:
              todesimol(_NullCheck(databuff[i]['State32voltPV'])),
          DullSnPlating32Amp: _NullCheck(databuff[i]['State32amPV']),
          DullSnPlating32Temp:
              todesimol(_NullCheck(databuff[i]['State32tempPV'])),
          DullSnPlating32Rpm: _NullCheck(databuff[i]['State32rpmPV']),
          DullSnPlating32Time: _NullCheck(databuff[i]['State32timePV']),
          DullSnPlating33Volt:
              todesimol(_NullCheck(databuff[i]['State33voltPV'])),
          DullSnPlating33Amp: _NullCheck(databuff[i]['State33amPV']),
          DullSnPlating33Temp:
              todesimol(_NullCheck(databuff[i]['State33tempPV'])),
          DullSnPlating33Rpm: _NullCheck(databuff[i]['State33rpmPV']),
          DullSnPlating33Time: _NullCheck(databuff[i]['State33timePV']),
          WaterRinse34Temp: todesimol(_NullCheck(databuff[i]['State34tempPV'])),
          WaterRinse34Time: _NullCheck(databuff[i]['State34timePV']),
          BrightSnPlating35Volt:
              todesimol(_NullCheck(databuff[i]['State35voltPV'])),
          BrightSnPlating35Amp: _NullCheck(databuff[i]['State35amPV']),
          BrightSnPlating35Temp:
              todesimol(_NullCheck(databuff[i]['State35tempPV'])),
          BrightSnPlating35Rpm: _NullCheck(databuff[i]['State35rpmPV']),
          BrightSnPlating35Time: _NullCheck(databuff[i]['State35timePV']),
          BrightSnPlating36Volt:
              todesimol(_NullCheck(databuff[i]['State36voltPV'])),
          BrightSnPlating36Amp: _NullCheck(databuff[i]['State36amPV']),
          BrightSnPlating36Temp:
              todesimol(_NullCheck(databuff[i]['State36tempPV'])),
          BrightSnPlating36Rpm: _NullCheck(databuff[i]['State36rpmPV']),
          BrightSnPlating36Time: _NullCheck(databuff[i]['State36timePV']),
          WaterRinse37Temp: todesimol(_NullCheck(databuff[i]['State37tempPV'])),
          WaterRinse37Time: _NullCheck(databuff[i]['State37timePV']),
          Postrement38Temp: todesimol(_NullCheck(databuff[i]['State38tempPV'])),
          Postrement38Time: _NullCheck(databuff[i]['State38timePV']),
          Postrement39Temp: todesimol(_NullCheck(databuff[i]['State39tempPV'])),
          Postrement39Time: _NullCheck(databuff[i]['State39timePV']),
          HotWaterRinse40Temp:
              todesimol(_NullCheck(databuff[i]['State40tempPV'])),
          HotWaterRinse40Time: _NullCheck(databuff[i]['State40timePV']),
          HotWaterRinse41Temp:
              todesimol(_NullCheck(databuff[i]['State41tempPV'])),
          HotWaterRinse41Time: _NullCheck(databuff[i]['State41timePV']),
        ));
      }
    } else {}
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
