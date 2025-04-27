import 'dart:async';

import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/01-01-getactualdata.dart';
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
    // context.read<ACTUALDATA_Bloc>().add(ACTUALDATA_Pressed());
    Timer.periodic(const Duration(seconds: 5), (timmer) {
      // context.read<ACTUALDATA_Bloc>().add(ACTUALDATA_Pressed());
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
                          SetPartName(context, v);
                        },
                        nint: i,
                        NO: _datatable[i].NO,
                        Item: _datatable[i].Item,
                        PartNO: _datatable[i].PartNO,
                        PartName: _datatable[i].PartName,
                        QTY: _datatable[i].QTY,
                        LoadingTime01: _datatable[i].LoadingTime01,
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
                      isContr: Dashboardvar_AUTOGAMA.iscontrol,
                      fnContr: (input) {
                        setState(() {
                          Dashboardvar_AUTOGAMA.iscontrol = input;
                        });
                      },
                      sValue: Dashboardvar_AUTOGAMA.SetPartName,
                      returnfunc: (String s) {
                        Dashboardvar_AUTOGAMA.SetPartName = s;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () async {
                        final response = await Dio().post(
                          server + "textpartname",
                          data: {
                            "PartName": Dashboardvar_AUTOGAMA.SetPartName,
                            "ItemID": ItemID,
                          },
                        );
                        dhcontext_AUTOGAMA
                            .read<ACTUALDATA_Bloc>()
                            .add(ACTUALDATA_Pressed());
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
      child: MasterTable_AUTOGAMA(),
    );
  }
}
