import 'package:flutter_bloc/flutter_bloc.dart';

class RandomListCubit extends Cubit<List<Map<String, dynamic>>> {
  RandomListCubit() : super([]);

  void randomList(List<Map<String, dynamic>> products) {
    products.shuffle();
    emit(List<Map<String, dynamic>>.from(products));
  }
}
