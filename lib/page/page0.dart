import 'package:datamonitor01/page/page1.dart';
import 'package:datamonitor01/page/page2.dart';
import 'package:flutter/material.dart';

import 'page7.dart';

class Page0 extends StatelessWidget {
  const Page0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page7();
  }
}

class Page0Body extends StatelessWidget {
  const Page0Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 100,
          width: 200,
          color: Colors.orange,
          child: const Center(
              child: Text("initial Page \nor do something wrong"))),
    );
  }
}
