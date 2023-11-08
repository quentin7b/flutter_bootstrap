import 'package:flutter/material.dart';
import 'package:flutter_bootstrap_app/router.dart';
import 'package:flutter_bootstrap_app/views/home/home.screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashRoute extends ConsumerWidget {
  static const routeName = '/splash';

  const SplashRoute({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future(() async {
      await init();
      ref.read(routerProvider).go(HomeRoute.routeName);
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
