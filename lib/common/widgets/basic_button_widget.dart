import 'package:flutter/material.dart';

class BasicButtonWidget extends StatelessWidget {
  final VoidCallback callback;
  final String title;
  final double? height;
  const BasicButtonWidget(
      {super.key,
      required this.callback,
      required this.title,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      child: Text(title),
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height ?? 80),
      ),
    );
  }
}
