import 'dart:async';

import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/01-01-getactualdata.dart';
import '../../bloc/BlocEvent/07-01-getactualdata_AUTOGAMA.dart';
import '../../data/global.dart';

import '../../data/modelmaster.dart';
import '../../widget/common/ComInputText.dart';
import '../../widget/table/MasterTable_AUTOGAMA.dart';
import 'Dashboardvar_AUTOSN.dart';

late BuildContext dhcontext_AUTOGAMA;

ScrollController _controllerReportH = ScrollController();
ScrollController _controllerReportV = ScrollController();

class DashBoard_AUTOGAMA extends StatelessWidget {
  DashBoard_AUTOGAMA({Key? key, this.datatable}) : super(key: key);
  List<YMDDATAMASTERmodel2>? datatable;

  @override
  Widget build(BuildContext context) {
    dhcontext_AUTOGAMA = context;
    return DashBoard_AUTOGAMABody(
      datatable: datatable,
    );
  }
}

class DashBoard_AUTOGAMABody extends StatefulWidget {
  DashBoard_AUTOGAMABody({Key? key, this.datatable}) : super(key: key);
  List<YMDDATAMASTERmodel2>? datatable;

  @override
  State<DashBoard_AUTOGAMABody> createState() => _DashBoard_AUTOGAMABodyState();
}

int ing = 0;

// Timer timer = new Timer(new Duration(seconds: 3), () {
//   debugPrint("Print after 3 seconds");
//     ing++;
//     print(ing);
// });

class _DashBoard_AUTOGAMABodyState extends State<DashBoard_AUTOGAMABody> {
  @override
  void initState() {
    super.initState();
    context.read<ACTUALDATA_AUTOGAMA_Bloc>().add(ACTUALDATA_AUTOGAMA_Pressed());
    Timer.periodic(const Duration(seconds: 5), (timmer) {
      context
          .read<ACTUALDATA_AUTOGAMA_Bloc>()
          .add(ACTUALDATA_AUTOGAMA_Pressed());
      Dashboardvar_AUTOGAMA_DHtimer = timmer;
    });

    //----------
  }

