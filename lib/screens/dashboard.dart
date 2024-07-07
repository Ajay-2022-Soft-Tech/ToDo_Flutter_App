import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

import '../constants/colors.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FadeInLeft( // Example animation: FadeInLeft for content
                  duration: Duration(milliseconds: 600),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Dashboard",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Column(
                  children: [
                    SlideInUp( // Example animation: SlideInUp for a list
                      duration: Duration(milliseconds: 800),
                      child:  RichText(
                        text: const TextSpan(
                          text: 'Coming Soon',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontFamily: 'ArsenalSC',
                              fontWeight: FontWeight.w500
                          ),

                        ),


                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(child: Text('Contacts')),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/profile.jpg'),
            ),
          )
        ],
      ),
      backgroundColor: tdBGColor,
    );
  }

}
