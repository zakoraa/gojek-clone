import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gojek/module/promo/bloc/carouselBloc/carousel_event.dart';
import 'carousel_state.dart';

class CarouselBloc extends Bloc<CarouselEvent, CarouselState> {
  CarouselBloc() : super(CarouselState()) {
    on<CarouselEvent>((event, emit) {
      emit(CarouselState(selectedIndex: state.selectedIndex));
    });
  }
}
