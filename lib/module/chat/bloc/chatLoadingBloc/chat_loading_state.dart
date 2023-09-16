part of './chat_loading_bloc.dart';

@immutable
abstract class ChatLoadingState {}

class ChatLoadingInitial extends ChatLoadingState {}

class ChatLoading extends ChatLoadingInitial {}

class ChatLoaded extends ChatLoadingInitial {}
