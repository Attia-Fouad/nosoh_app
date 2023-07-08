import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:nosoh_app/core/assets_data.dart';

import '../select_language/select_language_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateToHome(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(),
      body: FadeIn(
        duration: const Duration(milliseconds: 2500),
        child: Center(
          child: SizedBox(
            width: containerWidth,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  height: 100,
                  width: 100,
                  AssetsData.logoImage,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  AssetsData.nameImage,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void navigateToHome(context) async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const SelectLanguageScreen()));
  }
}
