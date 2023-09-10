part of '../bloc/chat_loading_bloc.dart';

@immutable
abstract class ChatLoadingEvent {}

class OnChatLoadingEventCalled extends ChatLoadingEvent {}
