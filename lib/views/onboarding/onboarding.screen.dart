import 'package:flutter/material.dart';
import 'package:flutter_bootstrap_app/providers/repositories.provider.dart';
import 'package:flutter_bootstrap_app/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  /// Add your widget tabs here
  final List<Widget> _tabs = [];

  /// Triggerd when the onboarding is completed
  void _onboardingDone() async {
    await ref.read(localDataRepositoryProvider).setOnboardingDone();
    ref.read(routerProvider).go(appRoutesPath(AppRoute.splash));
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _tabs.length,
      vsync: this,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_tabs.isEmpty) {
        _onboardingDone();
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        viewportFraction: .95,
        children: _tabs,
      ),
    );
  }
}
