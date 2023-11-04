import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider: change language
final localLanguageProvider = StateProvider<Locale?>(
  (ref) => null,
);
