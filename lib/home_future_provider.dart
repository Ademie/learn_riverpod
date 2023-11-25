import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/main.dart';

class HomeFutureProvider extends ConsumerWidget {
  const HomeFutureProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(fetchUserProvider).when(
      data: (data) {
        return Scaffold(
          body: Center(
            child: Text('My name is ${data.name}'),
          ),
        );
      },
      error: (error, stackTrace) {
        print(error);
        return const Scaffold(
          body: Center(
            child: Text('Error bitch'),
          ),
        );
      },
      loading: () {
        return const Scaffold(
          body: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
