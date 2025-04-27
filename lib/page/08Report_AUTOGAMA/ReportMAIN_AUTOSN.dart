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
import '../../data/modelmaster.dart';
import '../../widget/table/exportTable.dart';
import '../../widget/table/MasterTable_AUTOGAMA.dart';
import 'ReportVAR_AUTOSN.dart';

DateTime selectedDate = DateTime.now();
ScrollController _controllerReportH = ScrollController();

class CsvPicker_AUTOGAMA extends StatefulWidget {
  CsvPicker_AUTOGAMA({Key? key, this.datatable}) : super(key: key);
  List<YMDDATAMASTERmodel2>? datatable;

  @override
  State<CsvPicker_AUTOGAMA> createState() => _CsvPicker_AUTOGAMAState();
}

class _CsvPicker_AUTOGAMAState extends State<CsvPicker_AUTOGAMA> {
  @override
  Widget build(BuildContext context) {
    Pagememory = 2;
    List<YMDDATAMASTERmodel2> _datatable = widget.datatable ?? [];

    Future<void> _selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime(2015, 8),
          lastDate: DateTime(2101));
      if (picked != null && picked != selectedDate)
        setState(() {
          selectedDate = picked;
          INDreportGAMAVAR.selectedDate =
              "${selectedDate.toLocal()}".split(' ')[0];
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
                width: 5700,
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
                              print(INDreportGAMAVAR.selectedDate);
                              if (INDreportGAMAVAR.selectedDate != '') {
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
                              print(INDreportGAMAVAR.selectedDate);
                              if (INDreportGAMAVAR.selectedDate != '') {
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
                    // Container(
                    //   color: Colors.orange,
                    //   height: 50,
                    //   width: 150,
                    //   child: InkWell(
                    //       child: const Center(
                    //         child: Text(
                    //           "Import Name&Qty",
                    //           style: TextStyle(color: Colors.white),
                    //         ),
                    //       ),
                    //       onTap: () async {
                    //         var picked = await FilePicker.platform.pickFiles(
                    //           type: FileType.custom,
                    //           allowedExtensions: ['csv'],
                    //         );
                    //         Uint8List? datacsv;

                    //         if (picked != null) {
                    //           datacsv = picked.files.first.bytes;
                    //           const asciiDecoder = AsciiDecoder();
                    //           final result =
                    //               asciiDecoder.convert(datacsv!.toList());
                    //           final response = await Dio().post(
                    //             server + "PNQTYupload_AUTOGAMA",
                    //             data: {
                    //               "rawcsv": result,
                    //             },
                    //           ).then((value) {
                    //             setState(() {
                    //               print(INDreportGAMAVAR.selectedDate);
                    //               if (INDreportGAMAVAR.selectedDate != '') {
                    //                 //
                    //                 context
                    //                     .read<CsvExport_Bloc>()
                    //                     .add(CsvExportGetData_R());
                    //               }
                    //               // final List data = csvdata;
                    //               // ExpCSV(data);
                    //             });
                    //           });
                    //         }
                    //       }),
                    // ),
                  ],
                ),
              ),
              MasterTable_AUTOGAMA(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      for (int i = 0; i < _datatable.length; i++) ...[
                        //
                        MasterTable_AUTOGAMADATA(
                          NO: _datatable[i].NO,
                          Item: _datatable[i].Item,
                          PartNO: _datatable[i].PartNO,
                          PartName: _datatable[i].PartName,
                          QTY: _datatable[i].QTY,
                          LoadingTime01: _datatable[i].LoadingTime01,
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
