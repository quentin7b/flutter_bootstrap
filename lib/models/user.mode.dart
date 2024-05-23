import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.mode.freezed.dart';
part 'user.mode.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String userName,
    String? email,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
