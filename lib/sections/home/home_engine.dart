import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/custom_responsive.dart';

class HomeEngine extends StatelessWidget {
  const HomeEngine({Key? key}) : super(key: key);
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const HomeEngine());
  }

  @override
  Widget build(BuildContext context) {
    return CustomResponsive(
      desktop: HomeViewWeb(), mobile: HomeViewMobile(), tablet:HomeViewTablet(), key: null,);
  }
}