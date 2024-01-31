import 'package:flutter/material.dart';
import 'package:mapayo_task4_week4_5/components/friendcard.dart';
import 'package:mapayo_task4_week4_5/components/friendlist.dart';
import 'package:mapayo_task4_week4_5/components/friendpost.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final txtheaderStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
  final txtNumStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/image_21.jpg'),
                ),
                Text(
                  'Raymond Mapayo',
                  style: txtheaderStyle,
                ),
                Text('raymond@gmail.com'),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('FOLLOWERS'),
                    Text('POST'),
                    Text('FOLLOWING'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '100',
                      style: txtNumStyle,
                    ),
                    Text(
                      '108',
                      style: txtNumStyle,
                    ),
                    Text(
                      '1.9k',
                      style: txtNumStyle,
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text(
                        'Friends',
                        style: txtheaderStyle,
                      ),
                    ],
                  ),
                ),
                FriendList(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text('Posts', style: txtheaderStyle),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                FriendPost(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