  @override
  void dispose() {
    Dashboardvar_AUTOGAMA_DHtimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // dhcontext_AUTOGAMA = context;
    Pagememory = 7;
    List<YMDDATAMASTERmodel2> _datatable = widget.datatable ?? [];

    return SizedBox(
      height: 700,
      // width: 800,

      child: Scrollbar(
        controller: _controllerReportH,
        thumbVisibility: true,
        interactive: true,
        thickness: 10,
        radius: const Radius.circular(20),
        child: SingleChildScrollView(
          controller: _controllerReportH,
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Container(
                child: Text(""),
              ),
              MasterTable_AUTOGAMA(),
              Expanded(
                child: SingleChildScrollView(
                  controller: _controllerReportV,
                  // scrollDirection: Axis.horizontal,
                  child: Column(children: [
                    for (int i = 0; i < _datatable.length; i++) ...[
                      // for (int i = 0; i < 10; i++) ...[
                      MasterTable_AUTOGAMADATA(
                        SetParName: (v) {
                          print(v);
                          Dashboardvar_AUTOGAMA.SetPartName = '';
                          // SetPartName(context, v);
                        },
                        nint: i,
                        NO: _datatable[i].NO,
                        Item: _datatable[i].Item,
                        PartNO: _datatable[i].PartNO,
                        PartName: _datatable[i].PartName,
                        QTY: _datatable[i].QTY,
                        LoadingTime01: _datatable[i].LoadingTime01,
                        TANK01Temp: _datatable[i].TANK01Temp,
                        TANK01Time: _datatable[i].TANK01Time,
                        TANK01Volt: _datatable[i].TANK01Volt,
                        TANK01Amp: _datatable[i].TANK01Amp,
                        TANK01Rpm: _datatable[i].TANK01Rpm,
                        TANK02Temp: _datatable[i].TANK02Temp,
                        TANK02Time: _datatable[i].TANK02Time,
                        TANK02Volt: _datatable[i].TANK02Volt,
                        TANK02Amp: _datatable[i].TANK02Amp,
                        TANK02Rpm: _datatable[i].TANK02Rpm,
                        TANK03Temp: _datatable[i].TANK03Temp,
                        TANK03Time: _datatable[i].TANK03Time,
                        TANK03Volt: _datatable[i].TANK03Volt,
                        TANK03Amp: _datatable[i].TANK03Amp,
                        TANK03Rpm: _datatable[i].TANK03Rpm,
                        TANK04Temp: _datatable[i].TANK04Temp,
                        TANK04Time: _datatable[i].TANK04Time,
                        TANK04Volt: _datatable[i].TANK04Volt,
                        TANK04Amp: _datatable[i].TANK04Amp,
                        TANK04Rpm: _datatable[i].TANK04Rpm,
                        TANK05Temp: _datatable[i].TANK05Temp,
                        TANK05Time: _datatable[i].TANK05Time,
                        TANK05Volt: _datatable[i].TANK05Volt,
                        TANK05Amp: _datatable[i].TANK05Amp,
                        TANK05Rpm: _datatable[i].TANK05Rpm,
                        TANK06Temp: _datatable[i].TANK06Temp,
                        TANK06Time: _datatable[i].TANK06Time,
                        TANK06Volt: _datatable[i].TANK06Volt,
                        TANK06Amp: _datatable[i].TANK06Amp,
                        TANK06Rpm: _datatable[i].TANK06Rpm,
                        TANK07Temp: _datatable[i].TANK07Temp,
                        TANK07Time: _datatable[i].TANK07Time,
                        TANK07Volt: _datatable[i].TANK07Volt,
                        TANK07Amp: _datatable[i].TANK07Amp,
                        TANK07Rpm: _datatable[i].TANK07Rpm,
                        TANK08Temp: _datatable[i].TANK08Temp,
                        TANK08Time: _datatable[i].TANK08Time,
                        TANK08Volt: _datatable[i].TANK08Volt,
                        TANK08Amp: _datatable[i].TANK08Amp,
                        TANK08Rpm: _datatable[i].TANK08Rpm,
                        TANK09Temp: _datatable[i].TANK09Temp,
                        TANK09Time: _datatable[i].TANK09Time,
                        TANK09Volt: _datatable[i].TANK09Volt,
                        TANK09Amp: _datatable[i].TANK09Amp,
                        TANK09Rpm: _datatable[i].TANK09Rpm,
                        TANK10Temp: _datatable[i].TANK10Temp,
                        TANK10Time: _datatable[i].TANK10Time,
                        TANK10Volt: _datatable[i].TANK10Volt,
                        TANK10Amp: _datatable[i].TANK10Amp,
                        TANK10Rpm: _datatable[i].TANK10Rpm,
                        TANK11Temp: _datatable[i].TANK11Temp,
                        TANK11Time: _datatable[i].TANK11Time,
                        TANK11Volt: _datatable[i].TANK11Volt,
                        TANK11Amp: _datatable[i].TANK11Amp,
                        TANK11Rpm: _datatable[i].TANK11Rpm,
                        TANK12Temp: _datatable[i].TANK12Temp,
                        TANK12Time: _datatable[i].TANK12Time,
                        TANK12Volt: _datatable[i].TANK12Volt,
                        TANK12Amp: _datatable[i].TANK12Amp,
                        TANK12Rpm: _datatable[i].TANK12Rpm,
                        TANK13Temp: _datatable[i].TANK13Temp,
                        TANK13Time: _datatable[i].TANK13Time,
                        TANK13Volt: _datatable[i].TANK13Volt,
                        TANK13Amp: _datatable[i].TANK13Amp,
                        TANK13Rpm: _datatable[i].TANK13Rpm,
                        TANK14Temp: _datatable[i].TANK14Temp,
                        TANK14Time: _datatable[i].TANK14Time,
                        TANK14Volt: _datatable[i].TANK14Volt,
                        TANK14Amp: _datatable[i].TANK14Amp,
                        TANK14Rpm: _datatable[i].TANK14Rpm,
                        TANK15Temp: _datatable[i].TANK15Temp,
                        TANK15Time: _datatable[i].TANK15Time,
                        TANK15Volt: _datatable[i].TANK15Volt,
                        TANK15Amp: _datatable[i].TANK15Amp,
                        TANK15Rpm: _datatable[i].TANK15Rpm,
                        TANK16Temp: _datatable[i].TANK16Temp,
                        TANK16Time: _datatable[i].TANK16Time,
                        TANK16Volt: _datatable[i].TANK16Volt,
                        TANK16Amp: _datatable[i].TANK16Amp,
                        TANK16Rpm: _datatable[i].TANK16Rpm,
                        TANK17Temp: _datatable[i].TANK17Temp,
                        TANK17Time: _datatable[i].TANK17Time,
                        TANK17Volt: _datatable[i].TANK17Volt,
                        TANK17Amp: _datatable[i].TANK17Amp,
                        TANK17Rpm: _datatable[i].TANK17Rpm,
                        TANK18Temp: _datatable[i].TANK18Temp,
                        TANK18Time: _datatable[i].TANK18Time,
                        TANK18Volt: _datatable[i].TANK18Volt,
                        TANK18Amp: _datatable[i].TANK18Amp,
                        TANK18Rpm: _datatable[i].TANK18Rpm,
                        TANK19Temp: _datatable[i].TANK19Temp,
                        TANK19Time: _datatable[i].TANK19Time,
                        TANK19Volt: _datatable[i].TANK19Volt,
                        TANK19Amp: _datatable[i].TANK19Amp,
                        TANK19Rpm: _datatable[i].TANK19Rpm,
                        TANK20Temp: _datatable[i].TANK20Temp,
                        TANK20Time: _datatable[i].TANK20Time,
                        TANK20Volt: _datatable[i].TANK20Volt,
                        TANK20Amp: _datatable[i].TANK20Amp,
                        TANK20Rpm: _datatable[i].TANK20Rpm,
                        TANK21Temp: _datatable[i].TANK21Temp,
                        TANK21Time: _datatable[i].TANK21Time,
                        TANK21Volt: _datatable[i].TANK21Volt,
                        TANK21Amp: _datatable[i].TANK21Amp,
                        TANK21Rpm: _datatable[i].TANK21Rpm,
                        TANK22Temp: _datatable[i].TANK22Temp,
                        TANK22Time: _datatable[i].TANK22Time,
                        TANK22Volt: _datatable[i].TANK22Volt,
                        TANK22Amp: _datatable[i].TANK22Amp,
                        TANK22Rpm: _datatable[i].TANK22Rpm,
                        TANK23Temp: _datatable[i].TANK23Temp,
                        TANK23Time: _datatable[i].TANK23Time,
                        TANK23Volt: _datatable[i].TANK23Volt,
                        TANK23Amp: _datatable[i].TANK23Amp,
                        TANK23Rpm: _datatable[i].TANK23Rpm,
                        TANK24Temp: _datatable[i].TANK24Temp,
                        TANK24Time: _datatable[i].TANK24Time,
                        TANK24Volt: _datatable[i].TANK24Volt,
                        TANK24Amp: _datatable[i].TANK24Amp,
                        TANK24Rpm: _datatable[i].TANK24Rpm,
                        TANK25Temp: _datatable[i].TANK25Temp,
                        TANK25Time: _datatable[i].TANK25Time,
                        TANK25Volt: _datatable[i].TANK25Volt,
                        TANK25Amp: _datatable[i].TANK25Amp,
                        TANK25Rpm: _datatable[i].TANK25Rpm,
                        TANK26Temp: _datatable[i].TANK26Temp,
                        TANK26Time: _datatable[i].TANK26Time,
                        TANK26Volt: _datatable[i].TANK26Volt,
                        TANK26Amp: _datatable[i].TANK26Amp,
                        TANK26Rpm: _datatable[i].TANK26Rpm,
                        TANK27Temp: _datatable[i].TANK27Temp,
                        TANK27Time: _datatable[i].TANK27Time,
                        TANK27Volt: _datatable[i].TANK27Volt,
                        TANK27Amp: _datatable[i].TANK27Amp,
                        TANK27Rpm: _datatable[i].TANK27Rpm,
                        TANK28Temp: _datatable[i].TANK28Temp,
                        TANK28Time: _datatable[i].TANK28Time,
                        TANK28Volt: _datatable[i].TANK28Volt,
                        TANK28Amp: _datatable[i].TANK28Amp,
                        TANK28Rpm: _datatable[i].TANK28Rpm,
                        TANK29Temp: _datatable[i].TANK29Temp,
                        TANK29Time: _datatable[i].TANK29Time,
                        TANK29Volt: _datatable[i].TANK29Volt,
                        TANK29Amp: _datatable[i].TANK29Amp,
                        TANK29Rpm: _datatable[i].TANK29Rpm,
                        TANK30Temp: _datatable[i].TANK30Temp,
                        TANK30Time: _datatable[i].TANK30Time,
                        TANK30Volt: _datatable[i].TANK30Volt,
                        TANK30Amp: _datatable[i].TANK30Amp,
                        TANK30Rpm: _datatable[i].TANK30Rpm,
                        TANK31Temp: _datatable[i].TANK31Temp,
                        TANK31Time: _datatable[i].TANK31Time,
                        TANK31Volt: _datatable[i].TANK31Volt,
                        TANK31Amp: _datatable[i].TANK31Amp,
                        TANK31Rpm: _datatable[i].TANK31Rpm,
                        TANK32Temp: _datatable[i].TANK32Temp,
                        TANK32Time: _datatable[i].TANK32Time,
                        TANK32Volt: _datatable[i].TANK32Volt,
                        TANK32Amp: _datatable[i].TANK32Amp,
                        TANK32Rpm: _datatable[i].TANK32Rpm,
                        TANK33Temp: _datatable[i].TANK33Temp,
                        TANK33Time: _datatable[i].TANK33Time,
                        TANK33Volt: _datatable[i].TANK33Volt,
                        TANK33Amp: _datatable[i].TANK33Amp,
                        TANK33Rpm: _datatable[i].TANK33Rpm,
                        TANK34Temp: _datatable[i].TANK34Temp,
                        TANK34Time: _datatable[i].TANK34Time,
                        TANK34Volt: _datatable[i].TANK34Volt,
                        TANK34Amp: _datatable[i].TANK34Amp,
                        TANK34Rpm: _datatable[i].TANK34Rpm,
                        TANK35Temp: _datatable[i].TANK35Temp,
                        TANK35Time: _datatable[i].TANK35Time,
                        TANK35Volt: _datatable[i].TANK35Volt,
                        TANK35Amp: _datatable[i].TANK35Amp,
                        TANK35Rpm: _datatable[i].TANK35Rpm,
                        TANK36Temp: _datatable[i].TANK36Temp,
                        TANK36Time: _datatable[i].TANK36Time,
                        TANK36Volt: _datatable[i].TANK36Volt,
                        TANK36Amp: _datatable[i].TANK36Amp,
                        TANK36Rpm: _datatable[i].TANK36Rpm,
                        TANK37Temp: _datatable[i].TANK37Temp,
                        TANK37Time: _datatable[i].TANK37Time,
                        TANK37Volt: _datatable[i].TANK37Volt,
                        TANK37Amp: _datatable[i].TANK37Amp,
                        TANK37Rpm: _datatable[i].TANK37Rpm,
                        TANK38Temp: _datatable[i].TANK38Temp,
                        TANK38Time: _datatable[i].TANK38Time,
                        TANK38Volt: _datatable[i].TANK38Volt,
                        TANK38Amp: _datatable[i].TANK38Amp,
                        TANK38Rpm: _datatable[i].TANK38Rpm,
                        TANK39Temp: _datatable[i].TANK39Temp,
                        TANK39Time: _datatable[i].TANK39Time,
                        TANK39Volt: _datatable[i].TANK39Volt,
                        TANK39Amp: _datatable[i].TANK39Amp,
                        TANK39Rpm: _datatable[i].TANK39Rpm,
                        TANK40Temp: _datatable[i].TANK40Temp,
                        TANK40Time: _datatable[i].TANK40Time,
                        TANK40Volt: _datatable[i].TANK40Volt,
                        TANK40Amp: _datatable[i].TANK40Amp,
                        TANK40Rpm: _datatable[i].TANK40Rpm,
                        TANK41Temp: _datatable[i].TANK41Temp,
                        TANK41Time: _datatable[i].TANK41Time,
                        TANK41Volt: _datatable[i].TANK41Volt,
                        TANK41Amp: _datatable[i].TANK41Amp,
                        TANK41Rpm: _datatable[i].TANK41Rpm,
                        TANK42Temp: _datatable[i].TANK42Temp,
                        TANK42Time: _datatable[i].TANK42Time,
                        TANK42Volt: _datatable[i].TANK42Volt,
                        TANK42Amp: _datatable[i].TANK42Amp,
                        TANK42Rpm: _datatable[i].TANK42Rpm,
                        TANK43Temp: _datatable[i].TANK43Temp,
                        TANK43Time: _datatable[i].TANK43Time,
                        TANK43Volt: _datatable[i].TANK43Volt,
                        TANK43Amp: _datatable[i].TANK43Amp,
                        TANK43Rpm: _datatable[i].TANK43Rpm,
                        TANK44Temp: _datatable[i].TANK44Temp,
                        TANK44Time: _datatable[i].TANK44Time,
                        TANK44Volt: _datatable[i].TANK44Volt,
                        TANK44Amp: _datatable[i].TANK44Amp,
                        TANK44Rpm: _datatable[i].TANK44Rpm,
                        TANK45Temp: _datatable[i].TANK45Temp,
                        TANK45Time: _datatable[i].TANK45Time,
                        TANK45Volt: _datatable[i].TANK45Volt,
                        TANK45Amp: _datatable[i].TANK45Amp,
                        TANK45Rpm: _datatable[i].TANK45Rpm,
                        TANK46Temp: _datatable[i].TANK46Temp,
                        TANK46Time: _datatable[i].TANK46Time,
                        TANK46Volt: _datatable[i].TANK46Volt,
                        TANK46Amp: _datatable[i].TANK46Amp,
                        TANK46Rpm: _datatable[i].TANK46Rpm,
                        TANK47Temp: _datatable[i].TANK47Temp,
                        TANK47Time: _datatable[i].TANK47Time,
                        TANK47Volt: _datatable[i].TANK47Volt,
                        TANK47Amp: _datatable[i].TANK47Amp,
                        TANK47Rpm: _datatable[i].TANK47Rpm,
                        TANK48Temp: _datatable[i].TANK48Temp,
                        TANK48Time: _datatable[i].TANK48Time,
                        TANK48Volt: _datatable[i].TANK48Volt,
                        TANK48Amp: _datatable[i].TANK48Amp,
                        TANK48Rpm: _datatable[i].TANK48Rpm,
                        TANK49Temp: _datatable[i].TANK49Temp,
                        TANK49Time: _datatable[i].TANK49Time,
                        TANK49Volt: _datatable[i].TANK49Volt,
                        TANK49Amp: _datatable[i].TANK49Amp,
                        TANK49Rpm: _datatable[i].TANK49Rpm,
                        TANK50Temp: _datatable[i].TANK50Temp,
                        TANK50Time: _datatable[i].TANK50Time,
                        TANK50Volt: _datatable[i].TANK50Volt,
                        TANK50Amp: _datatable[i].TANK50Amp,
                        TANK50Rpm: _datatable[i].TANK50Rpm,
                      ),
                    ],
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
