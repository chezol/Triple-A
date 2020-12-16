import 'package:flutter/material.dart';
import 'package:triplea_loginpage/announcements.dart';
import 'package:triplea_loginpage/color.dart';

class Body extends StatelessWidget {
  final Announcement announcement;

  const Body({Key key, this.announcement}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: size.height*0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Poster(size: size, image: announcement.image,
              ),
              Text(announcement.title,
              style: Theme.of(context).textTheme.headline6.copyWith(
                color: titleColor,
                fontWeight: FontWeight.bold,
              ),),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20/2),
                child: Text(
                  announcement.description,
                  style: TextStyle(color: Colors.black45),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Poster extends StatelessWidget {
  const Poster({
    Key key,
    @required this.size, 
    this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.center,
      height: size.width * 0.8,
      child: Stack(
        children: <Widget> [
        Container( 
          height: size.width*0.7,
          width: size.width*0.7,
        ),
        Image.asset(
          image,
          height: size.width*0.7,
          width: size.width*0.7,
          fit: BoxFit.cover,
        )
      ],)
    );
  }
}