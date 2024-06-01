// import '/auth/firebase_auth/auth_util.dart';
// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:move_daily/functions/widgets.dart';
import '../functions/style.dart';
// import '../functions/firebase_functions.dart';

//dummy class

class EditProfileWidget extends StatefulWidget {
  const EditProfileWidget({
    super.key,
    // this.displayName,
    // this.email,
  });

  @override
  State<EditProfileWidget> createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController genderController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.primaryBg,
      appBar: AppBar(
        backgroundColor: AppColors.primaryBg,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: AppColors.icons,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Edit Profile',
          style: AppTextStyles.title,
        ),
        actions: const [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Form(
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryBg,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Color(0x230E151B),
                        offset: Offset(
                          0.0,
                          2,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.all(20),
                    // child: Text('${FirebaseFunctions().getCurrentUser()}'),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BigTextField(
                            label: 'Full Name',
                            inputType: TextInputType.name,
                            controller: nameController),
                        BigTextField(
                            label: 'Age',
                            inputType: TextInputType.name,
                            controller: ageController),
                        BigTextField(
                            label: 'Gender',
                            inputType: TextInputType.name,
                            controller: genderController),
                        BigTextField(
                          label: 'Weight',
                          inputType: TextInputType.name,
                          controller: weightController,
                        ),
                        BigButton(label: 'Save Changes', handlePress: () {})
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    //   },
    // );
  }
}
