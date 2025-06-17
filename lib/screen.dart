import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/images.dart';
import 'package:whatsapp/bottom.dart';
import 'package:whatsapp/massege.dart';
import 'package:whatsapp/massegeswidget.dart';

class appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<masseges> massege = [
      masseges(massege: 'Hello !', issender: false),
      masseges(massege: 'Hello !', issender: true),
      masseges(massege: 'Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it! !', issender: false),
      masseges( images: images.profile, issender: false),
      masseges(
          massege: 'what a Great Content Tp learn Flutter', issender: true),
    ];

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        foregroundColor: colors.white,
        titleSpacing: 0,
        leadingWidth: 40,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        backgroundColor: colors.green,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(images.profile),
            ),
            Container(
              width: 12,
            ),
            Text(
              'Abdalla Ahmed',
              style: TextStyle(
                fontSize: 14,
                color: colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.videocam_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: ListView.separated(
                  separatorBuilder: (context, index) => Container(
                        height: 16,
                      ),
                  itemBuilder: (context, index) => mass(massege[index]),
                  itemCount: massege.length),
            ),
          ),
          bottom(),
        ],
      ),
    );
  }
}
