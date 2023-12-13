import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'page0.dart';
import '../data/global.dart';

class Page7 extends StatelessWidget {
  const Page7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page7Body();
  }
}

class Page7Body extends StatelessWidget {
  Page7Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("assets/images/logo_tpk.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
