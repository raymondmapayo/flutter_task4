import 'package:flutter/material.dart';

class FriendCard extends StatelessWidget {
  FriendCard({
    super.key,
    required this.name,
    required this.imageData,
  });
  final txtheaderStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  final String name;
  final String imageData;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(
            imageData,
            width: 100,
            height: 100,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            name,
            style: txtheaderStyle,
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
