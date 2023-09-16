part of './order_loading_bloc.dart';

@immutable
abstract class OrderLoadingState {}

class OrderLoadingInitial extends OrderLoadingState {}

class OrderLoading extends OrderLoadingInitial {}

class OrderLoaded extends OrderLoadingInitial {
  final List<Map<String, dynamic>> goFoodHistories;
  final List<Map<String, dynamic>> goRideHistories;

  OrderLoaded({required this.goFoodHistories, required this.goRideHistories});
}
