import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:res_portfolio/components/side_menu.dart';

import '../../components/dash_body.dart';
import '../../controllers/menu_controller.dart';
import '../../navigation/navigation_bloc.dart';
import '../../utils/constants.dart';

class HomeViewMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          return Scaffold(
            // backgroundColor: bgColor,
            appBar: AppBar(
              backgroundColor: primaryColor,

              //leading: Navigator.of(context).canPop() ? const BackButton() : null,
            ),
            key: context.read<MenuController>().scaffoldKey,
            drawer: SideMenu(),
            body:DashboardBody(state), );
        });
  }
}