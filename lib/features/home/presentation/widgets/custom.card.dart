import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  const CustomCard({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * .6,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: child,
          )),
    ).animate().fadeIn(
          delay: Duration(milliseconds: 200),
          duration: Duration(milliseconds: 500),
        );
  }
}
