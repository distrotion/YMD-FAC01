import 'dart:async';

import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/03-01-getactualdata_AUTOCU.dart';
import '../../data/global.dart';
import '../../data/model.dart';
import '../../data/modelmaster.dart';
import '../../widget/common/ComInputText.dart';
import '../../widget/table/MasterTable_AUTOCU.dart';
import 'Dashboardvar_AUTOCU.dart';

late BuildContext dhcontext_autocu;

ScrollController _controllerReportH = ScrollController();
ScrollController _controllerReportV = ScrollController();

class DashBoard_AUTOCU extends StatelessWidget {
  DashBoard_AUTOCU({Key? key, this.datatable}) : super(key: key);
  List<YMDDATAMASTERmodel>? datatable;

  @override
  Widget build(BuildContext context) {
    dhcontext_autocu = context;
    return DashBoard_AUTOCUBody(
      datatable: datatable,
    );
  }
}

class DashBoard_AUTOCUBody extends StatefulWidget {
  DashBoard_AUTOCUBody({Key? key, this.datatable}) : super(key: key);
  List<YMDDATAMASTERmodel>? datatable;

  @override
  State<DashBoard_AUTOCUBody> createState() => _DashBoard_AUTOCUBodyState();
}

int ing = 0;

// Timer timer = new Timer(new Duration(seconds: 3), () {
//   debugPrint("Print after 3 seconds");
//     ing++;
//     print(ing);
// });

