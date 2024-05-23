import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bootstrap_app/logger.dart';
import 'package:flutter_bootstrap_app/providers/repositories.provider.dart';
import 'package:flutter_bootstrap_app/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

/// [SplashScreen] is the first screen shown to the user
/// it handles app initialization and routing to basics screens like
/// [OnboardingScreen], [HomeScreen] or even if needed [LoginScreen]
class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  /// Inits revenuecat sdk for purchases
  Future<void> _initRevenueCat() async {
    /// Init revenuecat
    await Purchases.setLogHandler(
      (level, message) => logger.log(
        switch (level) {
          LogLevel.verbose => Level.all,
          LogLevel.debug => Level.debug,
          LogLevel.info => Level.info,
          LogLevel.warn => Level.warning,
          LogLevel.error => Level.error,
        },
        message,
      ),
    );
    PurchasesConfiguration configuration = PurchasesConfiguration(
      Platform.isAndroid ? 'RC_ANDROID_KEY' : 'RC_IOS_KEY',
    );
    await Purchases.configure(configuration);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future(() async {
      // Init revenue cat
      await _initRevenueCat();

      // Check for routing
      bool onboardingDone =
          await ref.read(localDataRepositoryProvider).hasDoneOnboarding();
      if (!onboardingDone) {
        context.go(appRoutesPath(AppRoute.onboarding));
        return;
      }
    });
    return const Scaffold(
      body: Center(
        child: Text('SplashScreen'),
      ),
    );
  }
}
