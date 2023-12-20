import 'dart:convert';
import 'dart:html';
import 'dart:typed_data';

import 'package:csv/csv.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/06-01-CsvExportEvent_AUTOPEELING02.dart';
import '../../data/global.dart';
import '../../data/model.dart';
import '../../data/modelmaster.dart';
import '../../widget/table/exportTable.dart';
import '../../widget/table/MasterTable_AUTOPEELING02.dart';
import 'ReportVAR_AUTOPEELING02.dart';

DateTime _selectedDate = DateTime.now();
ScrollController _controllerReportH = ScrollController();

class CsvPicker_AUTOPEELING02 extends StatefulWidget {
  CsvPicker_AUTOPEELING02({Key? key, this.datatable}) : super(key: key);
  List<YMDDATAMASTERmodel>? datatable;

  @override
  State<CsvPicker_AUTOPEELING02> createState() =>
      _CsvPicker_AUTOPEELING02State();
}

class _CsvPicker_AUTOPEELING02State extends State<CsvPicker_AUTOPEELING02> {
  @override
  Widget build(BuildContext context) {
    Pagememory = 6;
    List<YMDDATAMASTERmodel> _datatable = widget.datatable ?? [];

    Future<void> _selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
          context: context,
          initialDate: _selectedDate,
          firstDate: DateTime(2015, 8),
          lastDate: DateTime(2101));
      if (picked != null && picked != _selectedDate)
        setState(() {
          _selectedDate = picked;
          ReportVAR_AUTOPEELING02.selectedDate =
              "${_selectedDate.toLocal()}".split(' ')[0];
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
                width: 1700,
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
                                child: Text("${_selectedDate.toLocal()}"
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
                              print(ReportVAR_AUTOPEELING02.selectedDate);
                              if (ReportVAR_AUTOPEELING02.selectedDate != '') {
                                //
                                context
                                    .read<CsvExport_AUTOPEELING02_Bloc>()
                                    .add(CsvExport_AUTOPEELING02GetData_R());
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
                              print(ReportVAR_AUTOPEELING02.selectedDate);
                              if (ReportVAR_AUTOPEELING02.selectedDate != '') {
                                //
                                context
                                    .read<CsvExport_AUTOPEELING02_Bloc>()
                                    .add(CsvExport_AUTOPEELING02GetData());
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
                                server + "PNQTYupload_AUTOPL2",
                                data: {
                                  "rawcsv": result,
                                },
                              ).then((value) {
                                setState(() {
                                  print(ReportVAR_AUTOPEELING02.selectedDate);
                                  if (ReportVAR_AUTOPEELING02.selectedDate !=
                                      '') {
                                    //
                                    context
                                        .read<CsvExport_AUTOPEELING02_Bloc>()
                                        .add(CsvExport_AUTOPEELING02GetData());
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
              MasterTable_AUTOPEELING02(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      for (int i = 0; i < _datatable.length; i++) ...[
                        //
                        MasterTable_AUTOPEELING02DATA(
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
