import 'package:flutter/material.dart';

class FieldInfo extends StatelessWidget {
  const FieldInfo({
    super.key,
    required this.info,
    required this.fontSize,
  });
  final String info;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        info,
        style: TextStyle(
          color: Colors.grey,
          fontSize: fontSize,
        ),
        softWrap: true,
      ),
    );
  }
}
