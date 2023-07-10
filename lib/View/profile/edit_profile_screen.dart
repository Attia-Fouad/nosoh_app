import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/app_strings.dart';
import '../../core/assets_data.dart';
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
  bool fill1 = false;
  bool fill2 = false;
  bool fill3 = false;
  bool fill4 = false;
  bool fill5 = false;

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
              BuildEditFieldItem(
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
            ],
          ),
        ),
      ),
    );
  }
}
