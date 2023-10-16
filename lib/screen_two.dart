import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_sample/user_model.dart';
class ScreenTwo extends StatelessWidget {
  final User user;

  const ScreenTwo({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Screen Two"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Extras (Object): ${user.id}, ${user.name}"),
              TextButton(
                onPressed: () {
                  context.pushNamed(
                    "screen-three",
                    pathParameters: {
                      "id": "1",
                    },
                  );
                },
                child: const Text("Go To Screen Three"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}