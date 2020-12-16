import 'package:flutter/material.dart';
import 'package:triplea_loginpage/bulletin_board/adminbody.dart';
import 'package:triplea_loginpage/color.dart';

class AdminBulletinBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: AdminBody(), 
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: buttonColor,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu, color: Colors.white,), 
        onPressed: () {  },
      ), 
    );
  }
}

