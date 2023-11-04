// /// Mapea las fallas a una cadena
// ErrorMapping mapFailureToString(HttpRequestFailure failure) {
//   return failure.when(
//     network: () => ErrorMapping(
//       messageError: kNoNetworkMessage.i18n,
//       painter: NoConectionCP(),
//       titleError: kWarning.i18n,
//     ),
//     notFound: () => ErrorMapping(
//       messageError: kNotFoundMessage.i18n,
//       painter: WarningCP(),
//       titleError: kWarning.i18n,
//     ),
//     server: () => ErrorMapping(
//       messageError: kServerMessage.i18n,
//       painter: WarningCP(),
//       titleError: kWarning.i18n,
//     ),
//     unauthorized: () => ErrorMapping(
//       messageError: kUnauthorizedMessage.i18n,
//       painter: WarningCP(),
//       titleError: kWarning.i18n,
//     ),
//     badRequest: (error) {
//       if (error.messages.isNotEmpty) {
//         final errorMessage = error.messages.join('\n');
//         return ErrorMapping(
//           messageError: errorMessage,
//           painter: WarningCP(),
//           titleError: kAlert.i18n,
//         );
//       }
//       return ErrorMapping(
//         messageError: 'Hubo un problema al recibir el mensaje de error',
//         painter: WarningCP(),
//         titleError: kWarning.i18n,
//       );
//     },
//     local: () => ErrorMapping(
//       messageError: kLocal.i18n,
//       painter: WarningCP(),
//       titleError: kWarning.i18n,
//     ),
//   );
// }

import 'package:flutter/rendering.dart';
import 'package:prueba_tecnica/core/errors/local_request.error.dart';

ErrorMapping mapFailureToString3(LocalRequestFailure failure) {
  return failure.when(
    notAvailable: () => ErrorMapping(
      messageError: 'Disponible',
      painter: WarningCP(),
      titleError: 'Mensaje',
    ),
    failureUnknown: () => ErrorMapping(
      messageError: 'Error desconocido',
      painter: WarningCP(),
      titleError: '¡Advertencia!',
    ),
    gpsNotEnabled: () => ErrorMapping(
      messageError: 'El servicio de ubicacion (GPS) esta desabilitado',
      painter: WarningCP(),
      titleError: '¡Advertencia!',
    ),
    gpsNotPermission: () => ErrorMapping(
      messageError: 'Debe activar los permisos de ubicación',
      painter: WarningCP(),
      titleError: '¡Advertencia!',
    ),
  );
}

/// Mapeo de error
class ErrorMapping {
  /// Modelo para mapear un error con
  ErrorMapping({
    required this.messageError,
    required this.painter,
    required this.titleError,
  });

  /// Mensaje del error
  String messageError;

  /// Titulo del error
  String titleError;

  /// Custom painter de la imagen del error
  CustomPainter painter;
}
