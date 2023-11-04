import 'package:prueba_tecnica/core/errors/local_request.error.dart';
import 'package:prueba_tecnica/core/utils/either.util.dart';
import 'package:prueba_tecnica/domain/repositories/configuration.repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// An abstract class representing a data source for managing shared preferences
/// Provides a method to retrieve the onboarding status.
abstract class ISharedPreferencesDatasource {
  /// Retrieves the onboarding status from shared preferences. Returns a
  /// 'FailureOrHasSeenOnboarding' result indicating success or failure.
  FailureOrHasSeenOnboarding getHasSeenOnboardingStatus();

  /// Saves the success status of having seen the onboarding in shared
  /// preferences. Returns a 'FailureOrSaveSuccessSeenOnboarding' result
  /// indicating success or failure.
  FailureOrSaveSuccessSeenOnboarding saveSuccessSeenOnboarding();

  /// Save the success language in shared preferences
  FailureOrSaveSuccessLanguage saveLanguage({
    required String languageCode,
    required String countryCode,
  });

  /// Load language
  FailureOrLoadLanguage loadLanguage();

  /// Save the succes Theme in shared preferences
  FailureOrSaveSuccessTheme saveTheme({required bool isDark});

  /// Load Theme
  FailureOrLoadTheme loadTheme();
}

///
class SharedPreferencesDatasourceImpl extends ISharedPreferencesDatasource {
  @override
  FailureOrHasSeenOnboarding getHasSeenOnboardingStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final hasSeenOnboarding = prefs.getBool('onboarding') ?? false;
      return Either.right(hasSeenOnboarding);
    } catch (e) {
      return Either.left(
        LocalRequestFailure.failureUnknown(),
      );
    }
  }

  @override
  FailureOrSaveSuccessSeenOnboarding saveSuccessSeenOnboarding() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final result = await prefs.setBool('onboarding', true);
      return Either.right(result);
    } catch (e) {
      return Either.left(
        LocalRequestFailure.failureUnknown(),
      );
    }
  }

  @override
  FailureOrLoadLanguage loadLanguage() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final language = prefs.getStringList('language');
      return Either.right(language);
    } catch (e) {
      return Either.left(
        LocalRequestFailure.failureUnknown(),
      );
    }
  }

  @override
  FailureOrSaveSuccessLanguage saveLanguage({
    required String languageCode,
    required String countryCode,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final result = await prefs.setStringList('language', [
        languageCode,
        countryCode,
      ]);
      return Either.right(result);
    } catch (e) {
      return Either.left(
        LocalRequestFailure.failureUnknown(),
      );
    }
  }

  @override
  FailureOrLoadTheme loadTheme() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final language = prefs.getBool('theme') ?? false;
      return Either.right(language);
    } catch (e) {
      return Either.left(
        LocalRequestFailure.failureUnknown(),
      );
    }
  }

  @override
  FailureOrSaveSuccessTheme saveTheme({required bool isDark}) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final result = await prefs.setBool('theme', isDark);
      return Either.right(result);
    } catch (e) {
      return Either.left(
        LocalRequestFailure.failureUnknown(),
      );
    }
  }
}
