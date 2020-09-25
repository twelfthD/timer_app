import 'package:flutter/material.dart';
import 'package:timer_app/screens/settings_screen.dart';
import 'package:timer_app/screens/stopwatch_screen.dart';
import 'package:timer_app/screens/timer_screen.dart';
import 'package:timer_app/states/nav_bar_state.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NavBarState(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.white54,
          scaffoldBackgroundColor: Colors.black,
          textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            subtitle2: TextStyle(
              fontSize: 14,
            ),
          ),
        ),
        routes: {
          StopwatchScreen.routeName: (context) => StopwatchScreen(),
          TimerScreen.routeName: (context) => TimerScreen(),
          SettingsScreen.routeName: (context) => SettingsScreen(),
        },
        home: StopwatchScreen(),
      ),
    );
  }
}
