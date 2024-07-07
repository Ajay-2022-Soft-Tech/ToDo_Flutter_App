import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo/screens/contacts.dart';
import 'package:todo/screens/dashboard.dart';
import 'package:todo/screens/events.dart';
import 'package:todo/screens/home_screen.dart';
import 'package:todo/screens/notes.dart';
import 'package:todo/screens/notifications.dart';
import 'package:todo/screens/privacy_policy.dart';
import 'package:todo/screens/send_feedback.dart';
import 'package:todo/screens/settings.dart';
import 'package:todo/utils/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor:Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        RoutesName.Dashboard: (context) => DashboardPage(),
        RoutesName.Contacts: (context) => ContactsPage(),
        RoutesName.Events: (context) => EventsPage(),
        RoutesName.Notes: (context) => NotesPage(),
        RoutesName.Settings: (context) => SettingsPage(),
        RoutesName.Notifications: (context) => NotificationsPage(),
        RoutesName.PrivacyPolicy: (context) => PrivacyPolicyPage(),
        RoutesName.SendFeedback: (context) => SendFeedbackPage(),
      },
      home:  HomeScreen(),
    );
  }
}

