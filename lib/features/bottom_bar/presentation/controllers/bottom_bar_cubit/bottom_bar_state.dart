// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'bottom_bar_cubit.dart';

class BottomBarState extends Equatable {
  const BottomBarState({
    required this.index,
  });

  final int index;

  factory BottomBarState.initial() => const BottomBarState(
        index: 0,
      );

  BottomBarState copyWith({
    int? index,
  }) =>
      BottomBarState(
        index: index ?? this.index,
      );

  @override
  List<Object> get props => [
        index,
      ];
}
