part of '../injects_container.provider.dart';
/// Clase
class LoadLanguageNotifier extends StateNotifier<LoadLanguageState> {
  /// Constructor
  LoadLanguageNotifier({
    required LoadLanguageUC loadLanguageUC,
    LoadLanguageState? initialState,
  })  : _loadLanguageUC = loadLanguageUC,
        super(initialState ?? const LoadLanguageState.initial());
  final LoadLanguageUC _loadLanguageUC;
  /// Resetea el estado a inicial
  void reset() => state = const LoadLanguageState.initial();
  /// funcion que no duelve nada y que solo transforma los estados
  Future<void> loadLanguage(
    
  ) async {
    state = const LoadLanguageState.loading();
    final result = await _loadLanguageUC();
    result.when(
      left: (error) => state = LoadLanguageState.error(mapFailureToString3(error)),
      right: (response) => state = LoadLanguageState.data(
        : response,
      ),
    );
  }
}