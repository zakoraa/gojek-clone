import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part '../blocEvent/chat_loading_event.dart';
part '../blocState/chat_loading_state.dart';

class ChatLoadingBloc extends Bloc<ChatLoadingEvent, ChatLoadingState> {
  ChatLoadingBloc() : super(ChatLoadingInitial()) {
    on<OnChatLoadingEventCalled>((event, emit) async {
      emit(ChatLoading());
      await Future.delayed(Duration(seconds: 2));
      emit(ChatLoaded());
    });
  }
}
