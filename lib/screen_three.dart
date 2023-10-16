import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenThree extends StatelessWidget {
  final String id;

  const ScreenThree({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Screen Three"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Path Parameters: $id"),
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: const Text("Go Back"),
              ),
              TextButton(
                onPressed: () {
                  context.goNamed("/");
                },
                child: const Text("Back To Initial Routes"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}