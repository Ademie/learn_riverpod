import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/home_future_provider.dart';
import 'package:learn_riverpod/user.dart';

final fetchUserProvider = FutureProvider((ref) {
  final userRepository = ref.watch(userRepositoryProvider);
  return userRepository.fetchUserData();
  // final http = HttpService();
  // const url = 'https://jsonplaceholder.typicode.com/users/1';
  // return http.get(Uri.parse(url)).then((value) => User.fromJson(value.body));
});

// async* here is used as a demo for fetching stream data...data from firebase
// is example of a stream data
final streamUserProvider = StreamProvider((ref) async* {
  yield [1,2,3,4,5,6,7,8,9,0];
});
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
    return const MaterialApp(home: HomeFutureProvider());
  }
}
