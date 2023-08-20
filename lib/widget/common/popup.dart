import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//------------------------------------

import '../../bloc/cubit/Rebuild.dart';

void WORNINGpop(
    BuildContext contextin, List<String> text, double? height, double? width) {
  showDialog(
    context: contextin,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Dialog(
        child: SizedBox(
            height: height ?? 75,
            width: width ?? 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(contextin);
                      },
                      child: const SizedBox(
                        height: 24,
                        width: 36,
                        child: Padding(
                          padding: EdgeInsets.only(right: 12),
                          child: Center(child: Icon(Icons.close)),
                        ),
                      ),
                    ),
                  ),
                  for (int i = 0; i < text.length; i++) Text(text[i]),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            )),
      );
    },
  );
}
