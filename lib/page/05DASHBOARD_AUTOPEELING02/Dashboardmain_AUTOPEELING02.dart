import 'dart:async';

import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/05-01-getactualdata_AUTOPEELING02.dart';
import '../../data/global.dart';
import '../../data/model.dart';
import '../../data/modelmaster.dart';
import '../../widget/common/ComInputText.dart';
import '../../widget/table/MasterTable_AUTOPEELING02.dart';
import 'Dashboardvar_AUTOPEELING02.dart';

late BuildContext dhcontext_AUTOPEELING02;

ScrollController _controllerReportH = ScrollController();
ScrollController _controllerReportV = ScrollController();

class DashBoard_AUTOPEELING02 extends StatelessWidget {
  DashBoard_AUTOPEELING02({Key? key, this.datatable}) : super(key: key);
  List<YMDDATAMASTERmodel>? datatable;

  @override
  Widget build(BuildContext context) {
    dhcontext_AUTOPEELING02 = context;
    return DashBoard_AUTOPEELING02Body(
      datatable: datatable,
    );
  }
}

class DashBoard_AUTOPEELING02Body extends StatefulWidget {
  DashBoard_AUTOPEELING02Body({Key? key, this.datatable}) : super(key: key);
  List<YMDDATAMASTERmodel>? datatable;

  @override
  State<DashBoard_AUTOPEELING02Body> createState() =>
      _DashBoard_AUTOPEELING02BodyState();
}

int ing = 0;

// Timer timer = new Timer(new Duration(seconds: 3), () {
//   debugPrint("Print after 3 seconds");
//     ing++;
//     print(ing);
// });

class _DashBoard_AUTOPEELING02BodyState
    extends State<DashBoard_AUTOPEELING02Body> {
  @override
  void initState() {
    super.initState();
    dhcontext_AUTOPEELING02
        .read<ACTUALDATA_AUTOPEELING02_Bloc>()
        .add(ACTUALDATA_AUTOPEELING02_Pressed());
    Timer.periodic(const Duration(seconds: 5), (timmer) {
      dhcontext_AUTOPEELING02
          .read<ACTUALDATA_AUTOPEELING02_Bloc>()
          .add(ACTUALDATA_AUTOPEELING02_Pressed());

      Dashboardvar_AUTOPEELING02_DHtimer = timmer;
    });

    //----------
    // timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    // dhcontext_AUTOPEELING02 = context;
    Pagememory = 5;
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
              MasterTable_AUTOPEELING02(),
              Expanded(
                child: SingleChildScrollView(
                  controller: _controllerReportV,
                  // scrollDirection: Axis.horizontal,
                  child: Column(children: [
                    for (int i = 0; i < _datatable.length; i++) ...[
                      MasterTable_AUTOPEELING02DATA(
                        SetParName: (v) {
                          print(v);
                          Dashboardvar_AUTOPEELING02.SetPartName = '';
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
                      isContr: Dashboardvar_AUTOPEELING02.iscontrol,
                      fnContr: (input) {
                        setState(() {
                          Dashboardvar_AUTOPEELING02.iscontrol = input;
                        });
                      },
                      sValue: Dashboardvar_AUTOPEELING02.SetPartName,
                      returnfunc: (String s) {
                        Dashboardvar_AUTOPEELING02.SetPartName = s;
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
                            "PartName": Dashboardvar_AUTOPEELING02.SetPartName,
                            "ItemID": ItemID,
                          },
                        );
                        dhcontext_AUTOPEELING02
                            .read<ACTUALDATA_AUTOPEELING02_Bloc>()
                            .add(ACTUALDATA_AUTOPEELING02_Pressed());
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
      child: MasterTable_AUTOPEELING02(),
    );
  }
}
