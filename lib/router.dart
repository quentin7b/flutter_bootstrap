import 'package:flutter/material.dart';
import 'package:flutter_bootstrap_app/views/home/home.screen.dart';
import 'package:flutter_bootstrap_app/views/splash/splash.screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  splash,
  home,
}

/// Returns the path for the given route
/// Uses [route] The route to get the path for and an optional [id]
/// if needed
String appRoutesPath(AppRoute route, {String? id}) => switch (route) {
      AppRoute.splash => '/splash',
      AppRoute.home => '/',
    };

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: appRoutesPath(AppRoute.splash),
    routes: [
      GoRoute(
        path: appRoutesPath(AppRoute.splash),
        pageBuilder: (context, state) => const MaterialPage(
          child: SplashScreen(),
        ),
      ),
      GoRoute(
        path: appRoutesPath(AppRoute.home),
        pageBuilder: (context, state) => const MaterialPage(
          child: HomeScreen(),
        ),
      ),
    ],
  );
});
