import 'package:flutter/material.dart';
import 'package:flutter_bootstrap_app/extensions/button.extension.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// This is an example of a last onboarding screen
class LastOnboarding extends ConsumerWidget {
  final VoidCallback onEndTap;

  const LastOnboarding({
    super.key,
    required this.onEndTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Expanded(child: SizedBox.shrink()),
        ElevatedButton(
          onPressed: onEndTap,
          child: const Icon(Icons.check_outlined),
        ).fullWidth(),
      ],
    );
  }
}
