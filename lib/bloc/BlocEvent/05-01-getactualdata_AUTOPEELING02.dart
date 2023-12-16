import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

import '../../data/global.dart';
import '../../data/model.dart';
import '../../data/modelmaster.dart';
import '../../data/test.dart';

//-------------------------------------------------

String server = GserverYMD;

abstract class ACTUALDATA_AUTOPEELING02_Event {}

class ACTUALDATA_AUTOPEELING02_Pressed extends ACTUALDATA_AUTOPEELING02_Event {}

class ACTUALDATA_AUTOPEELING02_Bloc
    extends Bloc<ACTUALDATA_AUTOPEELING02_Event, List<YMDDATAMASTERmodel>> {
  ACTUALDATA_AUTOPEELING02_Bloc() : super([]) {
    on<ACTUALDATA_AUTOPEELING02_Pressed>((event, emit) {
      return _Function_01([], emit);
    });
  }
  Future<void> _Function_01(List<YMDDATAMASTERmodel> toAdd,
      Emitter<List<YMDDATAMASTERmodel>> emit) async {
    final response = await Dio().post(
      server + "Today_AUTOPL2",
      data: {},
    );

    List<YMDDATAMASTERmodel> output = [];
    if (response.statusCode == 200) {
      // if (true) {
      var databuff = response.data;
      // var databuff = testdata;
      // print(databuff);
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
