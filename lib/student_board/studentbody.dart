import 'package:flutter/material.dart';
import 'package:triplea_loginpage/DetailsScreen/details_screen.dart';
import 'package:triplea_loginpage/announcement_card.dart';
import 'package:triplea_loginpage/announcements.dart';
import 'package:triplea_loginpage/bulletin_board/header.dart';

class StudentBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Column(
        children: <Widget>[
          Header(),
          Expanded(
            child: Stack(
              children: <Widget>[
                ListView.builder(
                  itemCount: announcement.length,
                  itemBuilder: (context, index) => AnnouncementsCard(
                    annIndex: index,
                    announcement: announcement[index],
                    press: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          announcement: announcement[index],
                        ),
                      ));
                    },
                  ),
                )
              ],)
          )
        ],
      ),
    );
  }
}