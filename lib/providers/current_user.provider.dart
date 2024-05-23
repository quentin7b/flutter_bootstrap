import 'package:flutter_bootstrap_app/models/user.mode.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_user.provider.g.dart';

@Riverpod(keepAlive: true)
class CurrentUser extends _$CurrentUser {
  @override
  User? build() {
    return null;
  }

  void change(User user) {
    state = user;
  }

  void clear() {
    state = null;
  }
}
