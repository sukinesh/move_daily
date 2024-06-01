// import '/auth/firebase_auth/auth_util.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:move_daily/routes/home.dart';
import 'package:move_daily/routes/register.dart';
import 'package:move_daily/functions/style.dart';
import 'package:move_daily/functions/widgets.dart';
import 'package:move_daily/routes/splash_screen.dart';
import 'package:move_daily/functions/tools.dart';

import 'package:firebase_auth/firebase_auth.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  final FirebaseAuth auth = FirebaseAuth.instance;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  bool passVisibility = true;

  final _formKey = GlobalKey<FormState>();

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
    return PopScope(
      canPop: false,
      onPopInvoked: (boo) {
        if (boo) return;
        debugPrint(' back triggered ');
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const SplashScreenWidget()));
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: AppColors.brand,
        body: Form(
          autovalidateMode: AutovalidateMode.always,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/move_logo_banner.png',
                        width: MediaQuery.sizeOf(context).width,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24, 0, 24, 0),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                BigTextField(
                                  label: 'Email Address',
                                  inputType: TextInputType.emailAddress,
                                  controller: emailController,
                                  validator: emailValidator,
                                ),
                                BigTextField(
                                    label: 'Password',
                                    inputType: TextInputType.visiblePassword,
                                    hideText: passVisibility,
                                    controller: passController,
                                    validator: passValidator,
                                    icon: InkWell(
                                      onTap: () => setState(
                                        () => passVisibility = !passVisibility,
                                      ),
                                      focusNode: FocusNode(skipTraversal: true),
                                      child: Icon(
                                        passVisibility
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined,
                                        color: AppColors.divider,
                                        size: 22,
                                      ),
                                    )),
                                BigButton(
                                  label: 'Login',
                                  color: AppColors.buttonDark,
                                  handlePress: () async {
                                    if (_formKey.currentState?.validate() ??
                                        false) {
                                      try {
                                        debugPrint(
                                            ' ${emailController.text} - ${passController.text}');
                                        await FirebaseAuth.instance
                                            .signInWithEmailAndPassword(
                                          email: emailController.text,
                                          password: passController.text,
                                          // email: 'test@gmail.com',
                                          // password: 'password'
                                        );
                                        debugPrint('logged in');
                                        Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const HomeWidget()),
                                          (route) => false,
                                        );
                                      } on FirebaseAuthException catch (e) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                              content: Text(
                                                  errorCodeProcessor(e.code))),
                                        );

                                        debugPrint('logging error: $e');
                                      }
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                            content: Text('Not a valid input')),
                                      );
                                    }
                                  },
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'Don’t have an account yet? ',
                                      style: AppTextStyles.whiteBold,
                                    ),
                                    InkWell(
                                      onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const RegisterWidget())),
                                      child: Text(
                                        'Register',
                                        style: AppTextStyles.link,
                                      ),
                                    )
                                  ],
                                ),
                                // BigButton(
                                //   label: 'Register',
                                //   color: AppColors.secondaryBg,
                                //   textStyle: AppTextStyles.brandText,
                                //   handlePress: () async {
                                //     //   context.pushNamed(
                                //     //     'Register',
                                //     //     extra: <String, dynamic>{
                                //     //       kTransitionInfoKey: TransitionInfo(
                                //     //         hasTransition: true,
                                //     //         transitionType:
                                //     //             PageTransitionType.fade,
                                //     //         duration:
                                //     //             Duration(milliseconds: 200),
                                //     //       ),
                                //     //     },
                                //     //   );
                                //   },
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const OrLine(),
                const GoogleButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
