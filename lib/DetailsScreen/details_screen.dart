import 'package:flutter/material.dart';
import 'package:triplea_loginpage/DetailsScreen/body.dart';
import 'package:triplea_loginpage/announcements.dart';
import 'package:triplea_loginpage/color.dart';


class DetailsScreen extends StatelessWidget {
  final Announcement announcement;

  const DetailsScreen({Key key, this.announcement}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: Body(
        announcement: announcement,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: buttonColor,
      elevation: 0,
      centerTitle: false,
      leading: IconButton(
      padding: EdgeInsets.only(left: 20), 
      icon: Icon(Icons.arrow_back, color: Colors.white,),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    title: Text(
      'Back'.toUpperCase(),
      style: Theme.of(context).textTheme.bodyText2.copyWith(
        color: Colors.white
      ),
    ),
    );
  }
}