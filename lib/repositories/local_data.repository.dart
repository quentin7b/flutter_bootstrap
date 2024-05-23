import 'package:shared_preferences/shared_preferences.dart';

/// This repository is used to store data on the local device
class LocalDataRepository {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<bool> setOnboardingDone() {
    return _prefs.then((p) => p.setBool('onboardingDone', true));
  }

  Future<bool> hasDoneOnboarding() async {
    return _prefs.then((p) => p.getBool('onboardingDone') ?? false);
  }
}
