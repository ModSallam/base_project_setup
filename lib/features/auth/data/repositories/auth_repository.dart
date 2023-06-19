import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/api/api_consumer.dart';

class AuthRepository {
  AuthRepository({
    required this.apiConsumer,
    required this.pref,
  });

  BaseApiConsumer apiConsumer;
  SharedPreferences pref;

  // Future<Either<String, String>> login(
  //     {required Map<String, dynamic> body}) async {
  //   try {
  //     FirebaseMessaging messaging = FirebaseMessaging.instance;
  //     final String? fcmToken = await messaging.getToken();
  //     '##### FCM TOKEN ##### $fcmToken'.debugLog();
  //     final response = await apiConsumer.post(
  //       EndPoints.login,
  //       body: body,
  //     );

  //     final data = await response.stream.bytesToString();

  //     final decodedData = jsonDecode(data);

  //     if (response.statusCode == StatusCode.ok) {
  //       return Right(
  //         decodedData['data'],
  //       );
  //     } else {
  //       return Left(
  //         decodedData['message'],
  //       );
  //     }
  //   } catch (e) {
  //     return Left(
  //       '$e',
  //     );
  //   }
  // }

  // Future<bool> saveUserToken(String token) async =>
  //     await pref.setString(AppStrings.cachedUserToken, token);

  // String? getUserToken() => pref.containsKey(AppStrings.cachedUserToken)
  //     ? pref.getString(AppStrings.cachedUserToken)
  //     : null;

  // Future<Either<String, String>> logout({
  //   required String token,
  // }) async {
  //   try {
  //     final response = await apiConsumer.post(
  //       EndPoints.logout,
  //       token: token,
  //     );

  //     final data = await response.stream.bytesToString();

  //     final decodedData = jsonDecode(data);

  //     if (response.statusCode == StatusCode.ok) {
  //       return Right(
  //         decodedData['message'],
  //       );
  //     } else {
  //       return Left(
  //         decodedData['message'],
  //       );
  //     }
  //   } catch (e) {
  //     return Left(
  //       '$e',
  //     );
  //   }
  // }

  // Future<Either<String, String>> changePassword({
  //   required String token,
  //   required Map<String, String> body,
  // }) async {
  //   try {
  //     final response = await apiConsumer.post(
  //       EndPoints.changePassword,
  //       token: token,
  //       body: body,
  //     );

  //     final data = await response.stream.bytesToString();

  //     final decodedData = jsonDecode(data);

  //     if (response.statusCode == StatusCode.ok) {
  //       return Right(
  //         decodedData['message'],
  //       );
  //     } else {
  //       return Left(
  //         decodedData['message'],
  //       );
  //     }
  //   } catch (e) {
  //     return Left(
  //       '$e',
  //     );
  //   }
  // }
}
