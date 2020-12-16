import 'package:flutter/material.dart';
import 'package:triplea_loginpage/student_board/studentbody.dart';
import 'package:triplea_loginpage/color.dart';

class StudentBulletinBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: StudentBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: buttonColor,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu, color: Colors.white,), 
        onPressed: () { },
      ), 
    );
  }
}

