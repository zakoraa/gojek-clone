part of './order_loading_bloc.dart';

@immutable
abstract class OrderLoadingEvent {}

class OnOrderLoadingEventCalled extends OrderLoadingEvent {}
