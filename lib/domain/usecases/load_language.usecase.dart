import 'package:prueba_tecnica/domain/repositories/configuration.repository.dart';

/// Class to handle the use case of load the language, with a
/// constructor that takes an configuration repository as a dependency.
class LoadLanguageUC {
  /// Constructor for initializing the 'LoadLanguageUC' class with an
  /// configRepository' parameter, which is used to interact with
  /// configuration-related data.
  LoadLanguageUC(this.configRepository);

  /// An interface representing the repository for configuration-related
  /// operations, providing access to data and functionality required for
  /// handling onboarding status.
  final IConfigRepository configRepository;

  /// Invokes the use case to load the language. Returns a '
  /// FailureOrLoadLanguage' result obtained from configRepository.
  FailureOrLoadLanguage call() {
    return configRepository.loadLanguage();
  }
}
