import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/main.dart';

class HomeConsumer extends ConsumerStatefulWidget {
  const HomeConsumer({super.key});

  @override
  ConsumerState<HomeConsumer> createState() => _HomeConsumerState();
}

class _HomeConsumerState extends ConsumerState<HomeConsumer> {
  @override
  Widget build(BuildContext context) {
    final name = ref.watch(nameProvider);
    return Scaffold(
      body: Center(
        child: Text('My name is $name'),
      ),
    );
  }
}
