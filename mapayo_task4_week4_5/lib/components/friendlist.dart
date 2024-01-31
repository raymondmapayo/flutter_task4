import 'package:flutter/material.dart';

import 'friendcard.dart';

class FriendList extends StatelessWidget {
  const FriendList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FriendCard(name: 'Johnly Engyo', imageData: 'images/image_21.jpg'),
            FriendCard(
                name: 'Edda Mae Osorno', imageData: 'images/image_10.jpg'),
            FriendCard(
                name: 'Marie Cris Arilla', imageData: 'images/image_1.jpg'),
          ],
        ),
        SizedBox(height: 10), // Add some spacing between the rows
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FriendCard(name: 'Aj Calcena', imageData: 'images/image_7.jpg'),
            FriendCard(name: 'Raymond Mapayo', imageData: 'images/image_3.jpg'),
            FriendCard(
                name: 'Juliana Mausisa', imageData: 'images/image_5.jpg'),
          ],
        ),
      ],
    );
  }
}