class _DashBoard_AUTOCUBodyState extends State<DashBoard_AUTOCUBody> {
  @override
  void initState() {
    super.initState();
    dhcontext_autocu
        .read<ACTUALDATA_AUTOCU_Bloc>()
        .add(ACTUALDATA_AUTOCU_Pressed());
    Timer.periodic(const Duration(seconds: 5), (timmer) {
      dhcontext_autocu
          .read<ACTUALDATA_AUTOCU_Bloc>()
          .add(ACTUALDATA_AUTOCU_Pressed());

      Dashboardvar_AUTOCU_DHtimer = timmer;
    });

    //----------
    // timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    // dhcontext_autocu = context;
    Pagememory = 3;
    List<YMDDATAMASTERmodel> _datatable = widget.datatable ?? [];

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
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Text(""),
              ),
              MasterTable_AUTOCU(),
              Expanded(
                child: SingleChildScrollView(
                  controller: _controllerReportV,
                  // scrollDirection: Axis.horizontal,
                  child: Column(children: [
                    for (int i = 0; i < _datatable.length; i++) ...[
                      MasterTable_AUTOCUDATA(
                        SetParName: (v) {
                          print(v);
                          Dashboardvar_AUTOCU.SetPartName = '';
                          SetPartName(context, v);
                        },
                        nint: i,
                        NO: _datatable[i].NO,
                        Item: _datatable[i].Item,
                        ItemNO: _datatable[i].ItemNO,
                        PartNO: _datatable[i].PartNO,
                        PartName: _datatable[i].PartName,
                        QTY: _datatable[i].QTY,
                        LoadingTime01: _datatable[i].LoadingTime01,
                        Tank02Temp: _datatable[i].Tank02Temp,
                        Tank02Time: _datatable[i].Tank02Time,
                        Tank03Temp: _datatable[i].Tank03Temp,
                        Tank03Time: _datatable[i].Tank03Time,
                        Tank04Temp: _datatable[i].Tank04Temp,
                        Tank04Time: _datatable[i].Tank04Time,
                        Tank05Temp: _datatable[i].Tank05Temp,
                        Tank05Time: _datatable[i].Tank05Time,
                        Tank06Temp: _datatable[i].Tank06Temp,
                        Tank06Time: _datatable[i].Tank06Time,
                        Tank07Temp: _datatable[i].Tank07Temp,
                        Tank07Time: _datatable[i].Tank07Time,
                        Tank08Temp: _datatable[i].Tank08Temp,
                        Tank08Time: _datatable[i].Tank08Time,
                        Tank09Temp: _datatable[i].Tank09Temp,
                        Tank09Time: _datatable[i].Tank09Time,
                        Tank10Temp: _datatable[i].Tank10Temp,
                        Tank10Time: _datatable[i].Tank10Time,
                        Tank11Temp: _datatable[i].Tank11Temp,
                        Tank11Time: _datatable[i].Tank11Time,
                        Tank12Temp: _datatable[i].Tank12Temp,
                        Tank12Time: _datatable[i].Tank12Time,
                        Tank13Temp: _datatable[i].Tank13Temp,
                        Tank13Time: _datatable[i].Tank13Time,
                        Tank14Temp: _datatable[i].Tank14Temp,
                        Tank14Time: _datatable[i].Tank14Time,
                        Tank15Temp: _datatable[i].Tank15Temp,
                        Tank15Time: _datatable[i].Tank15Time,
                        Tank16Temp: _datatable[i].Tank16Temp,
                        Tank16Time: _datatable[i].Tank16Time,
//
                        Tank17Volt: _datatable[i].Tank17Volt,
                        Tank17Amp: _datatable[i].Tank17Amp,
                        Tank17Temp: _datatable[i].Tank17Temp,
                        Tank17Rpm: _datatable[i].Tank17Rpm,
                        Tank17Time: _datatable[i].Tank17Time,
//
                        Tank18Temp: _datatable[i].Tank18Temp,
                        Tank18Time: _datatable[i].Tank18Time,
                        Tank19Temp: _datatable[i].Tank19Temp,
                        Tank19Time: _datatable[i].Tank19Time,
//
                        Tank20Volt: _datatable[i].Tank20Volt,
                        Tank20Amp: _datatable[i].Tank20Amp,
                        Tank20Temp: _datatable[i].Tank20Temp,
                        Tank20Rpm: _datatable[i].Tank20Rpm,
                        Tank20Time: _datatable[i].Tank20Time,
//
                        Tank21Temp: _datatable[i].Tank21Temp,
                        Tank21Time: _datatable[i].Tank21Time,
                        Tank22Temp: _datatable[i].Tank22Temp,
                        Tank22Time: _datatable[i].Tank22Time,
                        Tank23Temp: _datatable[i].Tank23Temp,
                        Tank23Time: _datatable[i].Tank23Time,
//
                        Tank24Volt: _datatable[i].Tank24Volt,
                        Tank24Amp: _datatable[i].Tank24Amp,
                        Tank24Temp: _datatable[i].Tank24Temp,
                        Tank24Rpm: _datatable[i].Tank24Rpm,
                        Tank24Time: _datatable[i].Tank24Time,
//
                        Tank25Temp: _datatable[i].Tank25Temp,
                        Tank25Time: _datatable[i].Tank25Time,
                        Tank26Temp: _datatable[i].Tank26Temp,
                        Tank26Time: _datatable[i].Tank26Time,
//
                        Tank27Volt: _datatable[i].Tank27Volt,
                        Tank27Amp: _datatable[i].Tank27Amp,
                        Tank27Temp: _datatable[i].Tank27Temp,
                        Tank27Rpm: _datatable[i].Tank27Rpm,
                        Tank27Time: _datatable[i].Tank27Time,
//
                        Tank28Volt: _datatable[i].Tank28Volt,
                        Tank28Amp: _datatable[i].Tank28Amp,
                        Tank28Temp: _datatable[i].Tank28Temp,
                        Tank28Rpm: _datatable[i].Tank28Rpm,
                        Tank28Time: _datatable[i].Tank28Time,
//
                        Tank29Temp: _datatable[i].Tank29Temp,
                        Tank29Time: _datatable[i].Tank29Time,
//
                        Tank30Volt: _datatable[i].Tank30Volt,
                        Tank30Amp: _datatable[i].Tank30Amp,
                        Tank30Temp: _datatable[i].Tank30Temp,
                        Tank30Rpm: _datatable[i].Tank30Rpm,
                        Tank30Time: _datatable[i].Tank30Time,
                        Tank31Volt: _datatable[i].Tank31Volt,
                        Tank31Amp: _datatable[i].Tank31Amp,
                        Tank31Temp: _datatable[i].Tank31Temp,
                        Tank31Rpm: _datatable[i].Tank31Rpm,
                        Tank31Time: _datatable[i].Tank31Time,
//
                        Tank32Temp: _datatable[i].Tank32Temp,
                        Tank32Time: _datatable[i].Tank32Time,
//
                        Tank33Volt: _datatable[i].Tank33Volt,
                        Tank33Amp: _datatable[i].Tank33Amp,
                        Tank33Temp: _datatable[i].Tank33Temp,
                        Tank33Rpm: _datatable[i].Tank33Rpm,
                        Tank33Time: _datatable[i].Tank33Time,
                        Tank34Volt: _datatable[i].Tank34Volt,
                        Tank34Amp: _datatable[i].Tank34Amp,
                        Tank34Temp: _datatable[i].Tank34Temp,
                        Tank34Rpm: _datatable[i].Tank34Rpm,
                        Tank34Time: _datatable[i].Tank34Time,
//
                        Tank35Temp: _datatable[i].Tank35Temp,
                        Tank35Time: _datatable[i].Tank35Time,
//
                        Tank36Volt: _datatable[i].Tank36Volt,
                        Tank36Amp: _datatable[i].Tank36Amp,
                        Tank36Temp: _datatable[i].Tank36Temp,
                        Tank36Rpm: _datatable[i].Tank36Rpm,
                        Tank36Time: _datatable[i].Tank36Time,
                        Tank37Volt: _datatable[i].Tank37Volt,
                        Tank37Amp: _datatable[i].Tank37Amp,
                        Tank37Temp: _datatable[i].Tank37Temp,
                        Tank37Rpm: _datatable[i].Tank37Rpm,
                        Tank37Time: _datatable[i].Tank37Time,
//
                        Tank38Temp: _datatable[i].Tank38Temp,
                        Tank38Time: _datatable[i].Tank38Time,
//
                        Tank39Temp: _datatable[i].Tank39Temp,
                        Tank39Time: _datatable[i].Tank39Time,
                        Tank40Temp: _datatable[i].Tank40Temp,
                        Tank40Time: _datatable[i].Tank40Time,
                        Tank41Temp: _datatable[i].Tank41Temp,
                        Tank41Time: _datatable[i].Tank41Time,
                        Tank42Temp: _datatable[i].Tank42Temp,
                        Tank42Time: _datatable[i].Tank42Time,
                        Tank43Temp: _datatable[i].Tank43Temp,
                        Tank43Time: _datatable[i].Tank43Time,
                        Tank44Temp: _datatable[i].Tank44Temp,
                        Tank44Time: _datatable[i].Tank44Time,
                        Tank45Temp: _datatable[i].Tank45Temp,
                        Tank45Time: _datatable[i].Tank45Time,
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

  void SetPartName(
    BuildContext contextin,
    String ItemID,
  ) {
    showDialog(
      context: contextin,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
          child: SizedBox(
              height: 200,
              width: 300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(contextin);
                        },
                        child: const SizedBox(
                          height: 24,
                          width: 36,
                          child: Padding(
                            padding: EdgeInsets.only(right: 12),
                            child: Center(child: Icon(Icons.close)),
                          ),
                        ),
                      ),
                    ),
                    Text(ItemID),
                    const SizedBox(
                      height: 20,
                    ),
                    ComInputText(
                      width: 250,
                      nLimitedChar: 200,
                      height: 40,
                      isContr: Dashboardvar_AUTOCU.iscontrol,
                      fnContr: (input) {
                        setState(() {
                          Dashboardvar_AUTOCU.iscontrol = input;
                        });
                      },
                      sValue: Dashboardvar_AUTOCU.SetPartName,
                      returnfunc: (String s) {
                        Dashboardvar_AUTOCU.SetPartName = s;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () async {
                        final response = await Dio().post(
                          server + "textpartname_AUTOCU",
                          data: {
                            "PartName": Dashboardvar_AUTOCU.SetPartName,
                            "ItemID": ItemID,
                          },
                        );
                        dhcontext_autocu
                            .read<ACTUALDATA_AUTOCU_Bloc>()
                            .add(ACTUALDATA_AUTOCU_Pressed());
                        Navigator.pop(contextin);
                      },
                      child: Container(
                        height: 40,
                        width: 250,
                        color: Colors.blue,
                        child: Center(
                          child: Text("SAVE"),
                        ),
                      ),
                    )
                  ],
                ),
              )),
        );
      },
    );
  }
}

class HEADER extends StatelessWidget {
  const HEADER({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: _controllerReportH,
      thumbVisibility: true,
      interactive: true,
      thickness: 10,
      radius: const Radius.circular(20),
      child: MasterTable_AUTOCU(),
    );
  }
}
