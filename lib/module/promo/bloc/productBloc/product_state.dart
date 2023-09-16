part of './product_bloc.dart';

@immutable
abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  final List<Map<String, dynamic>> result1;
  final List<Map<String, dynamic>> result2;
  final List<Map<String, dynamic>> result3;
  final List<Map<String, dynamic>> result4;

  ProductLoaded(
      {required this.result1,
      required this.result2,
      required this.result3,
      required this.result4});
}
