part of '../bloc/home_loading_bloc.dart';

@immutable
abstract class HomeLoadingState {}

class HomeLoadingInitial extends HomeLoadingState {}

class HomeLoading extends HomeLoadingInitial {}

class HomeLoaded extends HomeLoadingInitial {
}
