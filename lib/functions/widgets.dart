import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:move_daily/functions/style.dart';
import 'package:move_daily/routes/home.dart';

class BigTextField extends StatelessWidget {
  final Color color;
  final String label;
  final String hint;
  final double borderRadius;
  final TextInputType inputType;
  final bool hideText;
  final Widget? icon;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const BigTextField(
      {super.key,
      this.color = AppColors.secondaryBg,
      required this.label,
      this.hint = '',
      this.borderRadius = 8,
      required this.inputType,
      this.hideText = false,
      this.icon,
      required this.controller,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
      child: TextFormField(
        controller: controller,
        // focusNode: _model.fullNameFocusNode,
        obscureText: hideText,
        // cursorColor: Colors.black,
        decoration: InputDecoration(
          labelText: label,
          floatingLabelStyle: AppTextStyles.label,
          hintText: hint,
          errorStyle: AppTextStyles.error,
          filled: true,
          suffixIcon: icon,
          fillColor: AppColors.secondaryBg,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.secondaryBg,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0x00000000),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xffff0000),
              width: 3,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0x00000000),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        style: AppTextStyles.mediumBold,
        keyboardType: inputType,
        validator: validator,
      ),
    );
  }
}

class BigButton extends StatelessWidget {
  final double width, height, elevation, borderRadius;
  final String label;
  final Color color;
  final TextStyle textStyle;
  final Function()? handlePress;

  const BigButton(
      {super.key,
      required this.label,
      this.width = 200,
      this.height = 50,
      this.elevation = 3,
      this.borderRadius = 8,
      this.color = AppColors.brand,
      this.textStyle = AppTextStyles.whiteBold,
      required this.handlePress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: handlePress,
          style: ElevatedButton.styleFrom(
              elevation: elevation,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius)),
              backgroundColor: color),
          child: Text(
            label,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}

class OrLine extends StatelessWidget {
  const OrLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsetsDirectional.fromSTEB(50, 20, 50, 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Divider(
              // color: ,
              thickness: 1.5,
            ),
          ),
          Text(
            ' OR ',
            style: TextStyle(color: AppColors.divider),
          ),
          Expanded(
              child: Divider(
            thickness: 1.5,
          ))
        ],
      ),
    );
  }
}

Future<User?> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;
  if (googleUser == null) {
    // User canceled the sign-in
    return null;
  }
  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  UserCredential userCredential =
      await FirebaseAuth.instance.signInWithCredential(credential);
  return userCredential.user;
}

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
      child: SizedBox(
        width: 250,
        height: 60,
        child: ElevatedButton(
          onPressed: () async {
            var user = await signInWithGoogle();

            debugPrint('result is $user');
            if (user != null) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const HomeWidget()),
                (route) => false,
              );
            }
          },
          style: ElevatedButton.styleFrom(
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            backgroundColor: AppColors.secondaryBg,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'continue with ',
                style: AppTextStyles.mediumBold,
              ),
              FaIcon(
                FontAwesomeIcons.google,
                color: AppColors.brand,
                size: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
