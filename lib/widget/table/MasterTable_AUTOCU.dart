import 'package:flutter/material.dart';

import 'tablebox.dart';

class MasterTable_AUTOCU extends StatelessWidget {
  const MasterTable_AUTOCU({super.key});

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
                      Head: "ItemNO",
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
                      Head: "04WaterRinse",
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
                      Head: "05WaterRinse",
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
                      Head: "06Degressing2/1",
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
                      Head: "07Degressing2/2",
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
                      Head: "10Wait",
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
                      Head: "11ACID WASHING",
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
                    rowbox_type1s(
                      Head: "13WaterRinse",
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
                    rowbox_type1s(
                      Head: "14ACID WASHING",
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
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2(
                      Head: "17Activetion",
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
                      Head: "19WaterRinse",
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
                      Head: "20Elec.Clean02",
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
                    rowbox_type1s(
                      Head: "23WaitState",
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
                      Head: "24Elec.Cyanide",
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
                      Head: "25WaterRinse",
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
                      Head: "26WaitState",
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
                      Head: "27CU_Strike01",
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
                      Head: "28CU_Strike02",
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
                      Head: "30CU_Plate01",
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
                      Head: "31CU_Plate02",
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
                      Head: "32WaterRinse",
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
                      Head: "33CU_Plate03",
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
                      Head: "34CU_Plate04",
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
                      Head: "35WaterRinse",
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
                      Head: "36CU_Plate05",
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
                      Head: "37CU_Plate06",
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
                      Head: "38WaterRinse",
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
                      Head: "39WaitState",
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
                      Head: "40WaterRinse",
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
                      Head: "41WaterRinse",
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
                      Head: "42Posteament",
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
                      Head: "43WaterRinse",
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
                      Head: "44WaterRinse",
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
                      Head: "45WaterRinse",
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

class MasterTable_AUTOCUDATA extends StatelessWidget {
  MasterTable_AUTOCUDATA({
    super.key,
    this.NO,
    this.Item,
    this.ItemNO,
    this.PartNO,
    this.PartName,
    this.QTY,
    this.LoadingTime01,
    this.Tank02Temp,
    this.Tank02Time,
    this.Tank03Temp,
    this.Tank03Time,
    this.Tank04Temp,
    this.Tank04Time,
    this.Tank05Temp,
    this.Tank05Time,
    this.Tank06Temp,
    this.Tank06Time,
    this.Tank07Temp,
    this.Tank07Time,
    this.Tank08Temp,
    this.Tank08Time,
    this.Tank09Temp,
    this.Tank09Time,
    this.Tank10Temp,
    this.Tank10Time,
    this.Tank11Temp,
    this.Tank11Time,
    this.Tank12Temp,
    this.Tank12Time,
    this.Tank13Temp,
    this.Tank13Time,
    this.Tank14Temp,
    this.Tank14Time,
    this.Tank15Temp,
    this.Tank15Time,
    this.Tank16Temp,
    this.Tank16Time,
    //
    this.Tank17Volt,
    this.Tank17Amp,
    this.Tank17Temp,
    this.Tank17Rpm,
    this.Tank17Time,
    //
    this.Tank18Temp,
    this.Tank18Time,
    this.Tank19Temp,
    this.Tank19Time,
    //
    this.Tank20Volt,
    this.Tank20Amp,
    this.Tank20Temp,
    this.Tank20Rpm,
    this.Tank20Time,
    //
    this.Tank21Temp,
    this.Tank21Time,
    this.Tank22Temp,
    this.Tank22Time,
    this.Tank23Temp,
    this.Tank23Time,
    //
    this.Tank24Volt,
    this.Tank24Amp,
    this.Tank24Temp,
    this.Tank24Rpm,
    this.Tank24Time,
    //
    this.Tank25Temp,
    this.Tank25Time,
    this.Tank26Temp,
    this.Tank26Time,
    //
    this.Tank27Volt,
    this.Tank27Amp,
    this.Tank27Temp,
    this.Tank27Rpm,
    this.Tank27Time,
    //
    this.Tank28Volt,
    this.Tank28Amp,
    this.Tank28Temp,
    this.Tank28Rpm,
    this.Tank28Time,
    //
    this.Tank29Temp,
    this.Tank29Time,
    //
    this.Tank30Volt,
    this.Tank30Amp,
    this.Tank30Temp,
    this.Tank30Rpm,
    this.Tank30Time,
    this.Tank31Volt,
    this.Tank31Amp,
    this.Tank31Temp,
    this.Tank31Rpm,
    this.Tank31Time,
    //
    this.Tank32Temp,
    this.Tank32Time,
    //
    this.Tank33Volt,
    this.Tank33Amp,
    this.Tank33Temp,
    this.Tank33Rpm,
    this.Tank33Time,
    this.Tank34Volt,
    this.Tank34Amp,
    this.Tank34Temp,
    this.Tank34Rpm,
    this.Tank34Time,
    //
    this.Tank35Temp,
    this.Tank35Time,
    //
    this.Tank36Volt,
    this.Tank36Amp,
    this.Tank36Temp,
    this.Tank36Rpm,
    this.Tank36Time,
    this.Tank37Volt,
    this.Tank37Amp,
    this.Tank37Temp,
    this.Tank37Rpm,
    this.Tank37Time,
    //
    this.Tank38Temp,
    this.Tank38Time,
    //
    this.Tank39Temp,
    this.Tank39Time,
    this.Tank40Temp,
    this.Tank40Time,
    this.Tank41Temp,
    this.Tank41Time,
    this.Tank42Temp,
    this.Tank42Time,
    this.Tank43Temp,
    this.Tank43Time,
    this.Tank44Temp,
    this.Tank44Time,
    this.Tank45Temp,
    this.Tank45Time,
    this.nint,
    this.SetParName,
  });
  String? NO;
  String? Item;
  String? ItemNO;
  String? PartNO;
  String? PartName;
  String? QTY;
  String? LoadingTime01;
  String? Tank02Temp;
  String? Tank02Time;
  String? Tank03Temp;
  String? Tank03Time;
  String? Tank04Temp;
  String? Tank04Time;
  String? Tank05Temp;
  String? Tank05Time;
  String? Tank06Temp;
  String? Tank06Time;
  String? Tank07Temp;
  String? Tank07Time;
  String? Tank08Temp;
  String? Tank08Time;
  String? Tank09Temp;
  String? Tank09Time;
  String? Tank10Temp;
  String? Tank10Time;
  String? Tank11Temp;
  String? Tank11Time;
  String? Tank12Temp;
  String? Tank12Time;
  String? Tank13Temp;
  String? Tank13Time;
  String? Tank14Temp;
  String? Tank14Time;
  String? Tank15Temp;
  String? Tank15Time;
  String? Tank16Temp;
  String? Tank16Time;
//
  String? Tank17Volt;
  String? Tank17Amp;
  String? Tank17Temp;
  String? Tank17Rpm;
  String? Tank17Time;
//
  String? Tank18Temp;
  String? Tank18Time;
  String? Tank19Temp;
  String? Tank19Time;
//
  String? Tank20Volt;
  String? Tank20Amp;
  String? Tank20Temp;
  String? Tank20Rpm;
  String? Tank20Time;
//
  String? Tank21Temp;
  String? Tank21Time;
  String? Tank22Temp;
  String? Tank22Time;
  String? Tank23Temp;
  String? Tank23Time;
//
  String? Tank24Volt;
  String? Tank24Amp;
  String? Tank24Temp;
  String? Tank24Rpm;
  String? Tank24Time;
//
  String? Tank25Temp;
  String? Tank25Time;
  String? Tank26Temp;
  String? Tank26Time;
//
  String? Tank27Volt;
  String? Tank27Amp;
  String? Tank27Temp;
  String? Tank27Rpm;
  String? Tank27Time;
//
  String? Tank28Volt;
  String? Tank28Amp;
  String? Tank28Temp;
  String? Tank28Rpm;
  String? Tank28Time;
//
  String? Tank29Temp;
  String? Tank29Time;
//
  String? Tank30Volt;
  String? Tank30Amp;
  String? Tank30Temp;
  String? Tank30Rpm;
  String? Tank30Time;
  String? Tank31Volt;
  String? Tank31Amp;
  String? Tank31Temp;
  String? Tank31Rpm;
  String? Tank31Time;
//
  String? Tank32Temp;
  String? Tank32Time;
//
  String? Tank33Volt;
  String? Tank33Amp;
  String? Tank33Temp;
  String? Tank33Rpm;
  String? Tank33Time;
  String? Tank34Volt;
  String? Tank34Amp;
  String? Tank34Temp;
  String? Tank34Rpm;
  String? Tank34Time;
//
  String? Tank35Temp;
  String? Tank35Time;
//
  String? Tank36Volt;
  String? Tank36Amp;
  String? Tank36Temp;
  String? Tank36Rpm;
  String? Tank36Time;
  String? Tank37Volt;
  String? Tank37Amp;
  String? Tank37Temp;
  String? Tank37Rpm;
  String? Tank37Time;
//
  String? Tank38Temp;
  String? Tank38Time;
//
  String? Tank39Temp;
  String? Tank39Time;
  String? Tank40Temp;
  String? Tank40Time;
  String? Tank41Temp;
  String? Tank41Time;
  String? Tank42Temp;
  String? Tank42Time;
  String? Tank43Temp;
  String? Tank43Time;
  String? Tank44Temp;
  String? Tank44Time;
  String? Tank45Temp;
  String? Tank45Time;

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
                      Head: ItemNO,
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
                      text01: Tank02Temp,
                      text02: Tank02Time,
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
                      text01: Tank03Temp,
                      text02: Tank03Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "04WaterRinse1",
                      text01: Tank04Temp,
                      text02: Tank04Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "05WaterRinse2",
                      text01: Tank05Temp,
                      text02: Tank05Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "06Degressing2/1",
                      text01: Tank06Temp,
                      text02: Tank06Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "07Degressing2/2",
                      text01: Tank07Temp,
                      text02: Tank07Time,
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
                      text01: Tank08Temp,
                      text02: Tank08Time,
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
                      text01: Tank09Temp,
                      text02: Tank09Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "10Wait",
                      text01: Tank10Temp,
                      text02: Tank10Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "11ACID WASHING",
                      text01: Tank11Temp,
                      text02: Tank11Time,
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
                      text01: Tank12Temp,
                      text02: Tank12Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "13WaterRinse",
                      text01: Tank13Temp,
                      text02: Tank13Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "14ACID WASHING",
                      text01: Tank14Temp,
                      text02: Tank14Time,
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
                      text01: Tank15Temp,
                      text02: Tank15Time,
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
                      text01: Tank16Temp,
                      text02: Tank16Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "17Elec.Clean01",
                      text01: Tank17Volt,
                      text02: Tank17Amp,
                      text03: Tank17Temp,
                      text04: Tank17Rpm,
                      text05: Tank17Time,
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
                      text01: Tank18Temp,
                      text02: Tank18Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "19WaterRinse",
                      text01: Tank19Temp,
                      text02: Tank19Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "20Elec.Clean02",
                      text01: Tank20Volt,
                      text02: Tank20Amp,
                      text03: Tank20Temp,
                      text04: Tank20Rpm,
                      text05: Tank20Time,
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
                      text01: Tank21Temp,
                      text02: Tank21Time,
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
                      text01: Tank22Temp,
                      text02: Tank22Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "23WaitState",
                      text01: Tank23Temp,
                      text02: Tank23Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "24Elec.Cyanide",
                      text01: Tank24Volt,
                      text02: Tank24Amp,
                      text03: Tank24Temp,
                      text04: Tank24Rpm,
                      text05: Tank24Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "25WaterRinse",
                      text01: Tank25Temp,
                      text02: Tank25Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "26WaitState",
                      text01: Tank26Temp,
                      text02: Tank26Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "27CU_Strike01",
                      text01: Tank27Volt,
                      text02: Tank27Amp,
                      text03: Tank27Temp,
                      text04: Tank27Rpm,
                      text05: Tank27Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "28CU_Strike02",
                      text01: Tank28Volt,
                      text02: Tank28Amp,
                      text03: Tank28Temp,
                      text04: Tank28Rpm,
                      text05: Tank28Time,
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
                      text01: Tank29Temp,
                      text02: Tank29Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "30CU_Plate01",
                      text01: Tank30Volt,
                      text02: Tank30Amp,
                      text03: Tank30Temp,
                      text04: Tank30Rpm,
                      text05: Tank30Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "31CU_Plate02",
                      text01: Tank31Volt,
                      text02: Tank31Amp,
                      text03: Tank31Temp,
                      text04: Tank31Rpm,
                      text05: Tank31Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "32WaterRinse",
                      text01: Tank32Temp,
                      text02: Tank32Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "33CU_Plate03",
                      text01: Tank33Volt,
                      text02: Tank33Amp,
                      text03: Tank33Temp,
                      text04: Tank33Rpm,
                      text05: Tank33Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "34CU_Plate04",
                      text01: Tank34Volt,
                      text02: Tank34Amp,
                      text03: Tank34Temp,
                      text04: Tank34Rpm,
                      text05: Tank34Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "35WaterRinse",
                      text01: Tank35Temp,
                      text02: Tank35Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "36CU_Plate05",
                      text01: Tank36Volt,
                      text02: Tank36Amp,
                      text03: Tank36Temp,
                      text04: Tank36Rpm,
                      text05: Tank36Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    rowbox_type2_data(
                      Head: "37CU_Plate06",
                      text01: Tank37Volt,
                      text02: Tank37Amp,
                      text03: Tank37Temp,
                      text04: Tank37Rpm,
                      text05: Tank37Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "38WaterRinse",
                      text01: Tank38Temp,
                      text02: Tank38Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "39WaitState",
                      text01: Tank39Temp,
                      text02: Tank39Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "40WaterRinse",
                      text01: Tank40Temp,
                      text02: Tank40Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "41WaterRinse",
                      text01: Tank41Temp,
                      text02: Tank41Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "42Posteament",
                      text01: Tank42Temp,
                      text02: Tank42Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "43WaterRinse",
                      text01: Tank43Temp,
                      text02: Tank43Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "44WaterRinse",
                      text01: Tank44Temp,
                      text02: Tank44Time,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_datas(
                      Head: "45WaterRinse",
                      text01: Tank45Temp,
                      text02: Tank45Time,
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
