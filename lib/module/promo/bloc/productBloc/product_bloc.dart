import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import '../../data/interesting_promo_list.dart';

part './product_event.dart';
part './product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<OnProductEventCalled>((event, emit) async {
      emit(ProductLoading());
      await Future.delayed(const Duration(seconds: 2));
      final List<Map<String, dynamic>> randomProducts1 = List.from(products);
      randomProducts1.shuffle();
      final List<Map<String, dynamic>> randomProducts2 = List.from(products);
      randomProducts2.shuffle();
      final List<Map<String, dynamic>> randomProducts3 = List.from(products);
      randomProducts3.shuffle();
      final List<Map<String, dynamic>> randomProducts4 = List.from(products);
      randomProducts4.shuffle();
      emit(ProductLoaded(
          result1: randomProducts1,
          result2: randomProducts2,
          result3: randomProducts3,
          result4: randomProducts4));
    });
  }
}
