import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_bar_state.dart';

class BottomBarCubit extends Cubit<BottomBarState> {
  BottomBarCubit()
      : super(
          BottomBarState.initial(),
        );

  final PageController pageController = PageController();

  void changeSelectedIndex({
    required int index,
  }) {
    pageController.jumpToPage(
      index,
    );
    emit(
      state.copyWith(
        index: index,
      ),
    );
  }

  void resetCubit() {
    pageController.initialPage;
    emit(
      BottomBarState.initial(),
    );
  }
}
