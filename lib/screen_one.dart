import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_sample/user_model.dart';



class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Screen one"),
        ),
        body: Column(
          children: [
            TextButton(
              onPressed: () {
                context.pushNamed(
                  "screen-two",
                  extra: User(
                    id: 1,
                    name: "Jagaran",
                  ),
                );
              },
              child: const Text("Go To Screen Two"),
            ),
          ],
        ),
      ),
    );
  }
}