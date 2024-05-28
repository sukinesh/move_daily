// import '/auth/firebase_auth/auth_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:move_daily/register.dart';
import 'package:move_daily/style.dart';
import 'package:move_daily/widgets.dart';
import 'package:move_daily/splash_screen.dart';

// import 'login_model.dart';
// export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  // late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // _model = createModel(context, () => LoginModel());

    // _model.emailTextController ??= TextEditingController();
    // _model.textFieldFocusNode1 ??= FocusNode();

    // _model.passwordTextController ??= TextEditingController();
    // _model.textFieldFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    // _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (boo) {
        if (boo) return;
        print(' back triggered ');
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const SplashScreenWidget()));
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: AppColors.brand,
        body: Form(
          // key: _model.formKey,
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
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const BigTextField(
                                  label: 'Email Address',
                                  inputType: TextInputType.emailAddress),
                              BigTextField(
                                  label: 'Password',
                                  inputType: TextInputType.visiblePassword,
                                  hideText: true,
                                  icon: InkWell(
                                    onTap: () {},
                                    //  setState(
                                    // () => _model.passwordVisibility =
                                    //     !_model.passwordVisibility,
                                    // ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: const Icon(
                                      // _model.passwordVisibility
                                      // ? Icons.visibility_outlined
                                      // : Icons.visibility_off_outlined,
                                      Icons.visibility_outlined,
                                      color: AppColors.divider,
                                      size: 22,
                                    ),
                                  )),
                              BigButton(
                                label: 'Login',
                                color: AppColors.buttonDark,
                                handlePress: () async {
                                  // GoRouter.of(context).prepareAuthEvent();

                                  // final user =
                                  //     await authManager.signInWithEmail(
                                  //   context,
                                  //   _model.emailTextController.text,
                                  //   _model.passwordTextController.text,
                                  // );
                                  // if (user == null) {
                                  //   return;
                                  // }

                                  // context.goNamedAuth('Home', context.mounted);
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
                                    child: const Text(
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
                    ],
                  ),
                ),
                const OrLine(),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      // borderColor: Color(0x00FF4D00),
                      // borderRadius: 20,
                      // borderWidth: 1,
                      // fillColor: Color(0x00616161),
                      icon: const FaIcon(
                        FontAwesomeIcons.google,
                        color: AppColors.secondaryText,
                        size: 40,
                      ),
                      onPressed: () {},
                      //  async {
                      //   GoRouter.of(context).prepareAuthEvent();
                      //   final user = await authManager.signInWithGoogle(context);
                      //   if (user == null) {
                      //     return;
                      //   }

                      //   context.goNamedAuth('Home', context.mounted);
                      // },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
