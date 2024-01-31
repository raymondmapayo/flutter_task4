import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
    required this.btnTxt,
    required this.iconVal,
  });

  final String btnTxt;
  final IconData iconVal;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        foregroundColor: Colors.grey,
      ),
      onPressed: () {},
      icon: Icon(iconVal),
      label: Text(btnTxt),
    );
  }
}
