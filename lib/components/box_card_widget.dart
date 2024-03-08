import 'package:flutter/material.dart';

class BoxCardWidget extends StatelessWidget {
  final Widget boxContent;
  const BoxCardWidget({super.key, required this.boxContent});

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[3], 
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).cardColor,
      ),
      child: boxContent,
    );
  }
}