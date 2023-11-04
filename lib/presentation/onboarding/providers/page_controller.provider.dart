import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider: change page onboarding
final pageIndexProvider = StateProvider<int>(
  (ref) => 0,
);

/// Provider: current page
final currentPageProvider = StateProvider<double>(
  (ref) {
    return 0;
  },
);
