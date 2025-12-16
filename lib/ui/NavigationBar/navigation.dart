import 'package:flutter/material.dart';

class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(
          icon: Icon(Icons.window_rounded),
          label: 'Iwi Hub',
        ),
        NavigationDestination(
          icon: Icon(Icons.calendar_month_rounded),
          label: 'Calendar',
        ),
        NavigationDestination(
          icon: Icon(Icons.notifications_none_rounded),
          label: 'Notifs',
        ),
        NavigationDestination(
          icon: Icon(Icons.person_2_rounded),
          label: 'Profile',
        ),
      ],
    );
  }
}
