import 'package:flutter/material.dart';
import 'package:mapayo_task4_week4_5/components/buttons.dart';

class FriendPost extends StatelessWidget {
  FriendPost({super.key});

  final txtStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  'images/image_5.jpg',
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Rose', style: txtStyle),
                  Row(
                    children: [
                      Text('Nov. 11'),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.person,
                        size: 15,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Time is Kuan')),
        SizedBox(
          height: 10,
        ),
        Image.asset('images/image_10.jpg'),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('1M comments . 500K shares'),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Buttons(
              btnTxt: 'Like',
              iconVal: Icons.thumb_up,
            ),
            Buttons(
              btnTxt: 'Comments',
              iconVal: Icons.message,
            ),
            Buttons(
              btnTxt: 'Share',
              iconVal: Icons.share,
            ),
          ],
        ),
        SizedBox(
          child: Container(
            color: Colors.grey,
          ),
          height: 5,
        ),
        SizedBox(
          height: 20,
        ),

        //2nd post
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                    'images/image_21.jpg'), // Change to the appropriate image
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HAnzy',
                    style: txtStyle,
                  ),
                  Row(
                    children: [
                      Text('Nov. 12'), // Change the date accordingly
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.person,
                        size: 15,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Text('Mazing'), // Add the content for the second user
        ),
        SizedBox(
          height: 10,
        ),
        Image.asset('images/image_20.jpg'), // Change to the appropriate image
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
                '30 comments . 5 shares'), // Change the comment and share count accordingly
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Buttons(btnTxt: 'Like', iconVal: Icons.thumb_up),
            Buttons(btnTxt: 'Comments', iconVal: Icons.message),
            Buttons(btnTxt: 'Share', iconVal: Icons.share),
          ],
        ),

        SizedBox(
          child: Container(
            color: Colors.grey,
          ),
          height: 5,
        ),
        SizedBox(
          height: 20,
        ),
        //3rd post
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                    'images/image_7.jpg'), // Change to the appropriate image
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Josh',
                    style: txtStyle,
                  ),
                  Row(
                    children: [
                      Text('Nov. 12'), // Change the date accordingly
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.person,
                        size: 15,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Text('Wow'), // Add the content for the second user
        ),
        SizedBox(
          height: 10,
        ),
        Image.asset('images/image_9.jpg'), // Change to the appropriate image
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
                '30 comments . 5 shares'), // Change the comment and share count accordingly
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Buttons(btnTxt: 'Like', iconVal: Icons.thumb_up),
            Buttons(btnTxt: 'Comments', iconVal: Icons.message),
            Buttons(btnTxt: 'Share', iconVal: Icons.share),
          ],
        ),

        SizedBox(
          child: Container(
            color: Colors.grey,
          ),
          height: 5,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
