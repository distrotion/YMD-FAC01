import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

import '../../data/dummy2.dart';
import '../../data/global.dart';
import '../../data/model.dart';
import '../../data/modelmaster.dart';
import '../../data/test.dart';

//-------------------------------------------------

String server = GserverYMD;

abstract class ACTUALDATA_AUTOCU_Event {}

class ACTUALDATA_AUTOCU_Pressed extends ACTUALDATA_AUTOCU_Event {}

class ACTUALDATA_AUTOCU_Bloc
    extends Bloc<ACTUALDATA_AUTOCU_Event, List<YMDDATAMASTERmodel>> {
  ACTUALDATA_AUTOCU_Bloc() : super([]) {
    on<ACTUALDATA_AUTOCU_Pressed>((event, emit) {
      return _Function_01([], emit);
    });
  }
  Future<void> _Function_01(List<YMDDATAMASTERmodel> toAdd,
      Emitter<List<YMDDATAMASTERmodel>> emit) async {
    final response = await Dio().post(
      server + "Today_AUTOCU",
      data: {},
    );

    List<YMDDATAMASTERmodel> output = [];
    if (response.statusCode == 200) {
      // if (true) {
      var databuff = response.data;
      // var databuff = testdummy;
      // print(databuff);
      int numtest = databuff.length;
      if (databuff.length > 50) {
        numtest = 50;
      }
      for (var i = 0; i < numtest; i++) {
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
          Tank17Amp: (_NullCheck(databuff[i]['State17voltPV'])),
          Tank17Volt: todesimol(_NullCheck(databuff[i]['State17amPV'])),
          Tank17Temp: todesimol(_NullCheck(databuff[i]['State17tempPV'])),
          Tank17Rpm: _NullCheck(databuff[i]['State17rpmPV']),
          Tank17Time: _NullCheck(databuff[i]['State17timePV']),
          //
          Tank18Time: _NullCheck(databuff[i]['State18timePV']),
          Tank18Temp: todesimol(_NullCheck(databuff[i]['State18tempPV'])),
          Tank19Time: _NullCheck(databuff[i]['State19timePV']),
          Tank19Temp: todesimol(_NullCheck(databuff[i]['State19tempPV'])),
          //
          Tank20Amp: (_NullCheck(databuff[i]['State20voltPV'])),
          Tank20Volt: todesimol(_NullCheck(databuff[i]['State20amPV'])),
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
          Tank24Amp: (_NullCheck(databuff[i]['State24voltPV'])),
          Tank24Volt: todesimol(_NullCheck(databuff[i]['State24amPV'])),
          Tank24Temp: todesimol(_NullCheck(databuff[i]['State24tempPV'])),
          Tank24Rpm: _NullCheck(databuff[i]['State24rpmPV']),
          Tank24Time: _NullCheck(databuff[i]['State24timePV']),
          //
          Tank25Time: _NullCheck(databuff[i]['State25timePV']),
          Tank25Temp: todesimol(_NullCheck(databuff[i]['State25tempPV'])),
          Tank26Time: _NullCheck(databuff[i]['State26timePV']),
          Tank26Temp: todesimol(_NullCheck(databuff[i]['State26tempPV'])),
          //
          Tank27Amp: (_NullCheck(databuff[i]['State27voltPV'])),
          Tank27Volt: todesimol(_NullCheck(databuff[i]['State27amPV'])),
          Tank27Temp: todesimol(_NullCheck(databuff[i]['State27tempPV'])),
          Tank27Rpm: _NullCheck(databuff[i]['State27rpmPV']),
          Tank27Time: _NullCheck(databuff[i]['State27timePV']),

          Tank28Amp: (_NullCheck(databuff[i]['State28voltPV'])),
          Tank28Volt: todesimol(_NullCheck(databuff[i]['State28amPV'])),
          Tank28Temp: todesimol(_NullCheck(databuff[i]['State28tempPV'])),
          Tank28Rpm: _NullCheck(databuff[i]['State28rpmPV']),
          Tank28Time: _NullCheck(databuff[i]['State28timePV']),
          //
          Tank29Time: _NullCheck(databuff[i]['State29timePV']),
          Tank29Temp: todesimol(_NullCheck(databuff[i]['State29tempPV'])),
          //
          Tank30Amp: (_NullCheck(databuff[i]['State30voltPV'])),
          Tank30Volt: todesimol(_NullCheck(databuff[i]['State30amPV'])),
          Tank30Temp: todesimol(_NullCheck(databuff[i]['State30tempPV'])),
          Tank30Rpm: _NullCheck(databuff[i]['State30rpmPV']),
          Tank30Time: _NullCheck(databuff[i]['State30timePV']),

          Tank31Amp: (_NullCheck(databuff[i]['State31voltPV'])),
          Tank31Volt: todesimol(_NullCheck(databuff[i]['State31amPV'])),
          Tank31Temp: todesimol(_NullCheck(databuff[i]['State31tempPV'])),
          Tank31Rpm: _NullCheck(databuff[i]['State31rpmPV']),
          Tank31Time: _NullCheck(databuff[i]['State31timePV']),
          //
          Tank32Time: _NullCheck(databuff[i]['State32timePV']),
          Tank32Temp: todesimol(_NullCheck(databuff[i]['State32tempPV'])),
          //
          Tank33Amp: (_NullCheck(databuff[i]['State33voltPV'])),
          Tank33Volt: todesimol(_NullCheck(databuff[i]['State33amPV'])),
          Tank33Temp: todesimol(_NullCheck(databuff[i]['State33tempPV'])),
          Tank33Rpm: _NullCheck(databuff[i]['State33rpmPV']),
          Tank33Time: _NullCheck(databuff[i]['State33timePV']),

          Tank34Amp: (_NullCheck(databuff[i]['State34voltPV'])),
          Tank34Volt: todesimol(_NullCheck(databuff[i]['State34amPV'])),
          Tank34Temp: todesimol(_NullCheck(databuff[i]['State34tempPV'])),
          Tank34Rpm: _NullCheck(databuff[i]['State34rpmPV']),
          Tank34Time: _NullCheck(databuff[i]['State34timePV']),
          //
          Tank35Time: _NullCheck(databuff[i]['State35timePV']),
          Tank35Temp: todesimol(_NullCheck(databuff[i]['State35tempPV'])),
          //
          Tank36Amp: (_NullCheck(databuff[i]['State36voltPV'])),
          Tank36Volt: todesimol(_NullCheck(databuff[i]['State36amPV'])),
          Tank36Temp: todesimol(_NullCheck(databuff[i]['State36tempPV'])),
          Tank36Rpm: _NullCheck(databuff[i]['State36rpmPV']),
          Tank36Time: _NullCheck(databuff[i]['State36timePV']),

          Tank37Amp: (_NullCheck(databuff[i]['State37voltPV'])),
          Tank37Volt: todesimol(_NullCheck(databuff[i]['State37amPV'])),
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
