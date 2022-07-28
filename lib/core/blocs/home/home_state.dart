part of 'home_bloc.dart';

class HomeState {
  final bool? loading;
  final int? currentIndex;
  final String? nameScreen;

  HomeState({
    this.loading = false,
    this.currentIndex = 0,
    this.nameScreen = 'Home',
  });

  HomeState copyWith({
    bool? loading,
    int? currentIndex,
    String? nameScreen,
  }) => HomeState(
    loading: loading ?? this.loading,
    currentIndex: currentIndex ?? this.currentIndex,
    nameScreen: nameScreen ?? this.nameScreen,
  );

}

class HomeInitial extends HomeState {}
