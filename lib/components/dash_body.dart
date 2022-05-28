import 'package:flutter/cupertino.dart';
import 'package:res_portfolio/components/side_menu.dart';
import 'package:res_portfolio/navigation/navigation_bloc.dart';

import '../sections/about/about_screen.dart';
import '../utils/custom_responsive.dart';

class DashboardBody extends StatelessWidget {
  var state;

  DashboardBody(this.state, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (CustomResponsive.isDesktop(context))
            const Expanded(
              //flex: _size.width > 1300 ? 2 : 4,
                child: SideMenu(
                  key: null,
                )),

          if (state == const StateNavigationAbout())

            const Expanded(flex: 5, child:AboutScreen() ),

        ],
      ),
    );}}