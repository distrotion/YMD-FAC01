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

abstract class ACTUALDATA_AUTOGAMA_Event {}

class ACTUALDATA_AUTOGAMA_Pressed extends ACTUALDATA_AUTOGAMA_Event {}

class ACTUALDATA_AUTOGAMA_Bloc
    extends Bloc<ACTUALDATA_AUTOGAMA_Event, List<YMDDATAMASTERmodel2>> {
  ACTUALDATA_AUTOGAMA_Bloc() : super([]) {
    on<ACTUALDATA_AUTOGAMA_Pressed>((event, emit) {
      return _Function_01([], emit);
    });
  }
  Future<void> _Function_01(List<YMDDATAMASTERmodel2> toAdd,
      Emitter<List<YMDDATAMASTERmodel2>> emit) async {
    final response = await Dio().post(
      server + "Today_AUTOGAMA",
      data: {},
    );

    List<YMDDATAMASTERmodel2> output = [];
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
        output.add(YMDDATAMASTERmodel2(
          NO: '${i + 1}',
          Item: _NullCheck(databuff[i]['ItemID']),
          ItemNO: _NullCheck(databuff[i]['ItemNO']),
          PartNO: _NullCheck(databuff[i]['PartNumber']),
          PartName: _NullCheck(databuff[i]['PartName']),
          QTY: _NullCheck(databuff[i]['QTY']),
          LoadingTime01: _daycon(_NullCheck(databuff[i]['LoadingTime'])),
          TANK01Temp: _daycon(_NullCheck(databuff[i]['State01tempPV'])),
          TANK01Time: _daycon(_NullCheck(databuff[i]['State01timePV'])),
          TANK01Volt: _daycon(_NullCheck(databuff[i]['State01voltPV'])),
          TANK01Amp: _daycon(_NullCheck(databuff[i]['State01amPV'])),
          TANK01Rpm: _daycon(_NullCheck(databuff[i]['State01rpmPV'])),
          TANK02Temp: _daycon(_NullCheck(databuff[i]['State02tempPV'])),
          TANK02Time: _daycon(_NullCheck(databuff[i]['State02timePV'])),
          TANK02Volt: _daycon(_NullCheck(databuff[i]['State02voltPV'])),
          TANK02Amp: _daycon(_NullCheck(databuff[i]['State02amPV'])),
          TANK02Rpm: _daycon(_NullCheck(databuff[i]['State02rpmPV'])),
          TANK03Temp: _daycon(_NullCheck(databuff[i]['State03tempPV'])),
          TANK03Time: _daycon(_NullCheck(databuff[i]['State03timePV'])),
          TANK03Volt: _daycon(_NullCheck(databuff[i]['State03voltPV'])),
          TANK03Amp: _daycon(_NullCheck(databuff[i]['State03amPV'])),
          TANK03Rpm: _daycon(_NullCheck(databuff[i]['State03rpmPV'])),
          TANK04Temp: _daycon(_NullCheck(databuff[i]['State04tempPV'])),
          TANK04Time: _daycon(_NullCheck(databuff[i]['State04timePV'])),
          TANK04Volt: _daycon(_NullCheck(databuff[i]['State04voltPV'])),
          TANK04Amp: _daycon(_NullCheck(databuff[i]['State04amPV'])),
          TANK04Rpm: _daycon(_NullCheck(databuff[i]['State04rpmPV'])),
          TANK05Temp: _daycon(_NullCheck(databuff[i]['State05tempPV'])),
          TANK05Time: _daycon(_NullCheck(databuff[i]['State05timePV'])),
          TANK05Volt: _daycon(_NullCheck(databuff[i]['State05voltPV'])),
          TANK05Amp: _daycon(_NullCheck(databuff[i]['State05amPV'])),
          TANK05Rpm: _daycon(_NullCheck(databuff[i]['State05rpmPV'])),
          TANK06Temp: _daycon(_NullCheck(databuff[i]['State06tempPV'])),
          TANK06Time: _daycon(_NullCheck(databuff[i]['State06timePV'])),
          TANK06Volt: _daycon(_NullCheck(databuff[i]['State06voltPV'])),
          TANK06Amp: _daycon(_NullCheck(databuff[i]['State06amPV'])),
          TANK06Rpm: _daycon(_NullCheck(databuff[i]['State06rpmPV'])),
          TANK07Temp: _daycon(_NullCheck(databuff[i]['State07tempPV'])),
          TANK07Time: _daycon(_NullCheck(databuff[i]['State07timePV'])),
          TANK07Volt: _daycon(_NullCheck(databuff[i]['State07voltPV'])),
          TANK07Amp: _daycon(_NullCheck(databuff[i]['State07amPV'])),
          TANK07Rpm: _daycon(_NullCheck(databuff[i]['State07rpmPV'])),
          TANK08Temp: _daycon(_NullCheck(databuff[i]['State08tempPV'])),
          TANK08Time: _daycon(_NullCheck(databuff[i]['State08timePV'])),
          TANK08Volt: _daycon(_NullCheck(databuff[i]['State08voltPV'])),
          TANK08Amp: _daycon(_NullCheck(databuff[i]['State08amPV'])),
          TANK08Rpm: _daycon(_NullCheck(databuff[i]['State08rpmPV'])),
          TANK09Temp: _daycon(_NullCheck(databuff[i]['State09tempPV'])),
          TANK09Time: _daycon(_NullCheck(databuff[i]['State09timePV'])),
          TANK09Volt: _daycon(_NullCheck(databuff[i]['State09voltPV'])),
          TANK09Amp: _daycon(_NullCheck(databuff[i]['State09amPV'])),
          TANK09Rpm: _daycon(_NullCheck(databuff[i]['State09rpmPV'])),
          TANK10Temp: _daycon(_NullCheck(databuff[i]['State10tempPV'])),
          TANK10Time: _daycon(_NullCheck(databuff[i]['State10timePV'])),
          TANK10Volt: _daycon(_NullCheck(databuff[i]['State10voltPV'])),
          TANK10Amp: _daycon(_NullCheck(databuff[i]['State10amPV'])),
          TANK10Rpm: _daycon(_NullCheck(databuff[i]['State10rpmPV'])),
          TANK11Temp: _daycon(_NullCheck(databuff[i]['State11tempPV'])),
          TANK11Time: _daycon(_NullCheck(databuff[i]['State11timePV'])),
          TANK11Volt: _daycon(_NullCheck(databuff[i]['State11voltPV'])),
          TANK11Amp: _daycon(_NullCheck(databuff[i]['State11amPV'])),
          TANK11Rpm: _daycon(_NullCheck(databuff[i]['State11rpmPV'])),
          TANK12Temp: _daycon(_NullCheck(databuff[i]['State12tempPV'])),
          TANK12Time: _daycon(_NullCheck(databuff[i]['State12timePV'])),
          TANK12Volt: _daycon(_NullCheck(databuff[i]['State12voltPV'])),
          TANK12Amp: _daycon(_NullCheck(databuff[i]['State12amPV'])),
          TANK12Rpm: _daycon(_NullCheck(databuff[i]['State12rpmPV'])),
          TANK13Temp: _daycon(_NullCheck(databuff[i]['State13tempPV'])),
          TANK13Time: _daycon(_NullCheck(databuff[i]['State13timePV'])),
          TANK13Volt: _daycon(_NullCheck(databuff[i]['State13voltPV'])),
          TANK13Amp: _daycon(_NullCheck(databuff[i]['State13amPV'])),
          TANK13Rpm: _daycon(_NullCheck(databuff[i]['State13rpmPV'])),
          TANK14Temp: _daycon(_NullCheck(databuff[i]['State14tempPV'])),
          TANK14Time: _daycon(_NullCheck(databuff[i]['State14timePV'])),
          TANK14Volt: _daycon(_NullCheck(databuff[i]['State14voltPV'])),
          TANK14Amp: _daycon(_NullCheck(databuff[i]['State14amPV'])),
          TANK14Rpm: _daycon(_NullCheck(databuff[i]['State14rpmPV'])),
          TANK15Temp: _daycon(_NullCheck(databuff[i]['State15tempPV'])),
          TANK15Time: _daycon(_NullCheck(databuff[i]['State15timePV'])),
          TANK15Volt: _daycon(_NullCheck(databuff[i]['State15voltPV'])),
          TANK15Amp: _daycon(_NullCheck(databuff[i]['State15amPV'])),
          TANK15Rpm: _daycon(_NullCheck(databuff[i]['State15rpmPV'])),
          TANK16Temp: _daycon(_NullCheck(databuff[i]['State16tempPV'])),
          TANK16Time: _daycon(_NullCheck(databuff[i]['State16timePV'])),
          TANK16Volt: _daycon(_NullCheck(databuff[i]['State16voltPV'])),
          TANK16Amp: _daycon(_NullCheck(databuff[i]['State16amPV'])),
          TANK16Rpm: _daycon(_NullCheck(databuff[i]['State16rpmPV'])),
          TANK17Temp: _daycon(_NullCheck(databuff[i]['State17tempPV'])),
          TANK17Time: _daycon(_NullCheck(databuff[i]['State17timePV'])),
          TANK17Volt: _daycon(_NullCheck(databuff[i]['State17voltPV'])),
          TANK17Amp: _daycon(_NullCheck(databuff[i]['State17amPV'])),
          TANK17Rpm: _daycon(_NullCheck(databuff[i]['State17rpmPV'])),
          TANK18Temp: _daycon(_NullCheck(databuff[i]['State18tempPV'])),
          TANK18Time: _daycon(_NullCheck(databuff[i]['State18timePV'])),
          TANK18Volt: _daycon(_NullCheck(databuff[i]['State18voltPV'])),
          TANK18Amp: _daycon(_NullCheck(databuff[i]['State18amPV'])),
          TANK18Rpm: _daycon(_NullCheck(databuff[i]['State18rpmPV'])),
          TANK19Temp: _daycon(_NullCheck(databuff[i]['State19tempPV'])),
          TANK19Time: _daycon(_NullCheck(databuff[i]['State19timePV'])),
          TANK19Volt: _daycon(_NullCheck(databuff[i]['State19voltPV'])),
          TANK19Amp: _daycon(_NullCheck(databuff[i]['State19amPV'])),
          TANK19Rpm: _daycon(_NullCheck(databuff[i]['State19rpmPV'])),
          TANK20Temp: _daycon(_NullCheck(databuff[i]['State20tempPV'])),
          TANK20Time: _daycon(_NullCheck(databuff[i]['State20timePV'])),
          TANK20Volt: _daycon(_NullCheck(databuff[i]['State20voltPV'])),
          TANK20Amp: _daycon(_NullCheck(databuff[i]['State20amPV'])),
          TANK20Rpm: _daycon(_NullCheck(databuff[i]['State20rpmPV'])),
          TANK21Temp: _daycon(_NullCheck(databuff[i]['State21tempPV'])),
          TANK21Time: _daycon(_NullCheck(databuff[i]['State21timePV'])),
          TANK21Volt: _daycon(_NullCheck(databuff[i]['State21voltPV'])),
          TANK21Amp: _daycon(_NullCheck(databuff[i]['State21amPV'])),
          TANK21Rpm: _daycon(_NullCheck(databuff[i]['State21rpmPV'])),
          TANK22Temp: _daycon(_NullCheck(databuff[i]['State22tempPV'])),
          TANK22Time: _daycon(_NullCheck(databuff[i]['State22timePV'])),
          TANK22Volt: _daycon(_NullCheck(databuff[i]['State22voltPV'])),
          TANK22Amp: _daycon(_NullCheck(databuff[i]['State22amPV'])),
          TANK22Rpm: _daycon(_NullCheck(databuff[i]['State22rpmPV'])),
          TANK23Temp: _daycon(_NullCheck(databuff[i]['State23tempPV'])),
          TANK23Time: _daycon(_NullCheck(databuff[i]['State23timePV'])),
          TANK23Volt: _daycon(_NullCheck(databuff[i]['State23voltPV'])),
          TANK23Amp: _daycon(_NullCheck(databuff[i]['State23amPV'])),
          TANK23Rpm: _daycon(_NullCheck(databuff[i]['State23rpmPV'])),
          TANK24Temp: _daycon(_NullCheck(databuff[i]['State24tempPV'])),
          TANK24Time: _daycon(_NullCheck(databuff[i]['State24timePV'])),
          TANK24Volt: _daycon(_NullCheck(databuff[i]['State24voltPV'])),
          TANK24Amp: _daycon(_NullCheck(databuff[i]['State24amPV'])),
          TANK24Rpm: _daycon(_NullCheck(databuff[i]['State24rpmPV'])),
          TANK25Temp: _daycon(_NullCheck(databuff[i]['State25tempPV'])),
          TANK25Time: _daycon(_NullCheck(databuff[i]['State25timePV'])),
          TANK25Volt: _daycon(_NullCheck(databuff[i]['State25voltPV'])),
          TANK25Amp: _daycon(_NullCheck(databuff[i]['State25amPV'])),
          TANK25Rpm: _daycon(_NullCheck(databuff[i]['State25rpmPV'])),
          TANK26Temp: _daycon(_NullCheck(databuff[i]['State26tempPV'])),
          TANK26Time: _daycon(_NullCheck(databuff[i]['State26timePV'])),
          TANK26Volt: _daycon(_NullCheck(databuff[i]['State26voltPV'])),
          TANK26Amp: _daycon(_NullCheck(databuff[i]['State26amPV'])),
          TANK26Rpm: _daycon(_NullCheck(databuff[i]['State26rpmPV'])),
          TANK27Temp: _daycon(_NullCheck(databuff[i]['State27tempPV'])),
          TANK27Time: _daycon(_NullCheck(databuff[i]['State27timePV'])),
          TANK27Volt: _daycon(_NullCheck(databuff[i]['State27voltPV'])),
          TANK27Amp: _daycon(_NullCheck(databuff[i]['State27amPV'])),
          TANK27Rpm: _daycon(_NullCheck(databuff[i]['State27rpmPV'])),
          TANK28Temp: _daycon(_NullCheck(databuff[i]['State28tempPV'])),
          TANK28Time: _daycon(_NullCheck(databuff[i]['State28timePV'])),
          TANK28Volt: _daycon(_NullCheck(databuff[i]['State28voltPV'])),
          TANK28Amp: _daycon(_NullCheck(databuff[i]['State28amPV'])),
          TANK28Rpm: _daycon(_NullCheck(databuff[i]['State28rpmPV'])),
          TANK29Temp: _daycon(_NullCheck(databuff[i]['State29tempPV'])),
          TANK29Time: _daycon(_NullCheck(databuff[i]['State29timePV'])),
          TANK29Volt: _daycon(_NullCheck(databuff[i]['State29voltPV'])),
          TANK29Amp: _daycon(_NullCheck(databuff[i]['State29amPV'])),
          TANK29Rpm: _daycon(_NullCheck(databuff[i]['State29rpmPV'])),
          TANK30Temp: _daycon(_NullCheck(databuff[i]['State30tempPV'])),
          TANK30Time: _daycon(_NullCheck(databuff[i]['State30timePV'])),
          TANK30Volt: _daycon(_NullCheck(databuff[i]['State30voltPV'])),
          TANK30Amp: _daycon(_NullCheck(databuff[i]['State30amPV'])),
          TANK30Rpm: _daycon(_NullCheck(databuff[i]['State30rpmPV'])),
          TANK31Temp: _daycon(_NullCheck(databuff[i]['State31tempPV'])),
          TANK31Time: _daycon(_NullCheck(databuff[i]['State31timePV'])),
          TANK31Volt: _daycon(_NullCheck(databuff[i]['State31voltPV'])),
          TANK31Amp: _daycon(_NullCheck(databuff[i]['State31amPV'])),
          TANK31Rpm: _daycon(_NullCheck(databuff[i]['State31rpmPV'])),
          TANK32Temp: _daycon(_NullCheck(databuff[i]['State32tempPV'])),
          TANK32Time: _daycon(_NullCheck(databuff[i]['State32timePV'])),
          TANK32Volt: _daycon(_NullCheck(databuff[i]['State32voltPV'])),
          TANK32Amp: _daycon(_NullCheck(databuff[i]['State32amPV'])),
          TANK32Rpm: _daycon(_NullCheck(databuff[i]['State32rpmPV'])),
          TANK33Temp: _daycon(_NullCheck(databuff[i]['State33tempPV'])),
          TANK33Time: _daycon(_NullCheck(databuff[i]['State33timePV'])),
          TANK33Volt: _daycon(_NullCheck(databuff[i]['State33voltPV'])),
          TANK33Amp: _daycon(_NullCheck(databuff[i]['State33amPV'])),
          TANK33Rpm: _daycon(_NullCheck(databuff[i]['State33rpmPV'])),
          TANK34Temp: _daycon(_NullCheck(databuff[i]['State34tempPV'])),
          TANK34Time: _daycon(_NullCheck(databuff[i]['State34timePV'])),
          TANK34Volt: _daycon(_NullCheck(databuff[i]['State34voltPV'])),
          TANK34Amp: _daycon(_NullCheck(databuff[i]['State34amPV'])),
          TANK34Rpm: _daycon(_NullCheck(databuff[i]['State34rpmPV'])),
          TANK35Temp: _daycon(_NullCheck(databuff[i]['State35tempPV'])),
          TANK35Time: _daycon(_NullCheck(databuff[i]['State35timePV'])),
          TANK35Volt: _daycon(_NullCheck(databuff[i]['State35voltPV'])),
          TANK35Amp: _daycon(_NullCheck(databuff[i]['State35amPV'])),
          TANK35Rpm: _daycon(_NullCheck(databuff[i]['State35rpmPV'])),
          TANK36Temp: _daycon(_NullCheck(databuff[i]['State36tempPV'])),
          TANK36Time: _daycon(_NullCheck(databuff[i]['State36timePV'])),
          TANK36Volt: _daycon(_NullCheck(databuff[i]['State36voltPV'])),
          TANK36Amp: _daycon(_NullCheck(databuff[i]['State36amPV'])),
          TANK36Rpm: _daycon(_NullCheck(databuff[i]['State36rpmPV'])),
          TANK37Temp: _daycon(_NullCheck(databuff[i]['State37tempPV'])),
          TANK37Time: _daycon(_NullCheck(databuff[i]['State37timePV'])),
          TANK37Volt: _daycon(_NullCheck(databuff[i]['State37voltPV'])),
          TANK37Amp: _daycon(_NullCheck(databuff[i]['State37amPV'])),
          TANK37Rpm: _daycon(_NullCheck(databuff[i]['State37rpmPV'])),
          TANK38Temp: _daycon(_NullCheck(databuff[i]['State38tempPV'])),
          TANK38Time: _daycon(_NullCheck(databuff[i]['State38timePV'])),
          TANK38Volt: _daycon(_NullCheck(databuff[i]['State38voltPV'])),
          TANK38Amp: _daycon(_NullCheck(databuff[i]['State38amPV'])),
          TANK38Rpm: _daycon(_NullCheck(databuff[i]['State38rpmPV'])),
          TANK39Temp: _daycon(_NullCheck(databuff[i]['State39tempPV'])),
          TANK39Time: _daycon(_NullCheck(databuff[i]['State39timePV'])),
          TANK39Volt: _daycon(_NullCheck(databuff[i]['State39voltPV'])),
          TANK39Amp: _daycon(_NullCheck(databuff[i]['State39amPV'])),
          TANK39Rpm: _daycon(_NullCheck(databuff[i]['State39rpmPV'])),
          TANK40Temp: _daycon(_NullCheck(databuff[i]['State40tempPV'])),
          TANK40Time: _daycon(_NullCheck(databuff[i]['State40timePV'])),
          TANK40Volt: _daycon(_NullCheck(databuff[i]['State40voltPV'])),
          TANK40Amp: _daycon(_NullCheck(databuff[i]['State40amPV'])),
          TANK40Rpm: _daycon(_NullCheck(databuff[i]['State40rpmPV'])),
          TANK41Temp: _daycon(_NullCheck(databuff[i]['State41tempPV'])),
          TANK41Time: _daycon(_NullCheck(databuff[i]['State41timePV'])),
          TANK41Volt: _daycon(_NullCheck(databuff[i]['State41voltPV'])),
          TANK41Amp: _daycon(_NullCheck(databuff[i]['State41amPV'])),
          TANK41Rpm: _daycon(_NullCheck(databuff[i]['State41rpmPV'])),
          TANK42Temp: _daycon(_NullCheck(databuff[i]['State42tempPV'])),
          TANK42Time: _daycon(_NullCheck(databuff[i]['State42timePV'])),
          TANK42Volt: _daycon(_NullCheck(databuff[i]['State42voltPV'])),
          TANK42Amp: _daycon(_NullCheck(databuff[i]['State42amPV'])),
          TANK42Rpm: _daycon(_NullCheck(databuff[i]['State42rpmPV'])),
          TANK43Temp: _daycon(_NullCheck(databuff[i]['State43tempPV'])),
          TANK43Time: _daycon(_NullCheck(databuff[i]['State43timePV'])),
          TANK43Volt: _daycon(_NullCheck(databuff[i]['State43voltPV'])),
          TANK43Amp: _daycon(_NullCheck(databuff[i]['State43amPV'])),
          TANK43Rpm: _daycon(_NullCheck(databuff[i]['State43rpmPV'])),
          TANK44Temp: _daycon(_NullCheck(databuff[i]['State44tempPV'])),
          TANK44Time: _daycon(_NullCheck(databuff[i]['State44timePV'])),
          TANK44Volt: _daycon(_NullCheck(databuff[i]['State44voltPV'])),
          TANK44Amp: _daycon(_NullCheck(databuff[i]['State44amPV'])),
          TANK44Rpm: _daycon(_NullCheck(databuff[i]['State44rpmPV'])),
          TANK45Temp: _daycon(_NullCheck(databuff[i]['State45tempPV'])),
          TANK45Time: _daycon(_NullCheck(databuff[i]['State45timePV'])),
          TANK45Volt: _daycon(_NullCheck(databuff[i]['State45voltPV'])),
          TANK45Amp: _daycon(_NullCheck(databuff[i]['State45amPV'])),
          TANK45Rpm: _daycon(_NullCheck(databuff[i]['State45rpmPV'])),
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
