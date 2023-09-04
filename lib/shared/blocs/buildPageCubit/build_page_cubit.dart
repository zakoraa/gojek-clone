import "package:bloc/bloc.dart";

enum BottomNavBarTab { beranda, promo, pesanan, chat, home }

class BuildPageCubit extends Cubit<BottomNavBarTab> {
  BuildPageCubit() : super(BottomNavBarTab.beranda);

  void selectPage(BottomNavBarTab selectedPage) => emit(selectedPage);
}

