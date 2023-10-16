// GoRouter configuration
import 'package:go_router/go_router.dart';
import 'package:go_router_sample/screen_one.dart';
import 'package:go_router_sample/screen_three.dart';
import 'package:go_router_sample/screen_two.dart';
import 'package:go_router_sample/user_model.dart';

import 'home_screen.dart';
import 'main.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/screen-one',
      name: "screen-one",
      builder: (context, state) => const ScreenOne(),
    ),
    GoRoute(
      path: '/screen-two',
      name: "screen-two",
      builder: (context, state) => ScreenTwo(
        user: state.extra as User,
      ),
    ),
    GoRoute(
      path: '/screen-three/:id',
      name: "screen-three",
      builder: (context, state) => ScreenThree(
        id: state.pathParameters["id"]!,
      ),
    ),
  ],
);