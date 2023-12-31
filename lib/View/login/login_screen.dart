import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:nosoh_app/core/app_strings.dart';
import 'package:nosoh_app/core/assets_data.dart';
import 'package:nosoh_app/core/colors.dart';
import 'package:nosoh_app/core/styles.dart';

import '../../shared_components.dart';
import '../otp/otp_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool acceptTerms = false;
  var controller = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool fill = false;

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
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      AssetsData.logoImage,
                      fit: BoxFit.cover,
                      width: 70,
                      height: 70,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
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
                      child: IntlPhoneField(
                        textAlign: TextAlign.right,

                        //disableLengthCheck: true,
                        validator: (value) {
                          if (value!.number.isEmpty) {
                            return AppStrings.shouldNotBeEmpty;
                          }
                          if (value.completeNumber.length != 10) {
                            return AppStrings.phoneValidator;
                          }
                          return null;
                        },
                        invalidNumberMessage: AppStrings.phoneValidator,
                        onChanged: (val) {
                          if (val.completeNumber.isNotEmpty && fill == false) {
                            setState(() {
                              fill = true;
                            });
                          }
                          if (val.completeNumber.isEmpty && fill == true) {
                            setState(() {
                              fill = false;
                            });
                          }
                        },
                        onSubmitted: (val) {
                          setState(() {});
                        },
                        controller: controller,
                        style: Styles.textStyle22Medium,
                        keyboardType: TextInputType.phone,
                        initialCountryCode: 'EG',
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: formFieldColor,
                          errorStyle: Styles.textStyle12Medium,
                          labelStyle: Styles.textStyle18Medium,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(29.0),
                            borderSide: BorderSide(
                              width: 1,
                              color: formFieldActiveBorderColor,
                            ),
                          ),
                          enabledBorder: fill
                              ? OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: formFieldTextCorrectColor,
                                  ),
                                )
                              : OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: formFieldBorderColor,
                                  ),
                                ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(29.0),
                            borderSide: BorderSide(
                              width: 1,
                              color: formFieldErrorBorderColor,
                            ),
                          ),
                          labelText: AppStrings.phoneNumber,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(29.0),
                            borderSide: BorderSide(
                              width: 1,
                              color: formFieldTextCorrectColor,
                            ),
                          ),
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
                  color: controller.text.length == 10 && acceptTerms
                      ? HexColor('#353448')
                      : HexColor('#353448').withOpacity(0.5),
                  text: AppStrings.next,
                  textStyle: Styles.textStyle24Medium,
                  onPressed: () {
                    if (formKey.currentState!.validate() && acceptTerms) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                OTPScreen(phoneNumber: controller.text),
                          ));
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
