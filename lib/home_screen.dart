import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextButton(
              onPressed: () {
                context.pushNamed(
                  "screen-one",
                );
              },
              child: const Text("Go To Screen One"),
            )
          ],
        ),
      ),
    );
  }
}
