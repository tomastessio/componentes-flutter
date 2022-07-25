import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = '/home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: '/listview1',
        name: 'List View 1',
        screen: const Listview1Screen(),
        icon: Icons.list_alt_outlined),
    MenuOption(
        route: '/listview2',
        name: 'List View 2',
        screen: const Listview2Screen(),
        icon: Icons.list_outlined),
    MenuOption(
        route: '/alert',
        name: 'Alert Screen',
        screen: const AlertScreen(),
        icon: Icons.dangerous_outlined),
    MenuOption(
        route: '/card',
        name: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.card_giftcard),
    MenuOption(
        route: '/avatar',
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOption(
        route: '/animated',
        name: 'Pantalla Animada',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_outline_rounded),
    MenuOption(
        route: '/input',
        name: 'Login',
        screen: const InputScreen(),
        icon: Icons.input_outlined),
    MenuOption(
        route: '/slider',
        name: 'Slider',
        screen: const SliderScreen(),
        icon: Icons.slow_motion_video_outlined),
    MenuOption(
        route: '/listviewbuilder',
        name: 'Infinite Scroll & Pull to Refresh',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build_circle_rounded)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'/home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({
        option.route: (BuildContext context) => option.screen,
      });
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   '/home': (BuildContext context) => const HomeScreen(),
  //   '/listview1': (BuildContext context) => const Listview1Screen(),
  //   '/listview2': (BuildContext context) => const Listview2Screen(),
  //   '/alert': (BuildContext context) => const AlertScreen(),
  //   '/card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
