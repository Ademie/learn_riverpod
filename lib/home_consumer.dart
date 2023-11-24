import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/main.dart';

class HomeConsumer extends StatelessWidget {
  const HomeConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final name = ref.watch(nameProvider);
      return Scaffold(
        body: Center(
          child: Text('My name is $name'),
        ),
      );
    });
  }
}
