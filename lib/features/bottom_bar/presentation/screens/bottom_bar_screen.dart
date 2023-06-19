import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/bottom_bar_cubit/bottom_bar_cubit.dart';
import '../widgets/bottom_nav_bar_body.dart';

class BottomBarScreen extends StatelessWidget {
  const BottomBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: context.read<BottomBarCubit>().pageController,
        children: [
          Container(),
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: const BottomNavBarBody(),
    );
  }
}
