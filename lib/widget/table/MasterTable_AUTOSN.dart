import 'package:flutter/material.dart';

import 'tablebox.dart';

class MasterTable_AUTOSN extends StatelessWidget {
  const MasterTable_AUTOSN({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade500,
      child: Row(
        children: [
          Row(
            children: [
              SizedBox(
                width: 40,
                child: Column(
                  children: [
                    rowbox_type0(
                      Head: "NO",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type0(
                      Head: "Item",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type0(
                      Head: "Part NO.",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type0(
                      Head: "Part Name",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type0(
                      Head: "QTY",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type0(
                      Head: "01LoadingTime",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1(
                      Head: "02Degressing1/1",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1(
                      Head: "03Degressing1/2",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1s(
                      Head: "04Shower",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1(
                      Head: "05Degressing2/1",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1(
                      Head: "06Degressing2/2",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1(
                      Head: "07Degressing2/3",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1s(
                      Head: "08WaterRinse",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1s(
                      Head: "09WaterRinse",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1(
                      Head: "10AcidWashing",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1s(
                      Head: "11WaterRinse",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1s(
                      Head: "12WaterRinse",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2(
                      Head: "13ElectrolyticAnodic",
                      text01: "Volt",
                      text02: "Amp",
                      text03: "Temp",
                      text04: "Rpm",
                      text05: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2(
                      Head: "14ElectrolyticCathod",
                      text01: "Volt",
                      text02: "Amp",
                      text03: "Temp",
                      text04: "Rpm",
                      text05: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1s(
                      Head: "15WaterRinse",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1s(
                      Head: "16WaterRinse",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1(
                      Head: "17Activetion",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1s(
                      Head: "18WaterRinse",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2(
                      Head: "19CuCyanide",
                      text01: "Volt",
                      text02: "Amp",
                      text03: "Temp",
                      text04: "Rpm",
                      text05: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2(
                      Head: "20CuCyanide",
                      text01: "Volt",
                      text02: "Amp",
                      text03: "Temp",
                      text04: "Rpm",
                      text05: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1s(
                      Head: "21WaterRinse",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1s(
                      Head: "22WaterRinse",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1(
                      Head: "23ActivetionH2S04",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2(
                      Head: "24CoperSulfate",
                      text01: "Volt",
                      text02: "Amp",
                      text03: "Temp",
                      text04: "Rpm",
                      text05: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1(
                      Head: "25WaterRinse",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2(
                      Head: "26SemiBrightNickel",
                      text01: "Volt",
                      text02: "Amp",
                      text03: "Temp",
                      text04: "Rpm",
                      text05: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2(
                      Head: "27SemiBrightNickel",
                      text01: "Volt",
                      text02: "Amp",
                      text03: "Temp",
                      text04: "Rpm",
                      text05: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2(
                      Head: "28SemiBrightNickel",
                      text01: "Volt",
                      text02: "Amp",
                      text03: "Temp",
                      text04: "Rpm",
                      text05: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1s(
                      Head: "29WaterRinse",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2(
                      Head: "30DullSnPlating",
                      text01: "Volt",
                      text02: "Amp",
                      text03: "Temp",
                      text04: "Rpm",
                      text05: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2(
                      Head: "31DullSnPlating",
                      text01: "Volt",
                      text02: "Amp",
                      text03: "Temp",
                      text04: "Rpm",
                      text05: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2(
                      Head: "32DullSnPlating",
                      text01: "Volt",
                      text02: "Amp",
                      text03: "Temp",
                      text04: "Rpm",
                      text05: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2(
                      Head: "33DullSnPlating",
                      text01: "Volt",
                      text02: "Amp",
                      text03: "Temp",
                      text04: "Rpm",
                      text05: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1s(
                      Head: "34WaterRinse",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2(
                      Head: "35BrightSnPlating",
                      text01: "Volt",
                      text02: "Amp",
                      text03: "Temp",
                      text04: "Rpm",
                      text05: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2(
                      Head: "36BrightSnPlating",
                      text01: "Volt",
                      text02: "Amp",
                      text03: "Temp",
                      text04: "Rpm",
                      text05: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1(
                      Head: "37WaterRinse",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1(
                      Head: "38Postrement1",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1(
                      Head: "39Postrement2",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1s(
                      Head: "40HotWaterRinse1",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1s(
                      Head: "41HotWaterRinse2",
                      text01: "Temp",
                      text02: "Time",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MasterTable_AUTOSNDATA extends StatelessWidget {
  MasterTable_AUTOSNDATA({
    super.key,
    this.NO,
    this.Item,
    this.PartNO,
    this.PartName,
    this.QTY,
    this.LoadingTime01,
    this.Degressing02Temp,
    this.Degressing02Time,
    this.Degressing03Temp,
    this.Degressing03Time,
    this.Shower04Temp,
    this.Shower04Time,
    this.Degressing05Temp,
    this.Degressing05Time,
    this.Degressing06Temp,
    this.Degressing06Time,
    this.Degressing07Temp,
    this.Degressing07Time,
    this.WaterRinse08Temp,
    this.WaterRinse08Time,
    this.WaterRinse09Temp,
    this.WaterRinse09Time,
    this.AcidWashing10Temp,
    this.AcidWashing10Time,
    this.WaterRinse11Temp,
    this.WaterRinse11Time,
    this.WaterRinse12Temp,
    this.WaterRinse12Time,
    this.ElectrolyticAnodic13Volt,
    this.ElectrolyticAnodic13Amp,
    this.ElectrolyticAnodic13Temp,
    this.ElectrolyticAnodic13Rpm,
    this.ElectrolyticAnodic13Time,
    this.ElectrolyticCathod14Volt,
    this.ElectrolyticCathod14Amp,
    this.ElectrolyticCathod14Temp,
    this.ElectrolyticCathod14Rpm,
    this.ElectrolyticCathod14Time,
    this.WaterRinse15Temp,
    this.WaterRinse15Time,
    this.WaterRinse16Temp,
    this.WaterRinse16Time,
    this.Activetion17Temp,
    this.Activetion17Time,
    this.WaterRinse18Temp,
    this.WaterRinse18Time,
    this.CuCyanide19Volt,
    this.CuCyanide19Amp,
    this.CuCyanide19Temp,
    this.CuCyanide19Rpm,
    this.CuCyanide19Time,
    this.CuCyanide20Volt,
    this.CuCyanide20Amp,
    this.CuCyanide20Temp,
    this.CuCyanide20Rpm,
    this.CuCyanide20Time,
    this.WaterRinse21Temp,
    this.WaterRinse21Time,
    this.WaterRinse22Temp,
    this.WaterRinse22Time,
    this.ActivetionH2S042223Temp,
    this.ActivetionH2S04223Time,
    this.CoperSulfate24Volt,
    this.CoperSulfate24Amp,
    this.CoperSulfate24Temp,
    this.CoperSulfate24Rpm,
    this.CoperSulfate024Time,
    this.WaterRinse25Temp,
    this.WaterRinse25Time,
    this.SemiBrightNickel26Volt,
    this.SemiBrightNickel26Amp,
    this.SemiBrightNickel26Temp,
    this.SemiBrightNickel26Rpm,
    this.SemiBrightNickel26Time,
    this.SemiBrightNickel27Volt,
    this.SemiBrightNickel27Amp,
    this.SemiBrightNickel27Temp,
    this.SemiBrightNickel27Rpm,
    this.SemiBrightNickel27Time,
    this.SemiBrightNickel28Volt,
    this.SemiBrightNickel28Amp,
    this.SemiBrightNickel28Temp,
    this.SemiBrightNickel28Rpm,
    this.SemiBrightNickel28Time,
    this.WaterRinse29Temp,
    this.WaterRinse29Time,
    this.DullSnPlating30Volt,
    this.DullSnPlating30Amp,
    this.DullSnPlating30Temp,
    this.DullSnPlating30Rpm,
    this.DullSnPlating30Time,
    this.DullSnPlating31Volt,
    this.DullSnPlating31Amp,
    this.DullSnPlating31Temp,
    this.DullSnPlating31Rpm,
    this.DullSnPlating31Time,
    this.DullSnPlating32Volt,
    this.DullSnPlating32Amp,
    this.DullSnPlating32Temp,
    this.DullSnPlating32Rpm,
    this.DullSnPlating32Time,
    this.DullSnPlating33Volt,
    this.DullSnPlating33Amp,
    this.DullSnPlating33Temp,
    this.DullSnPlating33Rpm,
    this.DullSnPlating33Time,
    this.WaterRinse34Temp,
    this.WaterRinse34Tempp,
    this.WaterRinse34Time,
    this.BrightSnPlating35Volt,
    this.BrightSnPlating35Amp,
    this.BrightSnPlating35Temp,
    this.BrightSnPlating35Rpm,
    this.BrightSnPlating35Time,
    this.BrightSnPlating36Volt,
    this.BrightSnPlating36Amp,
    this.BrightSnPlating36Temp,
    this.BrightSnPlating36Rpm,
    this.BrightSnPlating36Time,
    this.WaterRinse37Temp,
    this.WaterRinse37Time,
    this.Postrement38Temp,
    this.Postrement38Time,
    this.Postrement39Temp,
    this.Postrement39Time,
    this.HotWaterRinse40Temp,
    this.HotWaterRinse40Time,
    this.HotWaterRinse41Temp,
    this.HotWaterRinse41Time,
    this.nint,
    this.SetParName,
  });
  String? NO;
  String? Item;
  String? PartNO;
  String? PartName;
  String? QTY;
  String? LoadingTime01;
  String? Degressing02Temp;
  String? Degressing02Time;
  String? Degressing03Temp;
  String? Degressing03Time;
  String? Shower04Temp;
  String? Shower04Time;
  String? Degressing05Temp;
  String? Degressing05Time;
  String? Degressing06Temp;
  String? Degressing06Time;
  String? Degressing07Temp;
  String? Degressing07Time;
  String? WaterRinse08Temp;
  String? WaterRinse08Time;
  String? WaterRinse09Temp;
  String? WaterRinse09Time;
  String? AcidWashing10Temp;
  String? AcidWashing10Time;
  String? WaterRinse11Temp;
  String? WaterRinse11Time;
  String? WaterRinse12Temp;
  String? WaterRinse12Time;
  String? ElectrolyticAnodic13Volt;
  String? ElectrolyticAnodic13Amp;
  String? ElectrolyticAnodic13Temp;
  String? ElectrolyticAnodic13Rpm;
  String? ElectrolyticAnodic13Time;
  String? ElectrolyticCathod14Volt;
  String? ElectrolyticCathod14Amp;
  String? ElectrolyticCathod14Temp;
  String? ElectrolyticCathod14Rpm;
  String? ElectrolyticCathod14Time;
  String? WaterRinse15Temp;
  String? WaterRinse15Time;
  String? WaterRinse16Temp;
  String? WaterRinse16Time;
  String? Activetion17Temp;
  String? Activetion17Time;
  String? WaterRinse18Temp;
  String? WaterRinse18Time;
  String? CuCyanide19Volt;
  String? CuCyanide19Amp;
  String? CuCyanide19Temp;
  String? CuCyanide19Rpm;
  String? CuCyanide19Time;
  String? CuCyanide20Volt;
  String? CuCyanide20Amp;
  String? CuCyanide20Temp;
  String? CuCyanide20Rpm;
  String? CuCyanide20Time;
  String? WaterRinse21Temp;
  String? WaterRinse21Time;
  String? WaterRinse22Temp;
  String? WaterRinse22Time;
  String? ActivetionH2S042223Temp;
  String? ActivetionH2S04223Time;
  String? CoperSulfate24Volt;
  String? CoperSulfate24Amp;
  String? CoperSulfate24Temp;
  String? CoperSulfate24Rpm;
  String? CoperSulfate024Time;

  String? WaterRinse25Temp;
  String? WaterRinse25Time;

  String? SemiBrightNickel26Volt;
  String? SemiBrightNickel26Amp;
  String? SemiBrightNickel26Temp;
  String? SemiBrightNickel26Rpm;
  String? SemiBrightNickel26Time;

  String? SemiBrightNickel27Volt;
  String? SemiBrightNickel27Amp;
  String? SemiBrightNickel27Temp;
  String? SemiBrightNickel27Rpm;
  String? SemiBrightNickel27Time;

  String? SemiBrightNickel28Volt;
  String? SemiBrightNickel28Amp;
  String? SemiBrightNickel28Temp;
  String? SemiBrightNickel28Rpm;
  String? SemiBrightNickel28Time;

  String? WaterRinse29Temp;
  String? WaterRinse29Time;

  String? DullSnPlating30Volt;
  String? DullSnPlating30Amp;
  String? DullSnPlating30Temp;
  String? DullSnPlating30Rpm;
  String? DullSnPlating30Time;

  String? DullSnPlating31Volt;
  String? DullSnPlating31Amp;
  String? DullSnPlating31Temp;
  String? DullSnPlating31Rpm;
  String? DullSnPlating31Time;

  String? DullSnPlating32Volt;
  String? DullSnPlating32Amp;
  String? DullSnPlating32Temp;
  String? DullSnPlating32Rpm;
  String? DullSnPlating32Time;

  String? DullSnPlating33Volt;
  String? DullSnPlating33Amp;
  String? DullSnPlating33Temp;
  String? DullSnPlating33Rpm;
  String? DullSnPlating33Time;

  String? WaterRinse34Temp;
  String? WaterRinse34Tempp;
  String? WaterRinse34Time;

  String? BrightSnPlating35Volt;
  String? BrightSnPlating35Amp;
  String? BrightSnPlating35Temp;
  String? BrightSnPlating35Rpm;
  String? BrightSnPlating35Time;

  String? BrightSnPlating36Volt;
  String? BrightSnPlating36Amp;
  String? BrightSnPlating36Temp;
  String? BrightSnPlating36Rpm;
  String? BrightSnPlating36Time;

  String? WaterRinse37Temp;
  String? WaterRinse37Time;

  String? Postrement38Temp;
  String? Postrement38Time;

  String? Postrement39Temp;
  String? Postrement39Time;

  String? HotWaterRinse40Temp;
  String? HotWaterRinse40Time;

  String? HotWaterRinse41Temp;
  String? HotWaterRinse41Time;
  int? nint;

  Function(String)? SetParName;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: (nint ?? 0) % 2 == 0 ? Colors.white : Colors.grey.shade300,
      child: Row(
        children: [
          Row(
            children: [
              SizedBox(
                width: 40,
                child: Column(
                  children: [
                    rowbox_type0_data(
                      Head: NO,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type0_data(
                      Head: Item,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type0_data(
                      Head: PartNO,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  if (SetParName != null) {
                    SetParName!(Item ?? '');
                  }
                },
                child: SizedBox(
                  width: 120,
                  child: Column(
                    children: [
                      rowbox_type0_data(
                        Head: PartName,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type0_data(
                      Head: QTY,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type0_data(
                      Head: LoadingTime01,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "02Degressing1/1",
                      text01: Degressing02Temp,
                      text02: Degressing02Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "03Degressing1/2",
                      text01: Degressing03Temp,
                      text02: Degressing03Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "04Shower",
                      text01: Shower04Temp,
                      text02: Shower04Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "05Degressing2/1",
                      text01: Degressing05Temp,
                      text02: Degressing05Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "06Degressing2/2",
                      text01: Degressing06Temp,
                      text02: Degressing06Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "07Degressing2/3",
                      text01: Degressing07Temp,
                      text02: Degressing07Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "08WaterRinse",
                      text01: WaterRinse08Temp,
                      text02: WaterRinse08Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "09WaterRinse",
                      text01: WaterRinse09Temp,
                      text02: WaterRinse09Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "10AcidWashing",
                      text01: AcidWashing10Temp,
                      text02: AcidWashing10Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "11WaterRinse",
                      text01: WaterRinse11Temp,
                      text02: WaterRinse11Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "12WaterRinse",
                      text01: WaterRinse12Temp,
                      text02: WaterRinse12Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "13ElectrolyticAnodic",
                      text01: ElectrolyticAnodic13Volt,
                      text02: ElectrolyticAnodic13Amp,
                      text03: ElectrolyticAnodic13Temp,
                      // text04: ElectrolyticAnodic13Rpm,
                      text04: "-",
                      text05: ElectrolyticAnodic13Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "14ElectrolyticCathod",
                      text01: ElectrolyticCathod14Volt,
                      text02: ElectrolyticCathod14Amp,
                      text03: ElectrolyticCathod14Temp,
                      // text04: ElectrolyticCathod14Rpm,
                      text04: "-",
                      text05: ElectrolyticCathod14Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "15WaterRinse",
                      text01: WaterRinse15Temp,
                      text02: WaterRinse15Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "16WaterRinse",
                      text01: WaterRinse16Temp,
                      text02: WaterRinse16Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "17Activetion",
                      text01: Activetion17Temp,
                      text02: Activetion17Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "18WaterRinse",
                      text01: WaterRinse18Temp,
                      text02: WaterRinse18Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "19CuCyanide",
                      text01: CuCyanide19Volt,
                      text02: CuCyanide19Amp,
                      text03: CuCyanide19Temp,
                      text04: CuCyanide19Rpm,
                      text05: CuCyanide19Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "20CuCyanide",
                      text01: CuCyanide20Volt,
                      text02: CuCyanide20Amp,
                      text03: CuCyanide20Temp,
                      text04: CuCyanide20Rpm,
                      text05: CuCyanide20Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "21WaterRinse",
                      text01: WaterRinse21Temp,
                      text02: WaterRinse21Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "22WaterRinse",
                      text01: WaterRinse22Temp,
                      text02: WaterRinse22Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "23ActivetionH2S04",
                      text01: ActivetionH2S042223Temp,
                      text02: ActivetionH2S04223Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "24CoperSulfate",
                      text01: CoperSulfate24Volt,
                      text02: CoperSulfate24Amp,
                      text03: CoperSulfate24Temp,
                      // text04: CoperSulfate24Rpm,
                      text04: "-",
                      text05: CoperSulfate024Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "25WaterRinse",
                      text01: WaterRinse25Temp,
                      text02: WaterRinse25Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "26SemiBrightNickel",
                      text01: SemiBrightNickel26Volt,
                      text02: SemiBrightNickel26Amp,
                      text03: SemiBrightNickel26Temp,
                      text04: SemiBrightNickel26Rpm,
                      text05: SemiBrightNickel26Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "27SemiBrightNickel",
                      text01: SemiBrightNickel27Volt,
                      text02: SemiBrightNickel27Amp,
                      text03: SemiBrightNickel27Temp,
                      text04: SemiBrightNickel27Rpm,
                      text05: SemiBrightNickel27Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "28SemiBrightNickel",
                      text01: SemiBrightNickel28Volt,
                      text02: SemiBrightNickel28Amp,
                      text03: SemiBrightNickel28Temp,
                      text04: SemiBrightNickel28Rpm,
                      text05: SemiBrightNickel28Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "29WaterRinse",
                      text01: WaterRinse29Temp,
                      text02: WaterRinse29Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "30DullSnPlating",
                      text01: DullSnPlating30Volt,
                      text02: DullSnPlating30Amp,
                      text03: DullSnPlating30Temp,
                      text04: DullSnPlating30Rpm,
                      text05: DullSnPlating30Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "31DullSnPlating",
                      text01: DullSnPlating31Volt,
                      text02: DullSnPlating31Amp,
                      text03: DullSnPlating31Temp,
                      text04: DullSnPlating31Rpm,
                      text05: DullSnPlating31Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "32DullSnPlating",
                      text01: DullSnPlating32Volt,
                      text02: DullSnPlating32Amp,
                      text03: DullSnPlating32Temp,
                      text04: DullSnPlating32Rpm,
                      text05: DullSnPlating32Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "33DullSnPlating",
                      text01: DullSnPlating33Volt,
                      text02: DullSnPlating33Amp,
                      text03: DullSnPlating33Temp,
                      text04: DullSnPlating33Rpm,
                      text05: DullSnPlating33Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "34WaterRinse",
                      text01: WaterRinse34Tempp,
                      text02: WaterRinse34Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "35BrightSnPlating",
                      text01: BrightSnPlating35Volt,
                      text02: BrightSnPlating35Amp,
                      text03: BrightSnPlating35Temp,
                      text04: BrightSnPlating35Rpm,
                      text05: BrightSnPlating35Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "36BrightSnPlating",
                      text01: BrightSnPlating36Volt,
                      text02: BrightSnPlating36Amp,
                      text03: BrightSnPlating36Temp,
                      text04: BrightSnPlating36Rpm,
                      text05: BrightSnPlating36Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "37WaterRinse",
                      text01: WaterRinse37Temp,
                      text02: WaterRinse37Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "38Postrement1",
                      text01: Postrement38Temp,
                      text02: Postrement38Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "39Postrement2",
                      text01: Postrement39Temp,
                      text02: Postrement39Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "40HotWaterRinse1",
                      text01: HotWaterRinse40Temp,
                      text02: HotWaterRinse40Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "41HotWaterRinse2",
                      text01: HotWaterRinse41Temp,
                      text02: HotWaterRinse41Time,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
