// import '/auth/firebase_auth/auth_util.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:move_daily/login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:move_daily/splash_screen.dart';
// import 'package:move_daily/login.dart';
import 'style.dart';
import 'package:move_daily/widgets.dart';
import 'package:move_daily/tools.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  // late RegisterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController confPassController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // _model = createModel(context, () => RegisterModel());

    // _model.fullNameTextController ??= TextEditingController();
    // _model.fullNameFocusNode ??= FocusNode();

    // _model.emailTextController ??= TextEditingController();
    // _model.textFieldFocusNode1 ??= FocusNode();

    // _model.passwordTextController ??= TextEditingController();
    // _model.textFieldFocusNode2 ??= FocusNode();

    // _model.confirmPasswordTextController ??= TextEditingController();
    // _model.textFieldFocusNode3 ??= FocusNode();
  }

  @override
  void dispose() {
    // _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return GestureDetector(
    // onTap: () => _model.unfocusNode.canRequestFocus
    //     ? FocusScope.of(context).requestFocus(_model.unfocusNode)
    //     : FocusScope.of(context).unfocus(),
    // child:
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
        backgroundColor: AppColors.secondaryBg,
        body: SafeArea(
          top: true,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: AppColors.brand,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.asset(
                          'assets/move_logo_banner.png',
                          width: MediaQuery.sizeOf(context).width,
                          fit: BoxFit.scaleDown,
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24, 0, 24, 36),
                                child: Form(
                                  key: _formKey,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      BigTextField(
                                        label: 'Full Name',
                                        inputType: TextInputType.name,
                                        controller: nameController,
                                        validator: nameValidator,
                                      ),
                                      BigTextField(
                                        label: 'Email Address',
                                        inputType: TextInputType.emailAddress,
                                        controller: emailController,
                                        validator: emailValidator,
                                      ),
                                      BigTextField(
                                        label: 'Password',
                                        inputType:
                                            TextInputType.visiblePassword,
                                        hideText: true,
                                        controller: passController,
                                        validator: passValidator,
                                      ),
                                      BigTextField(
                                        label: 'Confirm Password',
                                        inputType:
                                            TextInputType.visiblePassword,
                                        hideText: true,
                                        controller: confPassController,
                                        validator: passValidator,
                                      ),
                                      BigButton(
                                        label: 'Create Account',
                                        color: AppColors.buttonDark,
                                        textStyle: AppTextStyles.whiteBold,
                                        handlePress: () async {
                                          if (_formKey.currentState
                                                  ?.validate() ??
                                              false) {
                                            if (passController.text ==
                                                confPassController.text) {
                                              try {
                                                await FirebaseAuth.instance
                                                    .createUserWithEmailAndPassword(
                                                        email: emailController
                                                            .text,
                                                        password: passController
                                                            .text);
                                              } on FirebaseAuthException catch (e) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                      content: Text(
                                                          errorCodeProcessor(
                                                              e.code))),
                                                );
                                              }
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                    content: Text(
                                                        'Password does not match')),
                                              );
                                            }
                                          }
                                        },
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'Already have an account?',
                                            style: AppTextStyles.whiteBold,
                                          ),
                                          InkWell(
                                            onTap: () => Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const LoginWidget())),
                                            child: const Text(
                                              'Login',
                                              style: AppTextStyles.link,
                                            ),
                                          )
                                        ],
                                      ),
                                      // BigButton(
                                      //   label: 'Login',
                                      //   color: AppColors.secondaryBg,
                                      //   textStyle: AppTextStyles.brandText,
                                      //   width: 150,
                                      //   height: 40,
                                      //   elevation: 0,
                                      //   handlePress: () {},
                                      // ),
                                      const OrLine(),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
