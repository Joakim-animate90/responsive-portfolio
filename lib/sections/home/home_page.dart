import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../navigation/navigation_bloc.dart';
import 'home_engine.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: HomePage());

  @override
  _HomePageState createState() => _HomePageState ();
}

class _HomePageState extends State<HomePage> {

  final _navigatorKey = GlobalKey<NavigatorState>();
  var props;
  NavigatorState? get _navigator => _navigatorKey.currentState;
  @override
  Widget build(BuildContext context) {
    return BlocListener<NavigationBloc, NavigationState>(
      listener: (context, state) {

        if (state == const StateNavigationAbout()) {
          _navigator?.popUntil((route) => route.isFirst);}


      },



      child: Navigator(
        key: _navigatorKey,
        onGenerateRoute: (_) => HomeEngine.route(),
      ),
    );
  }
}