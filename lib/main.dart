import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/home_consumer.dart';
import 'package:learn_riverpod/home_consumer_widget.dart';

// final nameProvider = Provider<String>((ref) {
//   return "Ademie";
// });

final nameProvider = StateProvider<String?>((ref) => null);
void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeConsumerWidget());
  }
}
