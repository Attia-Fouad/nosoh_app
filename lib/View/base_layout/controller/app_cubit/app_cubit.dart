import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nosoh_app/View/analysts_list/analysts_list_screen.dart';
import 'package:nosoh_app/View/base_layout/controller/app_cubit/app_state.dart';
import 'package:nosoh_app/core/app_strings.dart';

import '../../../home/home_screen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> titles = [
    AppStrings.main,
    AppStrings.analystsList,
    '',
    '',
  ];
  List<Widget> screens = [
    const HomeScreen(),
    const AnalystsListScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  void changeBottomNavBar(int index) {
    if (index == 0 || index == 1) {
      currentIndex = index;
      emit(ChangeNavBarState());
    }
    if (index == 3) {
      scaffoldKey.currentState?.openDrawer();
      emit(ChangeNavBarState());
    }
  }
}
