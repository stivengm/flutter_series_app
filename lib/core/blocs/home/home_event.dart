part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class ChangeLoading extends HomeEvent {
  final bool loading;
  ChangeLoading(this.loading);
}

class ChangeCurrentIndex extends HomeEvent {
  final int currentIndex;
  final String nameScreen;
  ChangeCurrentIndex({
    required this.currentIndex,
    required this.nameScreen
  });
}