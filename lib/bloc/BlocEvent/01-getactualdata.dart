import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

import '../../data/global.dart';
import '../../data/model.dart';

//-------------------------------------------------

String server = GserverIND;

abstract class ACTUALDATA_Event {}

class ACTUALDATA_Pressed extends ACTUALDATA_Event {}

class ACTUALDATA_Bloc extends Bloc<ACTUALDATA_Event, actDATAmodel> {
  ACTUALDATA_Bloc() : super(actDATAmodel()) {
    on<ACTUALDATA_Pressed>((event, emit) {
      return _Function_01(actDATAmodel(), emit);
    });
  }
  Future<void> _Function_01(
      actDATAmodel toAdd, Emitter<actDATAmodel> emit) async {
    // final response = await Dio().post(
    //   server + "getactualdata",
    //   data: {},
    // );

    actDATAmodel output = actDATAmodel();
    // if (response.statusCode == 200) {
    //   // var databuff = jsonDecode(response.body);
    //   var databuff = response.data;
    //   // print(databuff);
    //   output = actDATAmodel(
    //     ConditionNo: databuff['D900'],
    //     G: databuff['D1902'],
    //     NG: databuff['D1904'],
    //     s1stoutputVOLTset: databuff['D710'],
    //     s1stoutputVOLTMEASCURRENT: databuff['D2000'],
    //     s1stoutputVOLTMEASMIN: databuff['D2101'],
    //     s1stoutputVOLTMEASMAX: databuff['D2100'],
    //     s1stoutputPOWERMEASCURRENT: databuff['D2001'],
    //     s1stoutputPOWERMEASMIN: databuff['D2103'],
    //     s1stoutputPOWERMEASMAX: databuff['D2102'],
    //     s1stHEATINGTEMPMEASCURRENT: databuff['D2017'],
    //     s1stHEATINGTEMPMEASMIN: databuff['D2118'],
    //     s1stHEATINGTEMPMEASMAX: databuff['D2117'],
    //     s1stHEATINGSETTIME: databuff['D713'],
    //     s1stHEATINGMEASTIME: databuff['D2006'],
    //     s2stoutputVOLTset: databuff['D711'],
    //     s2stoutputVOLTMEASCURRENT: databuff['D2002'],
    //     s2stoutputVOLTMEASMIN: databuff['D2105'],
    //     s2stoutputVOLTMEASMAX: databuff['D2104'],
    //     s2stoutputPOWERMEASCURRENT: databuff['D2003'],
    //     s2stoutputPOWERMEASMIN: databuff['D2107'],
    //     s2stoutputPOWERMEASMAX: databuff['D2106'],
    //     s2stHEATINGTEMPMEASCURRENT: databuff['D2018'],
    //     s2stHEATINGTEMPMEASMIN: databuff['D2120'],
    //     s2stHEATINGTEMPMEASMAX: databuff['D2119'],
    //     s2ndHEATINGWAITSETTIME: databuff['D714'],
    //     s2ndHEATINGWAITMEASTIME: databuff['D2007'],
    //     s2stHEATINGSETTIME: databuff['D715'],
    //     s2stHEATINGMEASTIME: databuff['D2008'],
    //     s3stoutputVOLTset: databuff['D712'],
    //     s3stoutputVOLTMEASCURRENT: databuff['D2004'],
    //     s3stoutputVOLTMEASMIN: databuff['D2109'],
    //     s3stoutputVOLTMEASMAX: databuff['D2108'],
    //     s3stoutputPOWERMEASCURRENT: databuff['D2005'],
    //     s3stoutputPOWERMEASMIN: databuff['D2111'],
    //     s3stoutputPOWERMEASMAX: databuff['D2110'],
    //     s3stHEATINGTEMPMEASCURRENT: databuff['D2019'],
    //     s3stHEATINGTEMPMEASMIN: databuff['D2122'],
    //     s3stHEATINGTEMPMEASMAX: databuff['D2121'],
    //     s3ndHEATINGWAITSETTIME: databuff['D716'],
    //     s3ndHEATINGWAITMEASTIME: databuff['D2009'],
    //     s3stHEATINGSETTIME: databuff['D717'],
    //     s3stHEATINGMEASTIME: databuff['D2010'],
    //     s4stoutputVOLTset: databuff['D721'],
    //     s4stoutputVOLTMEASCURRENT: databuff['D2014'],
    //     s4stoutputVOLTMEASMIN: databuff['D2113'],
    //     s4stoutputVOLTMEASMAX: databuff['D2112'],
    //     s4stoutputPOWERMEASCURRENT: databuff['D2015'],
    //     s4stoutputPOWERMEASMIN: databuff['D2115'],
    //     s4stoutputPOWERMEASMAX: databuff['D2114'],
    //     s4stHEATINGTEMPMEASCURRENT: databuff['D2016'],
    //     s4stHEATINGTEMPMEASMIN: databuff['D2124'],
    //     s4stHEATINGTEMPMEASMAX: databuff['D2123'],
    //     s4ndHEATINGWAITSETTIME: databuff['D719'],
    //     s4ndHEATINGWAITMEASTIME: databuff['D2012'],
    //     s4stHEATINGSETTIME: databuff['D720'],
    //     s4stHEATINGMEASTIME: databuff['D2013'],
    //     AIRCOOLINGTIMESET: databuff['D718'],
    //     AIRCOOLINGTIMEMEAS: databuff['D2011'],
    //     HEADCENTERREV: databuff['D2535'],
    //     TAILCENTERREV: databuff['D2635'],
    //     CYCLETIME: databuff['D2230'],
    //     BARCODE:
    //         databuff['BARCODE'] == null ? '' : databuff['BARCODE'].toString(),
    //   );
    // } else {}
    emit(output);
  }
}
