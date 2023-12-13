import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/global.dart';
import '../../page/01DASHBOARD_AUTOSN/dashboardvar_AUTOSN.dart';
import '../../page/03DASHBOARD_AUTOCU/Dashboardvar_AUTOCU.dart';
import '../../page/05DASHBOARD_AUTOPEELING02/Dashboardvar_AUTOPEELING02.dart';
import '../../page/page0.dart';
import '../../page/page2.dart';
import '../../widget/menu/mainmenu.dart';

//-------------------------------------------------

abstract class ChangePage_Event {}

class ChangePage extends ChangePage_Event {}

class ChangePage_Bloc extends Bloc<ChangePage_Event, Widget> {
  ChangePage_Bloc() : super(const Page0()) {
    on<ChangePage>((event, emit) {
      return _ChangePage_Function(state, emit);
    });
  }
  Future<void> _ChangePage_Function(Widget toAdd, Emitter<Widget> emit) async {
    Widget output = Page0();
    // MainBodyContext
    // MenuContext

    if (UserLV >= CuPageLV) {
    } else {
      CuPage = Page0();
    }

    print(Pagememory);

    if (Pagememory == 1) {
      Future.delayed(const Duration(milliseconds: 1000), () {
        Dashboardvar_AUTOSN_DHtimer.cancel();
      });
    } else if (Pagememory == 3) {
      Future.delayed(const Duration(milliseconds: 1000), () {
        Dashboardvar_AUTOCU_DHtimer.cancel();
      });
    } else if (Pagememory == 5) {
      Future.delayed(const Duration(milliseconds: 1000), () {
        Dashboardvar_AUTOPEELING02_DHtimer.cancel();
      });
    }

    Navigator.pop(MenuContext);

    emit(CuPage);
  }
}

    //   // BlocProvider.of<BlocNotification>(contextGB)
    //   //     .UpdateNotification("", "Error", enumNotificationlist.Error);