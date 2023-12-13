import 'package:flutter/material.dart';

import '../../page/page1.dart';
import '../../page/page2.dart';
import '../../page/page3.dart';
import '../../page/page4.dart';
import '../../page/page5.dart';
import '../../page/page6.dart';
import '../../page/page7.dart';
import '../../page/page8.dart';
import '../../page/page9.dart';
import 'sub_widget.dart';

late BuildContext MenuContext;
bool menu_AOTOSN01 = false;
bool menu_AUTOCU01 = false;
bool menu_AUTOPL02 = false;

class MainMenu extends StatefulWidget {
  MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    MenuContext = context;
    //---------------------------------------------------------------

    return Container(
      height: (MediaQuery.of(context).size.height),
      width: 200,
      color: Color(0xff0b1327),
      //color: Colors.red,
      child: ListView(
        children: [
          Center(
            child: Data_Menu_mainmenu(),
          )
        ],
      ),
    );
  }
}

class Data_Menu_mainmenu extends StatefulWidget {
  @override
  State<Data_Menu_mainmenu> createState() => _Data_Menu_mainmenuState();
}

class _Data_Menu_mainmenuState extends State<Data_Menu_mainmenu> {
  //const Data_Menu_mainmenu({Key? key},this.pagein) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //Axis-Y
        crossAxisAlignment: CrossAxisAlignment.center, //Axis-X

        children: [
          SizedBox(
            height: 20,
          ),

          // menu_normal(
          //   name: "COIL",
          //   page: Page6(),
          // ),
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 40,
                  width: 180,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.all(1),
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("assets/images/logo_tpk.png"),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ))),
          InkWell(
            onTap: () {
              setState(() {
                if (menu_AOTOSN01) {
                  menu_AOTOSN01 = false;
                } else {
                  menu_AOTOSN01 = true;
                }
              });
            },
            child: SizedBox(
              height: 50,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 6.0, left: 6, top: 4.0, bottom: 4.0),
                      child: Container(
                        height: 24,
                        width: 24,
                        child: Icon(
                          menu_AOTOSN01
                              ? Icons.arrow_drop_up_outlined
                              : Icons.arrow_drop_down_outlined,
                          color: Colors.white,
                        ),
                        // decoration: BoxDecoration(
                        //     image: DecorationImage(
                        //         image: AssetImage(getShowHidePassword_ImgPath()),
                        //         fit: BoxFit.fitHeight))
                      ),
                    ),
                    const Text(
                      "AUTO SN",
                      style: TextStyle(
                        fontFamily: 'Mitr',
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (menu_AOTOSN01) ...[
            menu_normal(
              name: "DASHBOARD",
              page: Page1(),
            ),
            menu_normal(
              name: "Report",
              page: Page2(),
            ),
          ],

          InkWell(
            onTap: () {
              setState(() {
                if (menu_AUTOCU01) {
                  menu_AUTOCU01 = false;
                } else {
                  menu_AUTOCU01 = true;
                }
              });
            },
            child: SizedBox(
              height: 50,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 6.0, left: 6, top: 4.0, bottom: 4.0),
                      child: Container(
                        height: 24,
                        width: 24,
                        child: Icon(
                          menu_AUTOCU01
                              ? Icons.arrow_drop_up_outlined
                              : Icons.arrow_drop_down_outlined,
                          color: Colors.white,
                        ),
                        // decoration: BoxDecoration(
                        //     image: DecorationImage(
                        //         image: AssetImage(getShowHidePassword_ImgPath()),
                        //         fit: BoxFit.fitHeight))
                      ),
                    ),
                    const Text(
                      "AUTO CU",
                      style: TextStyle(
                        fontFamily: 'Mitr',
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (menu_AUTOCU01) ...[
            menu_normal(
              name: "DASHBOARD",
              page: Page1(),
            ),
            menu_normal(
              name: "Report",
              page: Page2(),
            ),
          ],

          InkWell(
            onTap: () {
              setState(() {
                if (menu_AUTOPL02) {
                  menu_AUTOPL02 = false;
                } else {
                  menu_AUTOPL02 = true;
                }
              });
            },
            child: SizedBox(
              height: 50,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 6.0, left: 6, top: 4.0, bottom: 4.0),
                      child: Container(
                        height: 24,
                        width: 24,
                        child: Icon(
                          menu_AUTOPL02
                              ? Icons.arrow_drop_up_outlined
                              : Icons.arrow_drop_down_outlined,
                          color: Colors.white,
                        ),
                        // decoration: BoxDecoration(
                        //     image: DecorationImage(
                        //         image: AssetImage(getShowHidePassword_ImgPath()),
                        //         fit: BoxFit.fitHeight))
                      ),
                    ),
                    const Text(
                      "AUTO Peeling 02",
                      style: TextStyle(
                        fontFamily: 'Mitr',
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (menu_AUTOPL02) ...[
            menu_normal(
              name: "DASHBOARD",
              page: Page1(),
            ),
            menu_normal(
              name: "Report",
              page: Page2(),
            ),
          ],

          Divider(
            color: Color(0x4dffffff),
            height: 12,
          ),
        ],
      ),
    );
  }
}

class Logomenu extends StatelessWidget {
  const Logomenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 80,
      color: Colors.white,

      child: Padding(
        padding: const EdgeInsetsDirectional.all(1),
        child: Container(
          height: 35,
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage("assets/images/logo_tpk.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),

      //color: Colors.white,
    );
  }
}
