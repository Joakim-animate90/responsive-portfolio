import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';



class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoRefresh(
      duration: const Duration(milliseconds: 2000),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: AnimationLimiter(
              child: Column(
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(milliseconds: 375),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    horizontalOffset: MediaQuery.of(context).size.width / 2,
                    child: FadeInAnimation(child: widget),
                  ),
                  children: [
                    EmptyCard(
                      width: MediaQuery.of(context).size.width,
                      height: 166.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          EmptyCard(height: 50.0, width: 50.0),
                          EmptyCard(height: 50.0, width: 50.0),
                          EmptyCard(height: 50.0, width: 50.0),
                        ],
                      ),
                    ),
                    Row(
                      children: const [
                        Flexible(child: EmptyCard(height: 150.0)),
                        Flexible(child: EmptyCard(height: 150.0)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: const [
                          Flexible(child: EmptyCard(height: 50.0)),
                          Flexible(child: EmptyCard(height: 50.0)),
                          Flexible(child: EmptyCard(height: 50.0)),
                        ],
                      ),
                    ),
                    EmptyCard(
                      width: MediaQuery.of(context).size.width,
                      height: 166.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
/// Automatically rebuild [child] widget after the given [duration]
class AutoRefresh extends StatefulWidget {
  final Duration duration;
  final Widget child;

  AutoRefresh({
    Key? key,
    required this.duration,
    required this.child,
  }) : super(key: key);

  @override
  _AutoRefreshState createState() => _AutoRefreshState();
}

class _AutoRefreshState extends State<AutoRefresh> {
  int? keyValue;
  ValueKey? key;

  Timer? _timer;

  @override
  void initState() {
    super.initState();

    keyValue = 0;
    key = ValueKey(keyValue);

    //_recursiveBuild();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      child: widget.child,
    );
  }

  void _recursiveBuild() {
    _timer = Timer(
      widget.duration,
          () {
        setState(() {
          keyValue = keyValue! + 1;
          key = ValueKey(keyValue);
          _recursiveBuild();
        });
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

  class EmptyCard extends StatelessWidget {
  final double? width;
  final double? height;

  const EmptyCard({
  Key? key,
  this.width,
  this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Container(
  width: width,
  height: height,
  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
  decoration: const BoxDecoration(
  color: Colors.black,
  borderRadius: BorderRadius.all(Radius.circular(4.0)),
  boxShadow: <BoxShadow>[
  BoxShadow(
  color: Colors.black12,
  blurRadius: 4.0,
  offset: Offset(0.0, 4.0),
  ),
  ],
  ),
  );
  }
  }