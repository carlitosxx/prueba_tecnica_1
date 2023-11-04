import 'package:prueba_tecnica/data/datasources/local/shared_preferences.datasource.dart';
import 'package:prueba_tecnica/domain/repositories/configuration.repository.dart';

/// Implementation of config repository
class ConfigRepositoryImpl implements IConfigRepository {
  /// Constructor for 'AuthRepositoryImpl' that initializes the repository with
  /// a 'SharedPreferencesDatasource' dependency. It allows access to shared
  /// preferences data to manage authentication-related operations.
  ConfigRepositoryImpl({
    required this.sharedPreferencesDatasource,
  });

  /// property datasource of sharedpreferences
  final ISharedPreferencesDatasource sharedPreferencesDatasource;

  @override
  FailureOrHasSeenOnboarding getHasSeenOnboardingStatus() {
    return sharedPreferencesDatasource.getHasSeenOnboardingStatus();
  }

  @override
  FailureOrSaveSuccessSeenOnboarding saveHasSeenOnboardingStatus() {
    return sharedPreferencesDatasource.saveSuccessSeenOnboarding();
  }

  @override
  FailureOrLoadLanguage loadLanguage() {
    return sharedPreferencesDatasource.loadLanguage();
  }

  @override
  FailureOrLoadTheme loadTheme() {
    return sharedPreferencesDatasource.loadTheme();
  }

  @override
  FailureOrSaveSuccessLanguage saveLanguage(
    String languageCode,
    String countryCode,
  ) {
    return sharedPreferencesDatasource.saveLanguage(
      languageCode: languageCode,
      countryCode: countryCode,
    );
  }

  @override
  FailureOrSaveSuccessTheme saveTheme({required bool isDark}) {
    return sharedPreferencesDatasource.saveTheme(isDark: isDark);
  }
}
