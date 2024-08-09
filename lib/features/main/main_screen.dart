import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:glasses/features/app_router.gr.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final destinations = const <NavigationDestination>[
    NavigationDestination(
      selectedIcon: Icon(Icons.home),
      icon: Icon(Icons.home_outlined),
      label: 'Home',
    ),
    NavigationDestination(
      icon: Badge(child: Icon(Icons.chat)),
      label: 'Chat',
    ),
    NavigationDestination(
      icon: Badge(child: Icon(Icons.notifications_sharp)),
      label: 'Notifications',
    ),
    NavigationDestination(
      icon: Badge(
        label: Text('2'),
        child: Icon(Icons.messenger_sharp),
      ),
      label: 'Messages',
    ),
  ];

  final authRoutes = const [
    HomeRoute(),
    ChatRoute(),
    NotificationRoute(),
    ProfileRoute()
  ];

  final guestRoutes = const [
    HomeRoute(),
    ChatRoute(),
    NotificationRoute(),
    SignInRoute()
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: guestRoutes,
      bottomNavigationBuilder: (context, tabRouter) {
        return NavigationBar(
          onDestinationSelected: tabRouter.setActiveIndex,
          indicatorColor: Colors.amber,
          selectedIndex: tabRouter.activeIndex,
          destinations: destinations,
        );
      },
    );
  }
}
