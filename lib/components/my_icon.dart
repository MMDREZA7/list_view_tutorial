import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  final icon;

  const MyIcon({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 35,
      color: Colors.grey[600],
    );
  }
}
