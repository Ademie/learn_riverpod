import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class HomeConsumer extends StatelessWidget {
  const HomeConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Consumer(
      builder: (context, ref, child) {
        return const Scaffold(
          body: Center(
            child: Text('My name is'),
          ),
        );
      }
    );
  }
}
