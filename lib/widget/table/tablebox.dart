import 'package:flutter/material.dart';

class rowbox_type0 extends StatelessWidget {
  rowbox_type0({
    Key? key,
    this.Head,
  }) : super(key: key);
  String? Head;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: twounitbox(
                textin: Head ?? '',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class rowbox_type1 extends StatelessWidget {
  rowbox_type1({
    Key? key,
    this.Head,
    this.text01,
    this.text02,
  }) : super(key: key);
  String? Head;
  String? text01;
  String? text02;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: oneunitbox(
                textin: Head ?? '',
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
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
          ],
        ),
      ],
    );
  }
}

class rowbox_type1s extends StatelessWidget {
  rowbox_type1s({
    Key? key,
    this.Head,
    this.text01,
    this.text02,
  }) : super(key: key);
  String? Head;
  String? text01;
  String? text02;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: oneunitbox(
                textin: Head ?? '',
              ),
            ),
          ],
        ),
        Row(
          children: [
            // Expanded(
            //   flex: 2,
            //   child: oneunitbox(
            //     textin: text01 ?? '',
            //   ),
            // ),
            Expanded(
              flex: 2,
              child: oneunitbox(
                textin: text02 ?? '',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class rowbox_type2 extends StatelessWidget {
  rowbox_type2({
    Key? key,
    this.Head,
    this.text01,
    this.text02,
    this.text03,
    this.text04,
    this.text05,
  }) : super(key: key);
  String? Head;
  String? text01;
  String? text02;
  String? text03;
  String? text04;
  String? text05;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: oneunitbox(
                textin: Head ?? '',
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
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
            Expanded(
              flex: 2,
              child: oneunitbox(
                textin: text04 ?? '',
              ),
            ),
            Expanded(
              flex: 2,
              child: oneunitbox(
                textin: text05 ?? '',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class rowbox_type0_data extends StatelessWidget {
  rowbox_type0_data({
    Key? key,
    this.Head,
  }) : super(key: key);
  String? Head;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: oneunitbox(
                textin: Head ?? '',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class rowbox_type1_datas extends StatelessWidget {
  rowbox_type1_datas({
    Key? key,
    this.Head,
    this.text01,
    this.text02,
  }) : super(key: key);
  String? Head;
  String? text01;
  String? text02;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Expanded(
        //   flex: 2,
        //   child: oneunitbox(
        //     textin: text01 ?? '',
        //   ),
        // ),
        Expanded(
          flex: 2,
          child: oneunitbox(
            textin: text02 ?? '',
          ),
        ),
      ],
    );
  }
}

class rowbox_type1_data extends StatelessWidget {
  rowbox_type1_data({
    Key? key,
    this.Head,
    this.text01,
    this.text02,
  }) : super(key: key);
  String? Head;
  String? text01;
  String? text02;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
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
      ],
    );
  }
}

class rowbox_type2_data extends StatelessWidget {
  rowbox_type2_data({
    Key? key,
    this.Head,
    this.text01,
    this.text02,
    this.text03,
    this.text04,
    this.text05,
    this.colorM,
  }) : super(key: key);
  String? Head;
  String? text01;
  String? text02;
  String? text03;
  String? text04;
  String? text05;
  Color? colorM;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
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
        Expanded(
          flex: 2,
          child: oneunitbox(
            textin: text04 ?? '',
          ),
        ),
        Expanded(
          flex: 2,
          child: oneunitbox(
            textin: text05 ?? '',
          ),
        ),
      ],
    );
  }
}

class oneunitbox extends StatelessWidget {
  oneunitbox({
    Key? key,
    this.textin,
    this.textsize,
  }) : super(key: key);
  String? textin;
  double? textsize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Center(
        child: Text(
          textin ?? '',
          style: TextStyle(
            fontSize: textsize ?? 12,
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
            fontSize: textsize ?? 12,
          ),
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
    );
  }
}
