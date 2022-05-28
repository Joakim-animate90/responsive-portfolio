import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:res_portfolio/app/portfolio_engine.dart';
import 'authentication/authentication_bloc.dart';
import 'components/constant_themes.dart';
import 'controllers/menu_controller.dart';
import 'navigation/navigation_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocOverrides.runZoned(
          () => runApp(MultiBlocProvider(
              providers: [
          BlocProvider<AuthenticationBloc>(
          create: (BuildContext context) => AuthenticationBloc(),
          ),
                BlocProvider<NavigationBloc>(
                  create: (BuildContext context) => NavigationBloc(),
                )
              ], child:MultiProvider(
              providers: [
          Provider<GlobalTheme>(
          create: (context) => GlobalTheme(),
          ),
                ChangeNotifierProvider(
                    create: (context) => MenuController())
              ],child: PortfolioEngine(),))));
}
