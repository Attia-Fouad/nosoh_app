import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nosoh_app/core/app_strings.dart';
import 'package:nosoh_app/core/colors.dart';
import 'package:nosoh_app/core/styles.dart';

import '../../shared_components.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool acceptTerms = false;
  var controller = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(AppStrings.login),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_rounded)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Center(
          child: Form(
            key: formKey,
            child: ListView(
              shrinkWrap: true,
              children: [
                Text(
                  AppStrings.yourPhoneNumber,
                  style: Styles.textStyle30Bold,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  AppStrings.enterYouPhoneMessage,
                  style: Styles.textStyle14Medium,
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: controller,
                        style: TextStyle(
                          color: formFieldColor,
                        ),
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelStyle: Styles.textStyle18Medium,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              width: 1,
                              color: formFieldBorderColor,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: formFieldBorderColor,
                            ),
                          ),
                          labelText: AppStrings.phoneNumber,
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CustomCheckBox(
                      checkedIconColor: customOrangeColor,
                      value: acceptTerms,
                      shouldShowBorder: true,
                      borderColor: customOrangeColor,
                      checkedFillColor: Colors.white,
                      borderRadius: 0,
                      borderWidth: 1,
                      checkBoxSize: 20,
                      onChanged: (val) {
                        setState(() {
                          acceptTerms = val;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      AppStrings.agreement,
                      style: Styles.textStyle13Medium,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        AppStrings.termsAndConditions,
                        style: Styles.textStyle13Medium.copyWith(
                          color: customOrangeColor,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Text(
                      AppStrings.and,
                      style: Styles.textStyle13Medium,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        AppStrings.understandTheRisks,
                        style: Styles.textStyle13Medium.copyWith(
                          color: customOrangeColor,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                defaultButton(
                  color: HexColor('##353448').withOpacity(0.5),
                  text: AppStrings.next,
                  textStyle: Styles.textStyle24Medium,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
