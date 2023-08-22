import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

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
      // var databuff = jsonDecode(response.body);
      var databuff = response.data;
      // var databuff = testdata;
      //   // print(databuff);
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
