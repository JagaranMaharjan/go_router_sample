import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'go_router_config.dart';

void main() {
  usePathUrlStrategy();
  runApp(const GoRouterTest());
}



class GoRouterTest extends StatefulWidget {
  const GoRouterTest({super.key});

  @override
  State<GoRouterTest> createState() => _GoRouterTestState();
}

class _GoRouterTestState extends State<GoRouterTest> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Go Router',
    );
  }
}







