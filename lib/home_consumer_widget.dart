import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/main.dart';

class HomeConsumerWidget extends ConsumerWidget {
  const HomeConsumerWidget({super.key});

  // Update value
  void onSubmit(WidgetRef ref, String value) {
    // ref.read(nameProvider.notifier).state = value;
    ref.read(nameProvider.notifier).update((state) => value);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider) ?? '';
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onSubmitted: (value) => onSubmit(ref, value),
            ),
            Text('My name is $name'),
          ],
        ),
      ),
    );
  }
}
