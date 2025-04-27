import 'package:flutter/material.dart';

import 'tablebox.dart';

class MasterTable_AUTOGAMA extends StatelessWidget {
  const MasterTable_AUTOGAMA({super.key});

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
              // SizedBox(
              //   width: 120,
              //   child: Column(
              //     children: [
              //       rowbox_type0(
              //         Head: "Item",
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type0(
                      Head: "Bar no.",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type0(
                      Head: "Program no.",
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
                      Head: "02AcidWash1",
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
                      Head: "03AcidWash1",
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
                      Head: "06ChemicalPolishing1",
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
                      Head: "07WaterRinse1",
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
                      Head: "08WaterRinse2",
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
                      Head: "09ChemicalPolishing1",
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
                      Head: "10Neutralization1",
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
                      Head: "11Neutralization2",
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
                      Head: "12WaterRinse1",
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
                      Head: "13WaterRinse2",
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
                      Head: "14Active1",
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
                      Head: "15WaterRinse1",
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
                      Head: "16WaterRinse1",
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
                      Head: "17E'lessNiA1",
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
                      Head: "18E'lessNiA2",
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
                      Head: "19E'lessNiA3",
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
                      Head: "20E'lessNiA4",
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
                      Head: "21E'lessNiB1",
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
                      Head: "22E'lessNiB2",
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
                      Head: "23E'lessNiB3",
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
                      Head: "24E'lessNiB4",
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
                      Head: "25WaterRinse1",
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
                      Head: "26WaterRinse2",
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
                      Head: "27Activation2",
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
                      Head: "28WaterRinse1",
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
                      Head: "29BrightNickel1",
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
                      Head: "30BrightNickel2",
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
                      Head: "31BrightNickel3",
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
                      Head: "32BrightNickel4",
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
                      Head: "33WaterRinse1",
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
                      Head: "34Activation3",
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
                      Head: "35WaterRinse1",
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
                      Head: "36Nickel-Tin1",
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
                      Head: "37Nickel-Tin2",
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
                      Head: "38WaterRinse1",
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
                      Head: "39WaterRinse2",
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
                      Head: "40ChromteTreatment",
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
                      Head: "41ShowerSpray",
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
                      Head: "42WaterRinse1",
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
                      Head: "43RoWaterRinse1",
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
                      Head: "44RoWaterRinse2",
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

class MasterTable_AUTOGAMADATA extends StatelessWidget {
  MasterTable_AUTOGAMADATA({
    super.key,
    this.NO,
    this.Item,
    this.PartNO,
    this.PartName,
    this.QTY,
    this.LoadingTime01,
    this.TANK01Temp,
    this.TANK01Time,
    this.TANK01Volt,
    this.TANK01Amp,
    this.TANK01Rpm,
    this.TANK02Temp,
    this.TANK02Time,
    this.TANK02Volt,
    this.TANK02Amp,
    this.TANK02Rpm,
    this.TANK03Temp,
    this.TANK03Time,
    this.TANK03Volt,
    this.TANK03Amp,
    this.TANK03Rpm,
    this.TANK04Temp,
    this.TANK04Time,
    this.TANK04Volt,
    this.TANK04Amp,
    this.TANK04Rpm,
    this.TANK05Temp,
    this.TANK05Time,
    this.TANK05Volt,
    this.TANK05Amp,
    this.TANK05Rpm,
    this.TANK06Temp,
    this.TANK06Time,
    this.TANK06Volt,
    this.TANK06Amp,
    this.TANK06Rpm,
    this.TANK07Temp,
    this.TANK07Time,
    this.TANK07Volt,
    this.TANK07Amp,
    this.TANK07Rpm,
    this.TANK08Temp,
    this.TANK08Time,
    this.TANK08Volt,
    this.TANK08Amp,
    this.TANK08Rpm,
    this.TANK09Temp,
    this.TANK09Time,
    this.TANK09Volt,
    this.TANK09Amp,
    this.TANK09Rpm,
    this.TANK10Temp,
    this.TANK10Time,
    this.TANK10Volt,
    this.TANK10Amp,
    this.TANK10Rpm,
    this.TANK11Temp,
    this.TANK11Time,
    this.TANK11Volt,
    this.TANK11Amp,
    this.TANK11Rpm,
    this.TANK12Temp,
    this.TANK12Time,
    this.TANK12Volt,
    this.TANK12Amp,
    this.TANK12Rpm,
    this.TANK13Temp,
    this.TANK13Time,
    this.TANK13Volt,
    this.TANK13Amp,
    this.TANK13Rpm,
    this.TANK14Temp,
    this.TANK14Time,
    this.TANK14Volt,
    this.TANK14Amp,
    this.TANK14Rpm,
    this.TANK15Temp,
    this.TANK15Time,
    this.TANK15Volt,
    this.TANK15Amp,
    this.TANK15Rpm,
    this.TANK16Temp,
    this.TANK16Time,
    this.TANK16Volt,
    this.TANK16Amp,
    this.TANK16Rpm,
    this.TANK17Temp,
    this.TANK17Time,
    this.TANK17Volt,
    this.TANK17Amp,
    this.TANK17Rpm,
    this.TANK18Temp,
    this.TANK18Time,
    this.TANK18Volt,
    this.TANK18Amp,
    this.TANK18Rpm,
    this.TANK19Temp,
    this.TANK19Time,
    this.TANK19Volt,
    this.TANK19Amp,
    this.TANK19Rpm,
    this.TANK20Temp,
    this.TANK20Time,
    this.TANK20Volt,
    this.TANK20Amp,
    this.TANK20Rpm,
    this.TANK21Temp,
    this.TANK21Time,
    this.TANK21Volt,
    this.TANK21Amp,
    this.TANK21Rpm,
    this.TANK22Temp,
    this.TANK22Time,
    this.TANK22Volt,
    this.TANK22Amp,
    this.TANK22Rpm,
    this.TANK23Temp,
    this.TANK23Time,
    this.TANK23Volt,
    this.TANK23Amp,
    this.TANK23Rpm,
    this.TANK24Temp,
    this.TANK24Time,
    this.TANK24Volt,
    this.TANK24Amp,
    this.TANK24Rpm,
    this.TANK25Temp,
    this.TANK25Time,
    this.TANK25Volt,
    this.TANK25Amp,
    this.TANK25Rpm,
    this.TANK26Temp,
    this.TANK26Time,
    this.TANK26Volt,
    this.TANK26Amp,
    this.TANK26Rpm,
    this.TANK27Temp,
    this.TANK27Time,
    this.TANK27Volt,
    this.TANK27Amp,
    this.TANK27Rpm,
    this.TANK28Temp,
    this.TANK28Time,
    this.TANK28Volt,
    this.TANK28Amp,
    this.TANK28Rpm,
    this.TANK29Temp,
    this.TANK29Time,
    this.TANK29Volt,
    this.TANK29Amp,
    this.TANK29Rpm,
    this.TANK30Temp,
    this.TANK30Time,
    this.TANK30Volt,
    this.TANK30Amp,
    this.TANK30Rpm,
    this.TANK31Temp,
    this.TANK31Time,
    this.TANK31Volt,
    this.TANK31Amp,
    this.TANK31Rpm,
    this.TANK32Temp,
    this.TANK32Time,
    this.TANK32Volt,
    this.TANK32Amp,
    this.TANK32Rpm,
    this.TANK33Temp,
    this.TANK33Time,
    this.TANK33Volt,
    this.TANK33Amp,
    this.TANK33Rpm,
    this.TANK34Temp,
    this.TANK34Time,
    this.TANK34Volt,
    this.TANK34Amp,
    this.TANK34Rpm,
    this.TANK35Temp,
    this.TANK35Time,
    this.TANK35Volt,
    this.TANK35Amp,
    this.TANK35Rpm,
    this.TANK36Temp,
    this.TANK36Time,
    this.TANK36Volt,
    this.TANK36Amp,
    this.TANK36Rpm,
    this.TANK37Temp,
    this.TANK37Time,
    this.TANK37Volt,
    this.TANK37Amp,
    this.TANK37Rpm,
    this.TANK38Temp,
    this.TANK38Time,
    this.TANK38Volt,
    this.TANK38Amp,
    this.TANK38Rpm,
    this.TANK39Temp,
    this.TANK39Time,
    this.TANK39Volt,
    this.TANK39Amp,
    this.TANK39Rpm,
    this.TANK40Temp,
    this.TANK40Time,
    this.TANK40Volt,
    this.TANK40Amp,
    this.TANK40Rpm,
    this.TANK41Temp,
    this.TANK41Time,
    this.TANK41Volt,
    this.TANK41Amp,
    this.TANK41Rpm,
    this.TANK42Temp,
    this.TANK42Time,
    this.TANK42Volt,
    this.TANK42Amp,
    this.TANK42Rpm,
    this.TANK43Temp,
    this.TANK43Time,
    this.TANK43Volt,
    this.TANK43Amp,
    this.TANK43Rpm,
    this.TANK44Temp,
    this.TANK44Time,
    this.TANK44Volt,
    this.TANK44Amp,
    this.TANK44Rpm,
    this.TANK45Temp,
    this.TANK45Time,
    this.TANK45Volt,
    this.TANK45Amp,
    this.TANK45Rpm,
    this.TANK46Temp,
    this.TANK46Time,
    this.TANK46Volt,
    this.TANK46Amp,
    this.TANK46Rpm,
    this.TANK47Temp,
    this.TANK47Time,
    this.TANK47Volt,
    this.TANK47Amp,
    this.TANK47Rpm,
    this.TANK48Temp,
    this.TANK48Time,
    this.TANK48Volt,
    this.TANK48Amp,
    this.TANK48Rpm,
    this.TANK49Temp,
    this.TANK49Time,
    this.TANK49Volt,
    this.TANK49Amp,
    this.TANK49Rpm,
    this.TANK50Temp,
    this.TANK50Time,
    this.TANK50Volt,
    this.TANK50Amp,
    this.TANK50Rpm,
    this.nint,
    this.SetParName,
  });
  String? NO;
  String? Item;
  String? PartNO;
  String? PartName;
  String? QTY;
  String? LoadingTime01;

  String? TANK01Temp;
  String? TANK01Time;
  String? TANK01Volt;
  String? TANK01Amp;
  String? TANK01Rpm;
  String? TANK02Temp;
  String? TANK02Time;
  String? TANK02Volt;
  String? TANK02Amp;
  String? TANK02Rpm;
  String? TANK03Temp;
  String? TANK03Time;
  String? TANK03Volt;
  String? TANK03Amp;
  String? TANK03Rpm;
  String? TANK04Temp;
  String? TANK04Time;
  String? TANK04Volt;
  String? TANK04Amp;
  String? TANK04Rpm;
  String? TANK05Temp;
  String? TANK05Time;
  String? TANK05Volt;
  String? TANK05Amp;
  String? TANK05Rpm;
  String? TANK06Temp;
  String? TANK06Time;
  String? TANK06Volt;
  String? TANK06Amp;
  String? TANK06Rpm;
  String? TANK07Temp;
  String? TANK07Time;
  String? TANK07Volt;
  String? TANK07Amp;
  String? TANK07Rpm;
  String? TANK08Temp;
  String? TANK08Time;
  String? TANK08Volt;
  String? TANK08Amp;
  String? TANK08Rpm;
  String? TANK09Temp;
  String? TANK09Time;
  String? TANK09Volt;
  String? TANK09Amp;
  String? TANK09Rpm;
  String? TANK10Temp;
  String? TANK10Time;
  String? TANK10Volt;
  String? TANK10Amp;
  String? TANK10Rpm;

  String? TANK11Temp;
  String? TANK11Time;
  String? TANK11Volt;
  String? TANK11Amp;
  String? TANK11Rpm;
  String? TANK12Temp;
  String? TANK12Time;
  String? TANK12Volt;
  String? TANK12Amp;
  String? TANK12Rpm;
  String? TANK13Temp;
  String? TANK13Time;
  String? TANK13Volt;
  String? TANK13Amp;
  String? TANK13Rpm;
  String? TANK14Temp;
  String? TANK14Time;
  String? TANK14Volt;
  String? TANK14Amp;
  String? TANK14Rpm;
  String? TANK15Temp;
  String? TANK15Time;
  String? TANK15Volt;
  String? TANK15Amp;
  String? TANK15Rpm;
  String? TANK16Temp;
  String? TANK16Time;
  String? TANK16Volt;
  String? TANK16Amp;
  String? TANK16Rpm;
  String? TANK17Temp;
  String? TANK17Time;
  String? TANK17Volt;
  String? TANK17Amp;
  String? TANK17Rpm;
  String? TANK18Temp;
  String? TANK18Time;
  String? TANK18Volt;
  String? TANK18Amp;
  String? TANK18Rpm;
  String? TANK19Temp;
  String? TANK19Time;
  String? TANK19Volt;
  String? TANK19Amp;
  String? TANK19Rpm;
  String? TANK20Temp;
  String? TANK20Time;
  String? TANK20Volt;
  String? TANK20Amp;
  String? TANK20Rpm;

  String? TANK21Temp;
  String? TANK21Time;
  String? TANK21Volt;
  String? TANK21Amp;
  String? TANK21Rpm;
  String? TANK22Temp;
  String? TANK22Time;
  String? TANK22Volt;
  String? TANK22Amp;
  String? TANK22Rpm;
  String? TANK23Temp;
  String? TANK23Time;
  String? TANK23Volt;
  String? TANK23Amp;
  String? TANK23Rpm;
  String? TANK24Temp;
  String? TANK24Time;
  String? TANK24Volt;
  String? TANK24Amp;
  String? TANK24Rpm;
  String? TANK25Temp;
  String? TANK25Time;
  String? TANK25Volt;
  String? TANK25Amp;
  String? TANK25Rpm;
  String? TANK26Temp;
  String? TANK26Time;
  String? TANK26Volt;
  String? TANK26Amp;
  String? TANK26Rpm;
  String? TANK27Temp;
  String? TANK27Time;
  String? TANK27Volt;
  String? TANK27Amp;
  String? TANK27Rpm;
  String? TANK28Temp;
  String? TANK28Time;
  String? TANK28Volt;
  String? TANK28Amp;
  String? TANK28Rpm;
  String? TANK29Temp;
  String? TANK29Time;
  String? TANK29Volt;
  String? TANK29Amp;
  String? TANK29Rpm;
  String? TANK30Temp;
  String? TANK30Time;
  String? TANK30Volt;
  String? TANK30Amp;
  String? TANK30Rpm;

  String? TANK31Temp;
  String? TANK31Time;
  String? TANK31Volt;
  String? TANK31Amp;
  String? TANK31Rpm;
  String? TANK32Temp;
  String? TANK32Time;
  String? TANK32Volt;
  String? TANK32Amp;
  String? TANK32Rpm;
  String? TANK33Temp;
  String? TANK33Time;
  String? TANK33Volt;
  String? TANK33Amp;
  String? TANK33Rpm;
  String? TANK34Temp;
  String? TANK34Time;
  String? TANK34Volt;
  String? TANK34Amp;
  String? TANK34Rpm;
  String? TANK35Temp;
  String? TANK35Time;
  String? TANK35Volt;
  String? TANK35Amp;
  String? TANK35Rpm;
  String? TANK36Temp;
  String? TANK36Time;
  String? TANK36Volt;
  String? TANK36Amp;
  String? TANK36Rpm;
  String? TANK37Temp;
  String? TANK37Time;
  String? TANK37Volt;
  String? TANK37Amp;
  String? TANK37Rpm;
  String? TANK38Temp;
  String? TANK38Time;
  String? TANK38Volt;
  String? TANK38Amp;
  String? TANK38Rpm;
  String? TANK39Temp;
  String? TANK39Time;
  String? TANK39Volt;
  String? TANK39Amp;
  String? TANK39Rpm;
  String? TANK40Temp;
  String? TANK40Time;
  String? TANK40Volt;
  String? TANK40Amp;
  String? TANK40Rpm;

  String? TANK41Temp;
  String? TANK41Time;
  String? TANK41Volt;
  String? TANK41Amp;
  String? TANK41Rpm;
  String? TANK42Temp;
  String? TANK42Time;
  String? TANK42Volt;
  String? TANK42Amp;
  String? TANK42Rpm;
  String? TANK43Temp;
  String? TANK43Time;
  String? TANK43Volt;
  String? TANK43Amp;
  String? TANK43Rpm;
  String? TANK44Temp;
  String? TANK44Time;
  String? TANK44Volt;
  String? TANK44Amp;
  String? TANK44Rpm;
  String? TANK45Temp;
  String? TANK45Time;
  String? TANK45Volt;
  String? TANK45Amp;
  String? TANK45Rpm;
  String? TANK46Temp;
  String? TANK46Time;
  String? TANK46Volt;
  String? TANK46Amp;
  String? TANK46Rpm;
  String? TANK47Temp;
  String? TANK47Time;
  String? TANK47Volt;
  String? TANK47Amp;
  String? TANK47Rpm;
  String? TANK48Temp;
  String? TANK48Time;
  String? TANK48Volt;
  String? TANK48Amp;
  String? TANK48Rpm;
  String? TANK49Temp;
  String? TANK49Time;
  String? TANK49Volt;
  String? TANK49Amp;
  String? TANK49Rpm;
  String? TANK50Temp;
  String? TANK50Time;
  String? TANK50Volt;
  String? TANK50Amp;
  String? TANK50Rpm;

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
              // SizedBox(
              //   width: 120,
              //   child: Column(
              //     children: [
              //       rowbox_type0_data(
              //         Head: Item,
              //       ),
              //     ],
              //   ),
              // ),
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
                      Head: "02AcidWash1",
                      text01: TANK02Time,
                      text02: TANK02Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "03AcidWash1",
                      text01: TANK03Time,
                      text02: TANK03Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "04Shower",
                      text01: TANK04Time,
                      text02: TANK04Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "05WaterRinse",
                      text01: TANK05Time,
                      text02: TANK05Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "06ChemicalPolishing1",
                      text01: TANK06Time,
                      text02: TANK06Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "07WaterRinse1",
                      text01: TANK07Time,
                      text02: TANK07Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "08WaterRinse2",
                      text01: TANK08Time,
                      text02: TANK08Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "09ChemicalPolishing1",
                      text01: TANK09Time,
                      text02: TANK09Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "10Neutralization1",
                      text01: TANK10Time,
                      text02: TANK10Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "11Neutralization2",
                      text01: TANK11Time,
                      text02: TANK11Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "12WaterRinse1",
                      text01: TANK12Time,
                      text02: TANK12Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "13WaterRinse2",
                      text01: TANK13Time,
                      text02: TANK13Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "14Active1",
                      text01: TANK14Time,
                      text02: TANK14Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "15WaterRinse1",
                      text01: TANK15Time,
                      text02: TANK15Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "16WaterRinse1",
                      text01: TANK16Time,
                      text02: TANK16Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "17E'lessNiA1",
                      text01: TANK17Time,
                      text02: TANK17Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "18E'lessNiA2",
                      text01: TANK18Time,
                      text02: TANK18Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "19E'lessNiA3",
                      text01: TANK19Time,
                      text02: TANK19Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "20E'lessNiA4",
                      text01: TANK20Time,
                      text02: TANK20Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "21E'lessNiB1",
                      text01: TANK21Time,
                      text02: TANK21Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "22E'lessNiB2",
                      text01: TANK22Time,
                      text02: TANK22Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "23E'lessNiB3",
                      text01: TANK23Time,
                      text02: TANK23Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "24E'lessNiB4",
                      text01: TANK24Time,
                      text02: TANK24Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "25WaterRinse1",
                      text01: TANK25Time,
                      text02: TANK25Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "26WaterRinse2",
                      text01: TANK26Time,
                      text02: TANK26Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "27Activation2",
                      text01: TANK27Time,
                      text02: TANK27Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "28WaterRinse1",
                      text01: TANK28Time,
                      text02: TANK28Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "29BrightNickel1",
                      text01: TANK29Time,
                      text02: TANK29Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "30BrightNickel2",
                      text01: TANK30Time,
                      text02: TANK30Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "31BrightNickel3",
                      text01: TANK31Time,
                      text02: TANK31Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "32BrightNickel4",
                      text01: TANK32Time,
                      text02: TANK32Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "33WaterRinse1",
                      text01: TANK33Time,
                      text02: TANK33Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "34Activation3",
                      text01: TANK34Time,
                      text02: TANK34Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "35WaterRinse1",
                      text01: TANK35Time,
                      text02: TANK35Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "36Nickel-Tin1",
                      text01: TANK36Time,
                      text02: TANK36Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "37Nickel-Tin2",
                      text01: TANK37Time,
                      text02: TANK37Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "38WaterRinse1",
                      text01: TANK38Time,
                      text02: TANK38Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "39WaterRinse2",
                      text01: TANK39Time,
                      text02: TANK39Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "40ChromteTreatment",
                      text01: TANK40Time,
                      text02: TANK40Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "41ShowerSpray",
                      text01: TANK41Time,
                      text02: TANK41Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "42WaterRinse1",
                      text01: TANK42Time,
                      text02: TANK42Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "43RoWaterRinse1",
                      text01: TANK43Time,
                      text02: TANK43Temp,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: Column(
                  children: [
                    rowbox_type1_data(
                      Head: "44RoWaterRinse2",
                      text01: TANK44Time,
                      text02: TANK44Temp,
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
