import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeRoute extends ConsumerWidget {
  static const routeName = '/';

  const HomeRoute({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Center(
        child: Text('HomeRoute'),
      ),
    );
  }
}
