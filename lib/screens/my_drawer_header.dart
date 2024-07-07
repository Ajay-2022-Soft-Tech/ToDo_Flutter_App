import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import 'package:animate_do/animate_do.dart';

class MyHeaderDrawer extends StatefulWidget {
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return FadeIn(
      duration: Duration(milliseconds: 500),
      child: Container(
        color: tdBlue,
        width: double.infinity,
        height: 200,
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BounceInDown( // BounceInDown animation for profile image
              duration: Duration(milliseconds: 800),
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile.jpg'),
                  ),
                ),
              ),
            ),
            FadeInUp( // FadeInUp animation for name text
              duration: Duration(milliseconds: 600),
              child: const Text(
                "Ajay Dewangan",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'ArsenalSC',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SlideInUp( // SlideInUp animation for email text
              duration: Duration(milliseconds: 700),
              child: Text(
                "admin1234@gmail.com",
                style: TextStyle(
                  color: Colors.grey[200],
                  fontSize: 18,
                  fontFamily: 'ArsenalSC',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
