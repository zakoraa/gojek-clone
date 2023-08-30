import "package:bloc/bloc.dart";

enum BottomNavBarTab { beranda, promo, pesanan, chat, home }

class BuildPageCubit extends Cubit<BottomNavBarTab> {
  BuildPageCubit() : super(BottomNavBarTab.beranda);

  void selectedPage(BottomNavBarTab selectedTab) => emit(selectedTab);
}
