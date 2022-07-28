import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<ChangeCurrentIndex>((event, emit) {
      PageController pageController = PageController();
      emit(state.copyWith( currentIndex: event.currentIndex, nameScreen: event.nameScreen ));
    });
  }
}
