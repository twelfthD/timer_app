import 'package:flutter/material.dart';
import 'package:timer_app/screens/settings_screen.dart';
import 'package:timer_app/screens/stopwatch_screen.dart';
import 'package:timer_app/screens/timer_screen.dart';
import 'package:timer_app/states/nav_bar_state.dart';

class BottomNavBar extends StatefulWidget {
  final int index;
  final Function callBack;

  const BottomNavBar({Key key, this.index, this.callBack})
      : super(
          key: key,
        );

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    NavBarStateState data = NavBarState.of(context);
    index = data.index;
  }

  @override
  Widget build(BuildContext context) {
    _BuildNavBarItem(Icon icon, String title) {
      return BottomNavigationBarItem(
        icon: icon,
        title: Text(title),
      );
    }

    return BottomNavigationBar(
        elevation: 0,
        currentIndex: index,
        unselectedFontSize: 14,
        selectedFontSize: 14,
        unselectedItemColor: Theme.of(context).accentColor,
        backgroundColor: Colors.black,
        items: <BottomNavigationBarItem>[
          _BuildNavBarItem(
            Icon(Icons.timer),
            'Stopwatch',
          ),
          _BuildNavBarItem(
            Icon(Icons.slow_motion_video),
            'Countdown',
          ),
          _BuildNavBarItem(
            Icon(Icons.settings),
            'Settings',
          ),
        ],
        onTap: (ind) {
          NavBarState.of(context).setIndex(ind);

          switch (ind) {
            case 0:
              Navigator.of(context)
                  .pushReplacementNamed(StopwatchScreen.routeName);
              break;
            case 1:
              Navigator.of(context).pushReplacementNamed(TimerScreen.routeName);
              break;
            case 2:
              Navigator.of(context)
                  .pushReplacementNamed(SettingsScreen.routeName);

              break;
            default:
              Navigator.of(context)
                  .pushReplacementNamed(StopwatchScreen.routeName);
          }
        });
  }
}
