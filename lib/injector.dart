import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/api/api_consumer.dart';
import 'core/network/network_info.dart';
import 'features/auth/data/repositories/auth_repository.dart';
import 'features/auth/presentation/controllers/auth_bloc/auth_bloc.dart';
import 'features/bottom_bar/presentation/controllers/bottom_bar_cubit/bottom_bar_cubit.dart';
import 'features/splash/data/repositories/locale_repository.dart';
import 'features/splash/presentation/controllers/locale_cubit/locale_cubit.dart';
import 'features/splash/presentation/controllers/push_notification_cubit/push_notification_cubit.dart';
import 'features/splash/presentation/controllers/splash_cubit/splash_cubit.dart';

final serviceLocator = GetIt.instance;

Future<void> setup() async {
  // Blocs

  serviceLocator.registerFactory(
    () => SplashCubit(),
  );

  serviceLocator.registerFactory(
    () => LocaleCubit(
      localeRepository: serviceLocator(),
    ),
  );

  serviceLocator.registerFactory<PushNotificationCubit>(
    () => PushNotificationCubit(),
  );

  serviceLocator.registerFactory<AuthBloc>(
    () => AuthBloc(),
  );

  serviceLocator.registerFactory<BottomBarCubit>(
    () => BottomBarCubit(),
  );

  // Repositories

  serviceLocator.registerLazySingleton<LocaleRepository>(
    () => LocaleRepository(
      pref: serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton<AuthRepository>(
    () => AuthRepository(
      apiConsumer: serviceLocator(),
      pref: serviceLocator(),
    ),
  );

  //Network

  serviceLocator.registerLazySingleton<BaseNetworkInfo>(
    () => NetworkInfo(
      connectionChecker: serviceLocator(),
    ),
  );

  // Api Consumer

  serviceLocator.registerLazySingleton<BaseApiConsumer>(
    () => ApiConsumer(),
  );

  // Shared Preferences

  final sharedPreferences = await SharedPreferences.getInstance();

  serviceLocator.registerLazySingleton(
    () => sharedPreferences,
  );

  // Internet Connection Checker

  serviceLocator.registerLazySingleton(
    () => InternetConnectionChecker(),
  );
}
