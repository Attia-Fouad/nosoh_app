import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nosoh_app/View/home/components/build_help_bottom_sheet.dart';
import 'package:nosoh_app/View/notifications/notifications_screen.dart';
import 'package:nosoh_app/controller/app_cubit/app_cubit.dart';
import 'package:nosoh_app/controller/app_cubit/app_state.dart';
import 'package:nosoh_app/core/colors.dart';

import '../../core/styles.dart';
import 'components/build_drawer.dart';

class BaseLayoutScreen extends StatefulWidget {
  const BaseLayoutScreen({super.key});

  @override
  State<BaseLayoutScreen> createState() => _BaseLayoutScreenState();
}

class _BaseLayoutScreenState extends State<BaseLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) {
        return AppCubit();
      },
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          return Scaffold(
            key: cubit.scaffoldKey,
            appBar: AppBar(
              actions: [
                IconButton(
                    color: myColor,
                    onPressed: () {
                      showModalBottomSheet<void>(
                        context: context,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                          top: Radius.circular(50),
                        )),
                        builder: (BuildContext context) {
                          return const BuildHelpBottomSheet();
                        },
                      );
                    },
                    icon: CircleAvatar(
                      backgroundColor: myColor,
                      child: const Icon(
                        Icons.question_mark_outlined,
                        color: Colors.white,
                      ),
                    )),
                IconButton(
                    color: myColor,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NotificationsScreen(),
                          ));
                    },
                    icon: CircleAvatar(
                      backgroundColor: myColor,
                      child: const Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.white,
                      ),
                    )),
              ],
              title: Text(
                cubit.titles[cubit.currentIndex],
                style: Styles.textStyle17Medium,
              ),
              centerTitle: true,
            ),
            body: cubit.screens[cubit.currentIndex],
            floatingActionButton: cubit.currentIndex == 0
                ? FloatingActionButton(
                    onPressed: () {},
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(colors: [
                            HexColor('#756C95'),
                            myColor,
                          ])),
                      child: const Icon(
                        Icons.add,
                        size: 25,
                      ),
                    ),
                  )
                : null,
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 37,
                vertical: 20,
              ),
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey
                          .withOpacity(0.5), // Set the desired shadow color
                      spreadRadius: 2, // Set the desired spread radius
                      blurRadius: 5, // Set the desired blur radius
                      offset: const Offset(0, 3), // Set the desired offset
                    ),
                  ],
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(24),
                    topLeft: Radius.circular(24),
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                ),
                child: BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  items: const [
                    BottomNavigationBarItem(
                      icon: FaIcon(FontAwesomeIcons.houseChimney),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: FaIcon(FontAwesomeIcons.userCheck),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: FaIcon(FontAwesomeIcons.usersViewfinder),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: FaIcon(FontAwesomeIcons.bars),
                      label: '',
                    ),
                  ],
                  currentIndex: cubit.currentIndex,
                  onTap: (index) {
                    cubit.changeBottomNavBar(index);
                  },
                ),
              ),
            ),
            drawer: BuildDrawer(width: width),
          );
        },
      ),
    );
  }
}
