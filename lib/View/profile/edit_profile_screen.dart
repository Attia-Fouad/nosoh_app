import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:nosoh_app/shared_components.dart';

import '../../core/app_strings.dart';
import '../../core/assets_data.dart';
import '../../core/colors.dart';
import '../../core/styles.dart';
import 'components/build_edit_field_item.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  var formKey = GlobalKey<FormState>();
  var userNameController = TextEditingController();
  var fullNameController = TextEditingController();
  var phoneNumberController = TextEditingController();
  var emailController = TextEditingController();
  var idController = TextEditingController();
  var bioController = TextEditingController();
  bool fill1 = false;
  bool fill2 = false;
  bool fill3 = false;
  bool fill4 = false;
  bool fill5 = false;
  bool fill6 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(AppStrings.editProfileInfo),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_rounded)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Form(
          key: formKey,
          child: ListView(
            shrinkWrap: true,
            children: [
              CircleAvatar(
                radius: 40,
                child: SvgPicture.asset(
                  AssetsData.editProfileIcon,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              BuildEditFieldItem(
                controller: userNameController,
                fill: fill1,
                label: AppStrings.userName,
                onChanged: (val) {
                  if (val.isNotEmpty && fill1 == false) {
                    setState(() {
                      fill1 = true;
                    });
                  }
                  if (val.isEmpty && fill1 == true) {
                    setState(() {
                      fill1 = false;
                    });
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              BuildEditFieldItem(
                controller: fullNameController,
                fill: fill2,
                label: AppStrings.fullName,
                onChanged: (val) {
                  if (val.isNotEmpty && fill2 == false) {
                    setState(() {
                      fill2 = true;
                    });
                  }
                  if (val.isEmpty && fill2 == true) {
                    setState(() {
                      fill2 = false;
                    });
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              buildPhoneField(controller: phoneNumberController),
              const SizedBox(
                height: 20,
              ),
              BuildEditFieldItem(
                controller: emailController,
                fill: fill4,
                label: AppStrings.email,
                onChanged: (val) {
                  if (val.isNotEmpty && fill4 == false) {
                    setState(() {
                      fill4 = true;
                    });
                  }
                  if (val.isEmpty && fill4 == true) {
                    setState(() {
                      fill4 = false;
                    });
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              BuildEditFieldItem(
                controller: idController,
                fill: fill5,
                label: AppStrings.idNumber,
                onChanged: (val) {
                  if (val.isNotEmpty && fill5 == false) {
                    setState(() {
                      fill5 = true;
                    });
                  }
                  if (val.isEmpty && fill5 == true) {
                    setState(() {
                      fill5 = false;
                    });
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const BuildEditFieldItem(
                label: AppStrings.birthdate,
                enabled: false,
                suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
              ),
              const SizedBox(
                height: 20,
              ),
              const BuildEditFieldItem(
                label: AppStrings.status,
                enabled: false,
                suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
              ),
              const SizedBox(
                height: 20,
              ),
              const BuildEditFieldItem(
                label: AppStrings.educationLevel,
                enabled: false,
                suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
              ),
              const SizedBox(
                height: 20,
              ),
              const BuildEditFieldItem(
                label: AppStrings.familyNumber,
                enabled: false,
                suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
              ),
              const SizedBox(
                height: 20,
              ),
              const BuildEditFieldItem(
                label: AppStrings.yearlyIncome,
                enabled: false,
                suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
              ),
              const SizedBox(
                height: 20,
              ),
              const BuildEditFieldItem(
                label: AppStrings.totalSave,
                enabled: false,
                suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
              ),
              const SizedBox(
                height: 20,
              ),
              BuildEditFieldItem(
                maxLines: 3,
                fill: fill6,
                label: AppStrings.bio,
                onChanged: (val) {
                  if (val.isNotEmpty && fill6 == false) {
                    setState(() {
                      fill6 = true;
                    });
                  }
                  if (val.isEmpty && fill6 == true) {
                    setState(() {
                      fill6 = false;
                    });
                  }
                },
              ),
              const SizedBox(
                height: 40,
              ),
              defaultButton(
                  text: AppStrings.save,
                  textStyle: Styles.textStyle24Medium,
                  color: myColor.withOpacity(0.5),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }

  buildPhoneField({controller}) => IntlPhoneField(
        disableLengthCheck: true,
        textAlign: TextAlign.right,
        //disableLengthCheck: true,
        validator: (value) {
          if (value!.number.isEmpty) {
            return AppStrings.shouldNotBeEmpty;
          }
          if (value.completeNumber.length != 13) {
            return AppStrings.phoneValidator;
          }
          return null;
        },
        invalidNumberMessage: AppStrings.phoneValidator,
        onChanged: (val) {
          if (val.completeNumber.isNotEmpty && fill3 == false) {
            setState(() {
              fill3 = true;
            });
          }
          if (val.completeNumber.isEmpty && fill3 == true) {
            setState(() {
              fill3 = false;
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
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              width: 1,
              color: formFieldActiveBorderColor,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              width: 1,
              color: formFieldBorderColor,
            ),
          ),
          enabledBorder: fill3
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
            borderRadius: BorderRadius.circular(8.0),
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
      );
}
