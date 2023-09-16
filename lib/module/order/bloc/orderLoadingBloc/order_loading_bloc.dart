import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/gofood_histories.dart';
import '../../data/goride_histories.dart';

part './order_loading_event.dart';
part './order_loading_state.dart';

class OrderLoadingBloc extends Bloc<OrderLoadingEvent, OrderLoadingState> {
  OrderLoadingBloc() : super(OrderLoadingInitial()) {
    on<OnOrderLoadingEventCalled>((event, emit) async {
      emit(OrderLoading());
      final List<Map<String, dynamic>> goFoodHistoriesResult =
          List.from(goFoodHistories);
      final List<Map<String, dynamic>> goRideHistoriesResult =
          List.from(goRideHistories);
      await Future.delayed(const Duration(seconds: 2));
      emit(OrderLoaded(
          goFoodHistories: goFoodHistoriesResult,
          goRideHistories: goRideHistoriesResult));
    });
  }
}
