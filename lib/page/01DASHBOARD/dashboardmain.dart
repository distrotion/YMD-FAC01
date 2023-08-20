import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/01-getactualdata.dart';
import '../../data/global.dart';
import '../../data/model.dart';

late BuildContext dhcontext;

class DashBoard extends StatelessWidget {
  DashBoard({Key? key, this.data}) : super(key: key);
  actDATAmodel? data;

  @override
  Widget build(BuildContext context) {
    return DashBoardBody(
      data: data,
    );
  }
}

class DashBoardBody extends StatefulWidget {
  DashBoardBody({Key? key, this.data}) : super(key: key);
  actDATAmodel? data;

  @override
  State<DashBoardBody> createState() => _DashBoardBodyState();
}

int ing = 0;

// Timer timer = new Timer(new Duration(seconds: 3), () {
//   debugPrint("Print after 3 seconds");
//     ing++;
//     print(ing);
// });

class _DashBoardBodyState extends State<DashBoardBody> {
  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 2), (timmer) {
      dhcontext.read<ACTUALDATA_Bloc>().add(ACTUALDATA_Pressed());

      DHtimer = timmer;
    });

    //----------
    // timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    dhcontext = context;
    Pagememory = 1;

    return Container(
      height: 1500,
      width: 800,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              // color: Colors.pink,
              child: Center(
                  child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                      "ConditionNo : ${widget.data?.ConditionNo}  Order : ${widget.data?.BARCODE}\nGOOD : ${widget.data?.G}    NG : ${widget.data?.NG}"),
                ],
              )),
            ),
            Row(
              children: [
                Container(
                  width: 400,
                  height: 660,
                  // color: Colors.red,
                  child: Column(
                    children: [
                      rowboxONEunit(
                        text01: "ITEM",
                        text02: "SET",
                        text03: "MEAS",
                      ),
                      rowboxTWOunit(
                        text01: "1st output VOLTAGE (V)\n   min/max",
                        text02: widget.data?.s1stoutputVOLTset,
                        text03:
                            "    ${widget.data?.s1stoutputVOLTMEASCURRENT}\n${widget.data?.s1stoutputVOLTMEASMIN}/${widget.data?.s1stoutputVOLTMEASMAX}",
                      ),
                      rowboxTWOunit(
                        text01: "1st output POWER  (Kw)\n   min/max",
                        text02: "",
                        text03:
                            "    ${widget.data?.s1stoutputPOWERMEASCURRENT}\n${widget.data?.s1stoutputPOWERMEASMIN}/${widget.data?.s1stoutputPOWERMEASMAX}",
                      ),
                      rowboxTWOunit(
                        text01: "2st output VOLTAGE (V)\n   min/max",
                        text02: widget.data?.s2stoutputVOLTset,
                        text03:
                            "    ${widget.data?.s2stoutputVOLTMEASCURRENT}\n${widget.data?.s2stoutputVOLTMEASMIN}/${widget.data?.s2stoutputVOLTMEASMAX}",
                      ),
                      rowboxTWOunit(
                        text01: "2st output POWER  (Kw)\n   min/max",
                        text02: "",
                        text03:
                            "    ${widget.data?.s2stoutputPOWERMEASCURRENT}\n${widget.data?.s2stoutputPOWERMEASMIN}/${widget.data?.s2stoutputPOWERMEASMAX}",
                      ),
                      rowboxTWOunit(
                        text01: "3st output VOLTAGE (V)\n   min/max",
                        text02: widget.data?.s3stoutputVOLTset,
                        text03:
                            "    ${widget.data?.s3stoutputVOLTMEASCURRENT}\n${widget.data?.s3stoutputVOLTMEASMIN}/${widget.data?.s3stoutputVOLTMEASMAX}",
                      ),
                      rowboxTWOunit(
                        text01: "3st output POWER  (Kw)\n   min/max",
                        text02: "",
                        text03:
                            "    ${widget.data?.s3stoutputPOWERMEASCURRENT}\n${widget.data?.s3stoutputPOWERMEASMIN}/${widget.data?.s3stoutputPOWERMEASMAX}",
                      ),
                      rowboxTWOunit(
                        text01: "4st output VOLTAGE (V)\n   min/max",
                        text02: widget.data?.s4stoutputVOLTset,
                        text03:
                            "    ${widget.data?.s4stoutputVOLTMEASCURRENT}\n${widget.data?.s4stoutputVOLTMEASMIN}/${widget.data?.s4stoutputVOLTMEASMAX}",
                      ),
                      rowboxTWOunit(
                        text01: "4st output POWER  (Kw)\n   min/max",
                        text02: "",
                        text03:
                            "    ${widget.data?.s4stoutputPOWERMEASCURRENT}\n${widget.data?.s4stoutputPOWERMEASMIN}/${widget.data?.s4stoutputPOWERMEASMAX}",
                      ),
                      rowboxONEunit(
                        text01: "",
                        text02: "MEAS",
                        text03: "min/max",
                      ),
                      rowboxONEunit(
                        text01: "1st HEATING TEMP (C)",
                        text02: widget.data?.s1stHEATINGTEMPMEASCURRENT,
                        text03:
                            "${widget.data?.s1stHEATINGTEMPMEASMIN}/${widget.data?.s1stHEATINGTEMPMEASMAX}",
                      ),
                      rowboxONEunit(
                        text01: "2st HEATING TEMP (C)",
                        text02: widget.data?.s2stHEATINGTEMPMEASCURRENT,
                        text03:
                            "${widget.data?.s2stHEATINGTEMPMEASMIN}/${widget.data?.s2stHEATINGTEMPMEASMAX}",
                      ),
                      rowboxONEunit(
                        text01: "3st HEATING TEMP (C)",
                        text02: widget.data?.s3stHEATINGTEMPMEASCURRENT,
                        text03:
                            "${widget.data?.s3stHEATINGTEMPMEASMIN}/${widget.data?.s3stHEATINGTEMPMEASMAX}",
                      ),
                      rowboxONEunit(
                        text01: "4st HEATING TEMP (C)",
                        text02: widget.data?.s4stHEATINGTEMPMEASCURRENT,
                        text03:
                            "${widget.data?.s4stHEATINGTEMPMEASMIN}/${widget.data?.s4stHEATINGTEMPMEASMAX}",
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 400,
                  height: 660,
                  // color: Colors.blue,
                  child: Column(
                    children: [
                      rowboxONEunit(
                        text01: "ITEM",
                        text02: "SET",
                        text03: "MEAS",
                      ),
                      rowboxONEunit(
                        text01: "1st   HEATING  TIME (sec)",
                        text02:
                            (num.tryParse("${widget.data?.s1stHEATINGSETTIME}")!
                                        .toDouble() /
                                    100)
                                .toStringAsFixed(2),
                        text03: (num.tryParse(
                                        "${widget.data?.s1stHEATINGMEASTIME}")!
                                    .toDouble() /
                                100)
                            .toStringAsFixed(2),
                      ),
                      rowboxONEunit(
                        text01: "2st HEAT WAIT TIME (sec)",
                        text02: (num.tryParse(
                                        "${widget.data?.s2ndHEATINGWAITSETTIME}")!
                                    .toDouble() /
                                100)
                            .toStringAsFixed(2),
                        text03: (num.tryParse(
                                        "${widget.data?.s2ndHEATINGWAITMEASTIME}")!
                                    .toDouble() /
                                100)
                            .toStringAsFixed(2),
                      ),
                      rowboxONEunit(
                        text01: "2st   HEATING  TIME (sec)",
                        text02:
                            (num.tryParse("${widget.data?.s2stHEATINGSETTIME}")!
                                        .toDouble() /
                                    100)
                                .toStringAsFixed(2),
                        text03: (num.tryParse(
                                        "${widget.data?.s2stHEATINGMEASTIME}")!
                                    .toDouble() /
                                100)
                            .toStringAsFixed(2),
                      ),
                      rowboxONEunit(
                        text01: "3st HEAT WAIT TIME (sec)",
                        text02: (num.tryParse(
                                        "${widget.data?.s3ndHEATINGWAITSETTIME}")!
                                    .toDouble() /
                                100)
                            .toStringAsFixed(2),
                        text03: (num.tryParse(
                                        "${widget.data?.s3ndHEATINGWAITMEASTIME}")!
                                    .toDouble() /
                                100)
                            .toStringAsFixed(2),
                      ),
                      rowboxONEunit(
                        text01: "3st   HEATING  TIME (sec)",
                        text02:
                            (num.tryParse("${widget.data?.s3stHEATINGSETTIME}")!
                                        .toDouble() /
                                    100)
                                .toStringAsFixed(2),
                        text03: (num.tryParse(
                                        "${widget.data?.s3stHEATINGMEASTIME}")!
                                    .toDouble() /
                                100)
                            .toStringAsFixed(2),
                      ),
                      rowboxONEunit(
                        text01: "4st HEAT WAIT TIME (sec)",
                        text02: (num.tryParse(
                                        "${widget.data?.s4ndHEATINGWAITSETTIME}")!
                                    .toDouble() /
                                100)
                            .toStringAsFixed(2),
                        text03: (num.tryParse(
                                        "${widget.data?.s4ndHEATINGWAITMEASTIME}")!
                                    .toDouble() /
                                100)
                            .toStringAsFixed(2),
                      ),
                      rowboxONEunit(
                        text01: "4st   HEATING  TIME (sec)",
                        text02:
                            (num.tryParse("${widget.data?.s4stHEATINGSETTIME}")!
                                        .toDouble() /
                                    100)
                                .toStringAsFixed(2),
                        text03: (num.tryParse(
                                        "${widget.data?.s4stHEATINGMEASTIME}")!
                                    .toDouble() /
                                100)
                            .toStringAsFixed(2),
                      ),
                      rowboxONEunit(
                        text01: "AIR COOLING TIME",
                        text02:
                            (num.tryParse("${widget.data?.AIRCOOLINGTIMESET}")!
                                        .toDouble() /
                                    100)
                                .toStringAsFixed(2),
                        text03:
                            (num.tryParse("${widget.data?.AIRCOOLINGTIMEMEAS}")!
                                        .toDouble() /
                                    100)
                                .toStringAsFixed(2),
                      ),
                      rowboxONEunit(),
                      rowboxONEunit(),
                      rowboxONEunit(),
                      rowboxONEunit(),
                      rowboxONEunit(),
                      rowboxONEunit(),
                      rowboxONEunit(),
                      rowboxONEunit(
                        text01: "HEAD CENTER REV (rpm)",
                        text02: "",
                        text03: "${widget.data?.HEADCENTERREV}",
                      ),
                      rowboxONEunit(
                        text01: "TAIL CENTER REV (rpm)",
                        text02: "",
                        text03: "${widget.data?.TAILCENTERREV}",
                      ),
                      rowboxONEunit(
                        text01: "CYCLE TIME (sec)",
                        text02: "",
                        text03: (num.tryParse("${widget.data?.CYCLETIME}")!
                                    .toDouble() /
                                10)
                            .toStringAsFixed(1), //"${widget.data?.CYCLETIME}",
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class rowboxONEunit extends StatelessWidget {
  rowboxONEunit({
    Key? key,
    this.text01,
    this.text02,
    this.text03,
  }) : super(key: key);
  String? text01;
  String? text02;
  String? text03;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: oneunitbox(
            textin: text01 ?? '',
          ),
        ),
        Expanded(
          flex: 2,
          child: oneunitbox(
            textin: text02 ?? '',
          ),
        ),
        Expanded(
          flex: 2,
          child: oneunitbox(
            textin: text03 ?? '',
          ),
        ),
      ],
    );
  }
}

class oneunitbox extends StatelessWidget {
  oneunitbox({Key? key, this.textin, this.textsize}) : super(key: key);
  String? textin;
  double? textsize;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Center(
        child: Text(
          textin ?? '',
          style: TextStyle(
            fontSize: textsize ?? 15,
          ),
        ),
      ),
    );
  }
}

class rowboxTWOunit extends StatelessWidget {
  rowboxTWOunit({
    Key? key,
    this.text01,
    this.text02,
    this.text03,
  }) : super(key: key);
  String? text01;
  String? text02;
  String? text03;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: twounitbox(
            textin: text01 ?? '',
          ),
        ),
        Expanded(
          flex: 2,
          child: twounitbox(
            textin: text02 ?? '',
          ),
        ),
        Expanded(
          flex: 2,
          child: twounitbox(
            textin: text03 ?? '',
          ),
        ),
      ],
    );
  }
}

class twounitbox extends StatelessWidget {
  twounitbox({Key? key, this.textin, this.textsize}) : super(key: key);
  String? textin;
  double? textsize;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Center(
        child: Text(
          textin ?? '',
          style: TextStyle(
            fontSize: textsize ?? 15,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 2),
      ),
    );
  }
}
