import "package:bloc/bloc.dart";

enum BottomNavBarTab { beranda, promo, pesanan, chat }

class BuildPageCubit extends Cubit<BottomNavBarTab> {
  BuildPageCubit() : super(BottomNavBarTab.beranda);

  void selectPage(BottomNavBarTab selectedPage) => emit(selectedPage);

  double handleAnimationBar(double tabWidth) {
    switch (state) {
      case BottomNavBarTab.beranda:
        return 0;
      case BottomNavBarTab.promo:
        return tabWidth;
      case BottomNavBarTab.pesanan:
        return tabWidth * 2;
      case BottomNavBarTab.chat:
        return tabWidth * 3;
      default:
        return 0;
    }
  }
}
