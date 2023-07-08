import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nosoh_app/View/analysts_list/analysts_list_screen.dart';
import 'package:nosoh_app/controller/app_cubit/app_state.dart';

import '../../View/home/home_screen.dart';
import '../../core/app_strings.dart';

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
    currentIndex = index;
    emit(ChangeNavBarState());
  }
}