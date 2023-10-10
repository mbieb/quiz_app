
// void appFailureHandler(
//   AppFailure failure,
//   BuildContext context,
// ) {
//   I10n i10n = I10n.of(context);
//   failure.when(
//     error: (error) {
//       Alert.notify(context, i10n.alertWarning, error);
//     },
//     noInternet: () {
//       Alert.notify(context, i10n.alertWarning, i10n.alertNoConnection);
//     },
//     timeout: () {
//       Alert.notify(context, i10n.alertWarning, i10n.alertTimeOut);
//     },
//     unauthorized: () {},
//     handled: (error) {},
//   );
// }
