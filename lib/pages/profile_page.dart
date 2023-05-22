import 'package:flutter/material.dart';
import 'package:flutter2/core/constants.dart';
import 'package:flutter2/core/notifiers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/yeah.png'),
            radius: 60,
          ),
          SizedBox(height: kDouble20),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Flutter Map'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('info@askjln.com'),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text('FlutterMap.com'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
        },
        child: const Icon(Icons.dark_mode),
      ),
    );
  }
}
