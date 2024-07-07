
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/screens/contacts.dart';
import 'package:todo/screens/dashboard.dart';
import 'package:todo/screens/events.dart';
import 'package:todo/screens/notes.dart';
import 'package:todo/screens/notifications.dart';
import 'package:todo/screens/privacy_policy.dart';
import 'package:todo/screens/send_feedback.dart';
import 'package:todo/screens/settings.dart';
import 'package:todo/utils/routes/routes_name.dart';


class Routes {

  static Route<dynamic> generateRoute (RouteSettings settings){

    switch(settings.name){

      case RoutesName.Dashboard:
        return MaterialPageRoute(
            builder: (BuildContext context)=>DashboardPage());

      case RoutesName.Contacts:
        return MaterialPageRoute(
            builder: (BuildContext context)=>ContactsPage());

      case RoutesName.Events:
        return MaterialPageRoute(
            builder: (BuildContext context)=>EventsPage());

      case RoutesName.Notes:
        return MaterialPageRoute(
            builder: (BuildContext context)=>NotesPage());

      case RoutesName.Settings:
        return MaterialPageRoute(
            builder: (BuildContext context)=>SettingsPage());

      case RoutesName.Notifications:
        return MaterialPageRoute(
            builder: (BuildContext context)=>NotificationsPage());

      case RoutesName.PrivacyPolicy:
        return MaterialPageRoute(
            builder: (BuildContext context)=>PrivacyPolicyPage());

      case RoutesName.SendFeedback:
        return MaterialPageRoute(
            builder: (BuildContext context)=>SendFeedbackPage());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text("No Route Found"),
            ),
          );
        });
    }
  }
}