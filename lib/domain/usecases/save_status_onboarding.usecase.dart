import 'package:prueba_tecnica/domain/repositories/configuration.repository.dart';

/// Class to handle the use case of save the onboarding status, with a
/// constructor that takes an configuration repository as a dependency.
class SaveStatusOnboardingUC {
  /// Constructor for initializing the 'SaveStatusOnboardingUC' class with an
  /// configRepository' parameter, which is used to interact with
  /// configuration-related data.
  SaveStatusOnboardingUC(this.configRepository);

  /// An interface representing the repository for configuration-related
  /// operations, providing access to data and functionality required for
  /// handling onboarding status.
  final IConfigRepository configRepository;

  /// Invokes the use case to save the onboarding status. Returns a '
  /// FailureOrSaveSuccessSeenOnboarding' result obtained from configRepository.
  FailureOrSaveSuccessSeenOnboarding call() {
    return configRepository.saveHasSeenOnboardingStatus();
  }
}
