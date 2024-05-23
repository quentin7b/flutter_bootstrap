import 'package:flutter/material.dart';
import 'package:flutter_bootstrap_app/extensions/context.extensions.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

extension RevenueCatLabelsExtensions on PackageType {
  /// Returns the current duration label of a subscription based on
  /// the phone language using the given [context].
  String recurringLabel(
    BuildContext context, {
    String unknownLabel = '',
    String customLabel = '',
  }) {
    return switch (this) {
      PackageType.unknown => unknownLabel,
      PackageType.custom => customLabel,
      PackageType.lifetime => context.t.subscriptions.duration.lifetime,
      PackageType.annual => context.t.subscriptions.duration.annual,
      PackageType.sixMonth => context.t.subscriptions.duration.sixMonth,
      PackageType.threeMonth => context.t.subscriptions.duration.threeMonth,
      PackageType.twoMonth => context.t.subscriptions.duration.twoMonth,
      PackageType.monthly => context.t.subscriptions.duration.monthly,
      PackageType.weekly => context.t.subscriptions.duration.weekly,
    };
  }
}
