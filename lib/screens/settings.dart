import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import 'package:animate_do/animate_do.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: tdBGColor,
      ),
      body: FadeIn(
        duration: Duration(milliseconds: 600),
        child: SettingsList(),
      ),
    );
  }
}

class SettingsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        FadeInUp( // Animation for General section
          duration: Duration(milliseconds: 800),
          child: SettingsSection(
            title: 'General',
            tiles: [
              SlideInLeft( // Animation for each tile
                duration: Duration(milliseconds: 200),
                delay: Duration(milliseconds: 200),
                child: SettingsTile(
                  title: 'Account',
                  icon: Icons.person,
                  onTap: () {
                    // Handle account tap
                  },
                ),
              ),
              SlideInLeft(
                duration: Duration(milliseconds: 200),
                delay: Duration(milliseconds: 200),
                child: SettingsTile(
                  title: 'Notifications',
                  icon: Icons.notifications,
                  onTap: () {
                    // Handle notifications tap
                  },
                ),
              ),
              SlideInLeft(
                duration: Duration(milliseconds: 200),
                delay: Duration(milliseconds: 200),
                child: SettingsTile(
                  title: 'Language',
                  icon: Icons.language,
                  onTap: () {
                    // Handle language tap
                  },
                ),
              ),
              SlideInLeft(
                duration: Duration(milliseconds: 200),
                delay: Duration(milliseconds: 500),
                child: SettingsTile(
                  title: 'Theme',
                  icon: Icons.color_lens,
                  onTap: () {
                    // Handle theme tap
                  },
                ),
              ),
            ],
          ),
        ),
        FadeInUp( // Animation for Security section
          duration: Duration(milliseconds: 800),
          delay: Duration(milliseconds: 200),
          child: SettingsSection(
            title: 'Security',
            tiles: [
              SlideInLeft(
                duration: Duration(milliseconds: 200),
                delay: Duration(milliseconds: 200),
                child: SettingsTile(
                  title: 'Change Password',
                  icon: Icons.lock,
                  onTap: () {
                    // Handle change password tap
                  },
                ),
              ),
              SlideInLeft(
                duration: Duration(milliseconds: 200),
                delay: Duration(milliseconds: 200),
                child: SettingsTile(
                  title: 'App Lock',
                  icon: Icons.phonelink_lock,
                  onTap: () {
                    // Handle app lock tap
                  },
                ),
              ),
            ],
          ),
        ),
        FadeInUp( // Animation for Support section
          duration: Duration(milliseconds: 800),
          delay: Duration(milliseconds: 600),
          child: SettingsSection(
            title: 'Support',
            tiles: [
              SlideInLeft(
                duration: Duration(milliseconds: 200),
                delay: Duration(milliseconds: 200),
                child: SettingsTile(
                  title: 'Help Center',
                  icon: Icons.help,
                  onTap: () {
                    // Handle help center tap
                  },
                ),
              ),
              SlideInLeft(
                duration: Duration(milliseconds: 200),
                delay: Duration(milliseconds: 200),
                child: SettingsTile(
                  title: 'Contact Us',
                  icon: Icons.contact_mail,
                  onTap: () {
                    // Handle contact us tap
                  },
                ),
              ),
              SlideInLeft(
                duration: Duration(milliseconds: 200),
                delay: Duration(milliseconds: 200),
                child: SettingsTile(
                  title: 'Feedback',
                  icon: Icons.feedback,
                  onTap: () {
                    // Handle feedback tap
                  },
                ),
              ),
            ],
          ),
        ),
        FadeInUp( // Animation for About section
          duration: Duration(milliseconds: 800),
          delay: Duration(milliseconds: 800),
          child: SettingsSection(
            title: 'About',
            tiles: [
              SlideInLeft(
                duration: Duration(milliseconds: 200),
                delay: Duration(milliseconds: 200),
                child: SettingsTile(
                  title: 'Terms of Service',
                  icon: Icons.description,
                  onTap: () {
                    // Handle terms of service tap
                  },
                ),
              ),
              SlideInLeft(
                duration: Duration(milliseconds: 200),
                delay: Duration(milliseconds: 200),
                child: SettingsTile(
                  title: 'Privacy Policy',
                  icon: Icons.privacy_tip,
                  onTap: () {
                    // Handle privacy policy tap
                  },
                ),
              ),
              SlideInLeft(
                duration: Duration(milliseconds: 200),
                delay: Duration(milliseconds: 200),
                child: SettingsTile(
                  title: 'Open Source Licenses',
                  icon: Icons.code,
                  onTap: () {
                    // Handle open source licenses tap
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SettingsSection extends StatelessWidget {
  final String title;
  final List<Widget> tiles;

  SettingsSection({required this.title, required this.tiles});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: tdBlack,
            ),
          ),
          Column(
            children: tiles,
          ),
        ],
      ),
    );
  }
}

class SettingsTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  SettingsTile({required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey[800]),
      title: Text(title),
      trailing: Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
