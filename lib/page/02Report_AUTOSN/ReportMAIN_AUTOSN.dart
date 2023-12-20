import 'dart:convert';
import 'dart:html';
import 'dart:typed_data';

import 'package:csv/csv.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/02-01-CsvExportEvent.dart';
import '../../data/global.dart';
import '../../data/model.dart';
import '../../widget/table/exportTable.dart';
import '../../widget/table/MasterTable_AUTOSN.dart';
import 'ReportVAR_AUTOSN.dart';

DateTime selectedDate = DateTime.now();
ScrollController _controllerReportH = ScrollController();

class CsvPicker_AUTOSN extends StatefulWidget {
  CsvPicker_AUTOSN({Key? key, this.datatable}) : super(key: key);
  List<YMDDATAmodel>? datatable;

  @override
  State<CsvPicker_AUTOSN> createState() => _CsvPicker_AUTOSNState();
}

class _CsvPicker_AUTOSNState extends State<CsvPicker_AUTOSN> {
  @override
  Widget build(BuildContext context) {
    Pagememory = 2;
    List<YMDDATAmodel> _datatable = widget.datatable ?? [];

    Future<void> _selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime(2015, 8),
          lastDate: DateTime(2101));
      if (picked != null && picked != selectedDate)
        setState(() {
          selectedDate = picked;
          INDreportVAR.selectedDate = "${selectedDate.toLocal()}".split(' ')[0];
          // print(selectedDate);
        });
    }

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
                width: 6400,
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          _selectDate(context);
                        },
                        child: SizedBox(
                            height: 50,
                            width: 100,
                            child: Center(
                                child: Text("${selectedDate.toLocal()}"
                                    .split(' ')[0])))),
                    Container(
                      color: Colors.green,
                      height: 50,
                      width: 100,
                      child: InkWell(
                          child: const Center(
                            child: Text(
                              "READ ONLY",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              print(INDreportVAR.selectedDate);
                              if (INDreportVAR.selectedDate != '') {
                                //
                                context
                                    .read<CsvExport_Bloc>()
                                    .add(CsvExportGetData_R());
                              }
                              // final List data = csvdata;
                              // ExpCSV(data);
                            });
                          }),
                    ),
                    Container(
                      color: Colors.blue,
                      height: 50,
                      width: 100,
                      child: InkWell(
                          child: const Center(
                            child: Text(
                              "Export to CSV",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              print(INDreportVAR.selectedDate);
                              if (INDreportVAR.selectedDate != '') {
                                //
                                context
                                    .read<CsvExport_Bloc>()
                                    .add(CsvExportGetData());
                              }
                              // final List data = csvdata;
                              // ExpCSV(data);
                            });
                          }),
                    ),
                    Container(
                      color: Colors.orange,
                      height: 50,
                      width: 150,
                      child: InkWell(
                          child: const Center(
                            child: Text(
                              "Import Name&Qty",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          onTap: () async {
                            var picked = await FilePicker.platform.pickFiles(
                              type: FileType.custom,
                              allowedExtensions: ['csv'],
                            );
                            Uint8List? datacsv;

                            if (picked != null) {
                              datacsv = picked.files.first.bytes;
                              const asciiDecoder = AsciiDecoder();
                              final result =
                                  asciiDecoder.convert(datacsv!.toList());
                              final response = await Dio().post(
                                server + "PNQTYupload_AUTOSN",
                                data: {
                                  "rawcsv": result,
                                },
                              ).then((value) {
                                setState(() {
                                  print(INDreportVAR.selectedDate);
                                  if (INDreportVAR.selectedDate != '') {
                                    //
                                    context
                                        .read<CsvExport_Bloc>()
                                        .add(CsvExportGetData_R());
                                  }
                                  // final List data = csvdata;
                                  // ExpCSV(data);
                                });
                              });
                            }
                          }),
                    ),
                  ],
                ),
              ),
              MasterTable_AUTOSN(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      for (int i = 0; i < _datatable.length; i++) ...[
                        //
                        MasterTable_AUTOSNDATA(
                          NO: _datatable[i].NO,
                          Item: _datatable[i].Item,
                          PartNO: _datatable[i].PartNO,
                          PartName: _datatable[i].PartName,
                          QTY: _datatable[i].QTY,
                          LoadingTime01: _datatable[i].LoadingTime01,
                          Degressing02Temp: _datatable[i].Degressing02Temp,
                          Degressing02Time: _datatable[i].Degressing02Time,
                          Degressing03Temp: _datatable[i].Degressing03Temp,
                          Degressing03Time: _datatable[i].Degressing03Time,
                          Shower04Temp: _datatable[i].Shower04Temp,
                          Shower04Time: _datatable[i].Shower04Time,
                          Degressing05Temp: _datatable[i].Degressing05Temp,
                          Degressing05Time: _datatable[i].Degressing05Time,
                          Degressing06Temp: _datatable[i].Degressing06Temp,
                          Degressing06Time: _datatable[i].Degressing06Time,
                          Degressing07Temp: _datatable[i].Degressing07Temp,
                          Degressing07Time: _datatable[i].Degressing07Time,
                          WaterRinse08Temp: _datatable[i].WaterRinse08Temp,
                          WaterRinse08Time: _datatable[i].WaterRinse08Time,
                          WaterRinse09Temp: _datatable[i].WaterRinse09Temp,
                          WaterRinse09Time: _datatable[i].WaterRinse09Time,
                          AcidWashing10Temp: _datatable[i].AcidWashing10Temp,
                          AcidWashing10Time: _datatable[i].AcidWashing10Time,
                          WaterRinse11Temp: _datatable[i].WaterRinse11Temp,
                          WaterRinse11Time: _datatable[i].WaterRinse11Time,
                          WaterRinse12Temp: _datatable[i].WaterRinse12Temp,
                          WaterRinse12Time: _datatable[i].WaterRinse12Time,
                          ElectrolyticAnodic13Volt:
                              _datatable[i].ElectrolyticAnodic13Volt,
                          ElectrolyticAnodic13Amp:
                              _datatable[i].ElectrolyticAnodic13Amp,
                          ElectrolyticAnodic13Temp:
                              _datatable[i].ElectrolyticAnodic13Temp,
                          ElectrolyticAnodic13Rpm:
                              _datatable[i].ElectrolyticAnodic13Rpm,
                          ElectrolyticAnodic13Time:
                              _datatable[i].ElectrolyticAnodic13Time,
                          ElectrolyticCathod14Volt:
                              _datatable[i].ElectrolyticCathod14Volt,
                          ElectrolyticCathod14Amp:
                              _datatable[i].ElectrolyticCathod14Amp,
                          ElectrolyticCathod14Temp:
                              _datatable[i].ElectrolyticCathod14Temp,
                          ElectrolyticCathod14Rpm:
                              _datatable[i].ElectrolyticCathod14Rpm,
                          ElectrolyticCathod14Time:
                              _datatable[i].ElectrolyticCathod14Time,
                          WaterRinse15Temp: _datatable[i].WaterRinse15Temp,
                          WaterRinse15Time: _datatable[i].WaterRinse15Time,
                          WaterRinse16Temp: _datatable[i].WaterRinse16Temp,
                          WaterRinse16Time: _datatable[i].WaterRinse16Time,
                          Activetion17Temp: _datatable[i].Activetion17Temp,
                          Activetion17Time: _datatable[i].Activetion17Time,
                          WaterRinse18Temp: _datatable[i].WaterRinse18Temp,
                          WaterRinse18Time: _datatable[i].WaterRinse18Time,
                          CuCyanide19Volt: _datatable[i].CuCyanide19Volt,
                          CuCyanide19Amp: _datatable[i].CuCyanide19Amp,
                          CuCyanide19Temp: _datatable[i].CuCyanide19Temp,
                          CuCyanide19Rpm: _datatable[i].CuCyanide19Rpm,
                          CuCyanide19Time: _datatable[i].CuCyanide19Time,
                          CuCyanide20Volt: _datatable[i].CuCyanide20Volt,
                          CuCyanide20Amp: _datatable[i].CuCyanide20Amp,
                          CuCyanide20Temp: _datatable[i].CuCyanide20Temp,
                          CuCyanide20Rpm: _datatable[i].CuCyanide20Rpm,
                          CuCyanide20Time: _datatable[i].CuCyanide20Time,
                          WaterRinse21Temp: _datatable[i].WaterRinse21Temp,
                          WaterRinse21Time: _datatable[i].WaterRinse21Time,
                          WaterRinse22Temp: _datatable[i].WaterRinse22Temp,
                          WaterRinse22Time: _datatable[i].WaterRinse22Time,
                          ActivetionH2S042223Temp:
                              _datatable[i].ActivetionH2S042223Temp,
                          ActivetionH2S04223Time:
                              _datatable[i].ActivetionH2S04223Time,
                          CoperSulfate24Volt: _datatable[i].CoperSulfate24Volt,
                          CoperSulfate24Amp: _datatable[i].CoperSulfate24Amp,
                          CoperSulfate24Temp: _datatable[i].CoperSulfate24Temp,
                          CoperSulfate24Rpm: _datatable[i].CoperSulfate24Rpm,
                          CoperSulfate024Time:
                              _datatable[i].CoperSulfate024Time,
                          WaterRinse25Temp: _datatable[i].WaterRinse25Temp,
                          WaterRinse25Time: _datatable[i].WaterRinse25Time,
                          SemiBrightNickel26Volt:
                              _datatable[i].SemiBrightNickel26Volt,
                          SemiBrightNickel26Amp:
                              _datatable[i].SemiBrightNickel26Amp,
                          SemiBrightNickel26Temp:
                              _datatable[i].SemiBrightNickel26Temp,
                          SemiBrightNickel26Time:
                              _datatable[i].SemiBrightNickel26Time,
                          SemiBrightNickel27Volt:
                              _datatable[i].SemiBrightNickel27Volt,
                          SemiBrightNickel27Amp:
                              _datatable[i].SemiBrightNickel27Amp,
                          SemiBrightNickel27Temp:
                              _datatable[i].SemiBrightNickel27Temp,
                          SemiBrightNickel27Rpm:
                              _datatable[i].SemiBrightNickel27Rpm,
                          SemiBrightNickel27Time:
                              _datatable[i].SemiBrightNickel27Time,
                          SemiBrightNickel28Volt:
                              _datatable[i].SemiBrightNickel28Volt,
                          SemiBrightNickel28Amp:
                              _datatable[i].SemiBrightNickel28Amp,
                          SemiBrightNickel28Temp:
                              _datatable[i].SemiBrightNickel28Temp,
                          SemiBrightNickel28Rpm:
                              _datatable[i].SemiBrightNickel28Rpm,
                          SemiBrightNickel28Time:
                              _datatable[i].SemiBrightNickel28Time,
                          WaterRinse29Temp: _datatable[i].WaterRinse29Temp,
                          WaterRinse29Time: _datatable[i].WaterRinse29Time,
                          DullSnPlating30Volt:
                              _datatable[i].DullSnPlating30Volt,
                          DullSnPlating30Amp: _datatable[i].DullSnPlating30Amp,
                          DullSnPlating30Temp:
                              _datatable[i].DullSnPlating30Temp,
                          DullSnPlating30Rpm: _datatable[i].DullSnPlating30Rpm,
                          DullSnPlating30Time:
                              _datatable[i].DullSnPlating30Time,
                          DullSnPlating31Volt:
                              _datatable[i].DullSnPlating31Volt,
                          DullSnPlating31Amp: _datatable[i].DullSnPlating31Amp,
                          DullSnPlating31Temp:
                              _datatable[i].DullSnPlating31Temp,
                          DullSnPlating31Rpm: _datatable[i].DullSnPlating31Rpm,
                          DullSnPlating31Time:
                              _datatable[i].DullSnPlating31Time,
                          DullSnPlating32Volt:
                              _datatable[i].DullSnPlating32Volt,
                          DullSnPlating32Amp: _datatable[i].DullSnPlating32Amp,
                          DullSnPlating32Temp:
                              _datatable[i].DullSnPlating32Temp,
                          DullSnPlating32Rpm: _datatable[i].DullSnPlating32Rpm,
                          DullSnPlating32Time:
                              _datatable[i].DullSnPlating32Time,
                          DullSnPlating33Volt:
                              _datatable[i].DullSnPlating33Volt,
                          DullSnPlating33Amp: _datatable[i].DullSnPlating33Amp,
                          DullSnPlating33Temp:
                              _datatable[i].DullSnPlating33Temp,
                          DullSnPlating33Rpm: _datatable[i].DullSnPlating33Rpm,
                          DullSnPlating33Time:
                              _datatable[i].DullSnPlating33Time,
                          WaterRinse34Tempp: _datatable[i].WaterRinse34Temp,
                          WaterRinse34Time: _datatable[i].WaterRinse34Time,
                          BrightSnPlating35Volt:
                              _datatable[i].BrightSnPlating35Volt,
                          BrightSnPlating35Amp:
                              _datatable[i].BrightSnPlating35Amp,
                          BrightSnPlating35Temp:
                              _datatable[i].BrightSnPlating35Temp,
                          BrightSnPlating35Rpm:
                              _datatable[i].BrightSnPlating35Rpm,
                          BrightSnPlating35Time:
                              _datatable[i].BrightSnPlating35Time,
                          BrightSnPlating36Volt:
                              _datatable[i].BrightSnPlating36Volt,
                          BrightSnPlating36Amp:
                              _datatable[i].BrightSnPlating36Amp,
                          BrightSnPlating36Temp:
                              _datatable[i].BrightSnPlating36Temp,
                          BrightSnPlating36Rpm:
                              _datatable[i].BrightSnPlating36Rpm,
                          BrightSnPlating36Time:
                              _datatable[i].BrightSnPlating36Time,
                          WaterRinse37Temp: _datatable[i].WaterRinse37Temp,
                          WaterRinse37Time: _datatable[i].WaterRinse37Time,
                          Postrement38Temp: _datatable[i].Postrement38Temp,
                          Postrement38Time: _datatable[i].Postrement38Time,
                          Postrement39Temp: _datatable[i].Postrement39Temp,
                          Postrement39Time: _datatable[i].Postrement39Time,
                          HotWaterRinse40Temp:
                              _datatable[i].HotWaterRinse40Temp,
                          HotWaterRinse40Time:
                              _datatable[i].HotWaterRinse40Time,
                          HotWaterRinse41Temp:
                              _datatable[i].HotWaterRinse41Temp,
                          HotWaterRinse41Time:
                              _datatable[i].HotWaterRinse41Time,
                        ),
                      ]
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
