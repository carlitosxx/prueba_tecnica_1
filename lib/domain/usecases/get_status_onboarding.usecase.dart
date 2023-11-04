import 'package:prueba_tecnica/domain/repositories/configuration.repository.dart';

/// Class to handle the use case of retrieving the onboarding status, with a
/// constructor that takes an authentication repository as a dependency.
class GetStatusOnboardingUC {
  /// Constructor for initializing the 'GetStatusOnboardingUC' class with an
  /// authRepository' parameter, which is used to interact with
  /// authentication-related data.
  GetStatusOnboardingUC(this.configRepository);

  /// An interface representing the repository for authentication-related
  /// operations, providing access to data and functionality required for
  /// handling onboarding status.
  final IConfigRepository configRepository;

  /// Invokes the use case to retrieve the onboarding status. Returns a '
  /// FailureOrHasSeenOnboarding' result obtained from 'authRepository'.
  FailureOrHasSeenOnboarding call() {
    return configRepository.getHasSeenOnboardingStatus();
  }
}
