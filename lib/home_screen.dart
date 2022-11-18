import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_test/counter_view_model.dart';

final counterProvider = NotifierProvider((ref) => CounterViewModel(),);

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Riverpod Test"),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                context.go('/a');
              },
              child: const Text('GoRouter with riverpod'),
            ),
            ElevatedButton(
              onPressed: () {

              },
              child: const Text('Count Up'),
            )
          ],
        ),
      ),
    );
  }
}