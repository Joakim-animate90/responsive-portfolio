import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:res_portfolio/sections/home/view_mobile.dart';
import 'package:res_portfolio/sections/home/view_tablet.dart';
import 'package:res_portfolio/sections/home/view_web.dart';

import '../../utils/custom_responsive.dart';

class HomeEngine extends StatelessWidget {
  const HomeEngine({Key? key}) : super(key: key);
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const HomeEngine());
  }

  @override
  Widget build(BuildContext context) {
    return CustomResponsive(
      desktop: const HomeViewWeb(), mobile: HomeViewMobile(), tablet:const HomeViewTablet(), key: null,);
  }
}