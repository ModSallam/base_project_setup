import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/locale/app_localizations_setup.dart';
import 'config/routes/app_routes.dart';
import 'config/themes/app_themes.dart';
import 'core/utils/app_strings.dart';
import 'features/auth/presentation/controllers/auth_bloc/auth_bloc.dart';
import 'features/bottom_bar/presentation/controllers/bottom_bar_cubit/bottom_bar_cubit.dart';
import 'features/splash/presentation/controllers/locale_cubit/locale_cubit.dart';
// import 'features/splash/presentation/controllers/push_notification_cubit/push_notification_cubit.dart';
import 'features/splash/presentation/controllers/splash_cubit/splash_cubit.dart';
import 'injector.dart' as injector;

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              injector.serviceLocator<LocaleCubit>()..getSavedLanguage(),
        ),
        BlocProvider(
          create: (_) =>
              injector.serviceLocator<SplashCubit>()..createTransition(),
        ),
        // BlocProvider(
        //   create: (_) => injector.serviceLocator<PushNotificationCubit>(),
        // ),
        BlocProvider(
          create: (_) => injector.serviceLocator<AuthBloc>(),
        ),
        BlocProvider(
          create: (_) => injector.serviceLocator<BottomBarCubit>(),
        ),
      ],
      child: BlocBuilder<LocaleCubit, LocaleState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: AppStrings.appName,
              locale: state.locale,
              theme: appTheme(),
              onGenerateRoute: AppRoutes.onGenerateRoute,
              supportedLocales: AppLocalizationsSetup.supportedLocales,
              localeResolutionCallback:
                  AppLocalizationsSetup.localeResolutionCallback,
              localizationsDelegates:
                  AppLocalizationsSetup.localizationsDelegates,
            ),
          );
        },
      ),
    );
  }
}
