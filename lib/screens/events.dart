import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import '../constants/colors.dart';

class EventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FadeInUp( // Example animation: FadeInUp for 'Events'
              duration: Duration(milliseconds: 600),
              child: RichText(
                text: const TextSpan(
                  text: 'Events',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'ArsenalSC',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            FadeInUp( // Example animation: FadeInUp for 'Coming Soon'
              duration: Duration(milliseconds: 800),
              child: RichText(
                text: const TextSpan(
                  text: 'Coming Soon',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontFamily: 'ArsenalSC',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
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
          Center(child: Text('Events')),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/profile.jpg'),
            ),
          ),
        ],
      ),
      backgroundColor: tdBGColor,
    );
  }
}
