import 'package:flutter/material.dart';

import 'tablebox.dart';

class MasterTable_AUTOPEELING02 extends StatelessWidget {
  const MasterTable_AUTOPEELING02({super.key});

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
                    rowbox_type1s(
                      Head: "02AirPressureTank",
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
                      Head: "03WaterRinse4",
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
                      Head: "04WaterRinse3",
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
                      Head: "05WaterRinse2",
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
                      Head: "06WaterRinse1",
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
                      Head: "07ElactroCayanide4",
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
                      Head: "08ElactroCayanide3",
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
                      Head: "09ElactroCayanide2",
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
                      Head: "10ElactroCayanide1",
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

class MasterTable_AUTOPEELING02DATA extends StatelessWidget {
  MasterTable_AUTOPEELING02DATA({
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
                      Head: "02AirPressureTank",
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
                      Head: "03WaterRinse4",
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
                      Head: "04WaterRinse3",
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
                    rowbox_type1_data(
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
                      Head: "06WaterRinse1",
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
                      Head: "07ElactroCayanide4",
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
                    rowbox_type1_data(
                      Head: "08ElactroCayanide3",
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
                    rowbox_type1_data(
                      Head: "09ElactroCayanide2",
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
                    rowbox_type1_data(
                      Head: "10ElactroCayanide1",
                      text01: Tank10Temp,
                      text02: Tank10Time,
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
