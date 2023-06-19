import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import '../controllers/push_notification_cubit/push_notification_cubit.dart';
import '../../../../config/routes/app_routes.dart';
import '../../../../core/my_extensions/my_extensions.dart';
import '../../../../core/utils/helper.dart';
import '../../../auth/presentation/controllers/auth_bloc/auth_bloc.dart';
import '../controllers/splash_cubit/splash_cubit.dart';
import '../widgets/splash_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is SplashTransition) {
          // BlocProvider.of<PushNotificationCubit>(context).requestPermission();
          final String status = BlocProvider.of<AuthBloc>(context).state.status;
          final bool authenticated = Helper.checkUserStatus(status);
          status.debugLog();
          if (authenticated) {
            context.pushReplacement(
              routeName: Routes.bottomBarRoute,
            );
          } else {
            context.pushReplacement(
              routeName: Routes.bottomBarRoute,
            );
          }
        }
      },
      child: const Scaffold(
        body: SplashBody(),
      ),
    );
  }
}
