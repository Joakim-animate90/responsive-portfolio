import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../authentication/authentication_bloc.dart';
import '../utils/constants.dart';

class ChasingDots extends StatelessWidget{
  const   ChasingDots({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: ChasingDots());
  @override
  Widget build(BuildContext context) {

   return const Center(child: SpinKitChasingDots(
     color:green,
   ), );
  }
}