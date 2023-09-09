import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part '../blocEvent/home_loading_event.dart';
part '../blocState/home_loading_state.dart';

class HomeLoadingBloc extends Bloc<HomeLoadingEvent, HomeLoadingState> {
  HomeLoadingBloc() : super(HomeLoadingInitial()) {
    on<OnHomeLoadingEventCalled>(((event, emit) async {
      emit(HomeLoading());
      Future.delayed(const Duration(seconds: 2));
      emit(HomeLoaded());
    }));
  }
}
