import 'package:fattora/screens/me_screen/me_screen.dart';
import 'package:fattora/screens/missions_screens/missions_screen.dart';
import 'package:fattora/shared/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FatoraCubit extends Cubit<FatorraStates> {
  FatoraCubit() : super(FatorraInitialStates());
  static FatoraCubit get(context) => BlocProvider.of(context);

  List<Widget> screens = const [MisssionsScreen(),MeScreen()];

//nav Bar
  int currentIndex = 0;
  void changeNavBar(int index) {
    currentIndex = index;
    emit(FatorraChangeNav());
  }
}
