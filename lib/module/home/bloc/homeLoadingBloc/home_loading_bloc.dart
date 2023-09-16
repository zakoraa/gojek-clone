import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:gojek/module/home/data/event_content.dart';

part './home_loading_event.dart';
part './home_loading_state.dart';

class HomeLoadingBloc extends Bloc<HomeLoadingEvent, HomeLoadingState> {
  HomeLoadingBloc() : super(HomeLoadingInitial()) {
    on<OnHomeLoadingEventCalled>(((event, emit) async {
      emit(HomeLoading());
      await Future.delayed(const Duration(seconds: 2));
      final List<Map<String, String>> events = List.from(eventContent);
      emit(HomeLoaded(result: events));
    }));
  }
}
