import 'package:prueba_tecnica/core/errors/local_request.error.dart';
import 'package:prueba_tecnica/core/utils/either.util.dart';

/// Type definition for representing the result of checking whether the
/// onboarding view has been seen or not.
typedef FailureOrHasSeenOnboarding = Future<Either<LocalRequestFailure, bool>>;

/// Type definition for representing the result of saving the onboarding
/// view's visibility state as either a local success or failure.
typedef FailureOrSaveSuccessSeenOnboarding
    = Future<Either<LocalRequestFailure, bool>>;

/// Type definition for representing the result of saving the language
typedef FailureOrSaveSuccessLanguage
    = Future<Either<LocalRequestFailure, bool>>;

/// Type definition for representing the result of load language
typedef FailureOrLoadLanguage
    = Future<Either<LocalRequestFailure, List<String>?>>;

/// Type definition for representing the result of saving theme
typedef FailureOrSaveSuccessTheme = Future<Either<LocalRequestFailure, bool>>;

/// Type definition for representing the result of load theme
typedef FailureOrLoadTheme = Future<Either<LocalRequestFailure, bool>>;

/// Repository authorization and authentication
abstract class IConfigRepository {
  /// Function to retrieve the status of whether the onboarding view has been
  /// seen or not.
  FailureOrHasSeenOnboarding getHasSeenOnboardingStatus();

  /// Function to save the status of whether the onboarding view has been
  /// seen or not.
  FailureOrSaveSuccessSeenOnboarding saveHasSeenOnboardingStatus();

  /// Function to save the language
  FailureOrSaveSuccessLanguage saveLanguage(
    String languageCode,
    String countryCode,
  );

  /// Function to load the language
  FailureOrLoadLanguage loadLanguage();

  /// Function to save the theme
  FailureOrSaveSuccessTheme saveTheme({required bool isDark});

  /// Function to load the theme
  FailureOrLoadTheme loadTheme();
}
