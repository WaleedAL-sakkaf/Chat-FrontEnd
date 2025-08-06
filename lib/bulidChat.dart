import 'package:flutter/material.dart';

Widget bulidChatStory() => Container(
      width: 60,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              CircleAvatar(
                radius: 26,
                backgroundImage: NetworkImage(
                    'https://rawinfopages.co.uk/wp-content/uploads/2023/02/whatsapp-avatar.jpg'),
              ),

              // CircleAvatar(
              //   radius: 8,
              //   backgroundColor: Colors.white,
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 47),
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              'Jamal Sareea',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
Widget bulidChatitem() => Row(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 26,
              backgroundImage: NetworkImage(
                  'https://hashnode.imgix.net/res/hashnode/image/upload/v1566562989389/5sU81hyZl.png'),
            ),

            // CircleAvatar(
            //   radius: 8,
            //   backgroundColor: Colors.white,
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 47),
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Waleed Alsaqaf",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "ffffmassegesgfdgdg thhgj show",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                    ),
                  ),
                  Text('03 00 pm')
                ],
              ),
            ],
          ),
        )
      ],
    );
