import 'package:prueba_tecnica/domain/repositories/configuration.repository.dart';

/// Class to handle the use case of load the theme, with a
/// constructor that takes an configuration repository as a dependency.
class LoadThemeUC {
  /// Constructor for initializing the 'LoadThemeUC' class with an
  /// configRepository' parameter, which is used to interact with
  /// configuration-related data.
  LoadThemeUC(this.configRepository);

  /// An interface representing the repository for configuration-related
  /// operations, providing access to data and functionality required for
  /// handling onboarding status.
  final IConfigRepository configRepository;

  /// Invokes the use case to load the theme. Returns a '
  /// FailureOrLoadLanguage' result obtained from configRepository.
  FailureOrLoadTheme call() {
    return configRepository.loadTheme();
  }
}
