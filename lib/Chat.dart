import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:login_form/bulidChat.dart';

class Chater extends StatelessWidget {
  const Chater({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 15,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://www.teltarif.de/img/arch/2022/kw47/whatsapp-avatar-update-beta-android-anleitung-1og.jpg'),
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              "WhatsApp Waleed",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        actions: [
          IconButton(
              icon: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.info_outline,
                  size: 16,
                ),
              ),
              onPressed: () {}),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 20,
              child: const Icon(Icons.add_circle_sharp),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //for search bar
              Container(
                
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Search'),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  shrinkWrap: true,
                  
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => bulidChatStory(),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 8,
                  ),
                  itemCount: 10,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // for Avatares Storys onling
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => bulidChatitem(),
                itemCount: 20,
                separatorBuilder: (context, index) => SizedBox(
                  height: 15,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
