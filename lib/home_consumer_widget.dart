import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/main.dart';

class HomeConsumerWidget extends ConsumerWidget {
  const HomeConsumerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider);
    return Scaffold(
      body: Center(
        child: Text('My name is $name'),
      ),
    );
  }
}
