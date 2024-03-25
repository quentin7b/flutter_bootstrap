import 'package:flutter/material.dart';
import 'package:flutter_bootstrap_app/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future(() async {
      await init();
      ref.read(routerProvider).go(appRoutesPath(AppRoute.home));
    });
    return const Scaffold(
      body: Center(
        child: Text('SplashScreen'),
      ),
    );
  }

  Future<void> init() async {
    // Load any data you need or init any database you need to
  }
}
