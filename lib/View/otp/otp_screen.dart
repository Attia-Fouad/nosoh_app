import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nosoh_app/core/assets_data.dart';
import 'package:nosoh_app/core/colors.dart';
import 'package:nosoh_app/shared_components.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../core/app_strings.dart';
import '../../core/styles.dart';
import '../login/captcha_screen.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key, required this.phoneNumber});

  final String phoneNumber;

  @override
  State<OTPScreen> createState() => _OTPScreenState(phoneNumber: phoneNumber);
}

class _OTPScreenState extends State<OTPScreen> {
  final String phoneNumber;

  _OTPScreenState({required this.phoneNumber});

  var codeController = TextEditingController();
  bool completeOTP = false;

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
              height: 30,
            ),
            Text(
              AppStrings.confirmPhoneNumber,
              style: Styles.textStyle30Bold,
            ),
            const SizedBox(
              height: 11,
            ),
            Row(
              children: [
                Text(
                  AppStrings.confirmPhoneNumberMessage,
                  style: Styles.textStyle14Medium,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  phoneNumber,
                  style: Styles.textStyle20Medium,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            PinCodeTextField(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              keyboardType: TextInputType.number,
              enableActiveFill: true,
              length: 4,
              obscureText: false,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                selectedFillColor: formFieldColor,
                borderWidth: 1,
                activeColor: completeOTP
                    ? pinBorderCompleteColor
                    : formFieldTextErrorColor,
                inactiveColor: formFieldBorderColor,
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(8),
                fieldHeight: 60,
                fieldWidth: 65,
                activeFillColor: formFieldColor,
                selectedColor: formFieldTextErrorColor,
                inactiveFillColor: formFieldColor,
              ),
              animationDuration: const Duration(milliseconds: 300),
              //enableActiveFill: true,
              controller: codeController,
              onCompleted: (v) {
                setState(() {
                  completeOTP = true;
                });
              },
              onChanged: (value) {
                setState(() {
                  completeOTP = false;
                });
                // print(value);
                // cubit.currentText(value);
              },
              appContext: context,
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              children: [
                Text(
                  AppStrings.receiveCodeIn,
                  style: Styles.textStyle13Medium,
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  '0.02',
                  style: Styles.textStyle13Medium
                      .copyWith(color: customOrangeColor),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(
                    AssetsData.reloadingIcon,
                    // Replace with your SVG file path
                    width: 16, // Set the desired width
                    height: 16, // Set the desired height
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  AppStrings.sendCodeAgain,
                  style: Styles.textStyle13Medium
                      .copyWith(color: myColor.withOpacity(0.3)),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            defaultButton(
                text: AppStrings.next,
                textStyle: Styles.textStyle24Medium,
                color: completeOTP ? myColor : myColor.withOpacity(0.5),
                onPressed: () {
                  if (completeOTP) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CaptchaScreen(),
                        ));
                  }
                }),
          ],
        )),
      ),
    );
  }
}
