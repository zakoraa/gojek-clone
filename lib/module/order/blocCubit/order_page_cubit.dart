import 'package:bloc/bloc.dart';

enum OrderTab { riwayat, dalamProses, terjadwal }

class OrderTabCubit extends Cubit<OrderTab> {
  OrderTabCubit() : super(OrderTab.riwayat);
  void selectTab(OrderTab selectedTab) => emit(selectedTab);
}
