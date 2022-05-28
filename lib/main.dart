import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:res_portfolio/app/portfolio_engine.dart';
import 'authentication/authentication_bloc.dart';
import 'components/constant_themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocOverrides.runZoned(
          () => runApp(MultiBlocProvider(
              providers: [
          BlocProvider<AuthenticationBloc>(
          create: (BuildContext context) => AuthenticationBloc(),
          )], child:MultiProvider(
              providers: [
          Provider<GlobalTheme>(
          create: (context) => GlobalTheme(),
          ),],child: PortfolioEngine(),))));
}
