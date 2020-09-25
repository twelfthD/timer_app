import 'package:flutter/material.dart';
import 'package:timer_app/widgets/bottom_nav_bar.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = "/settings-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Settings Screen',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
