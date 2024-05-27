// import '/auth/firebase_auth/auth_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:move_daily/style.dart';

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
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.primaryBg,
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
                      'assets/images/move_logo-banner.png',
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
                        padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            TextFormField(
                              // controller: _model.emailTextController,
                              // focusNode: _model.textFieldFocusNode1,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Email Address',
                                hintText: 'Your email...',
                                hintStyle: AppTextStyles.mediumBold,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: AppColors.secondaryBg,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
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
                                    color: Color(0x00000000),
                                    width: 1,
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
                                filled: true,
                                fillColor: AppColors.secondaryBg,
                                prefixIcon: const Icon(
                                  Icons.email_outlined,
                                  color: AppColors.primaryBg,
                                ),
                              ),
                              style: AppTextStyles.mediumBold,
                              keyboardType: TextInputType.emailAddress,
                              // validator: _model.emailTextControllerValidator
                              // .asValidator(context),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: TextFormField(
                                // controller: _model.passwordTextController,
                                // focusNode: _model.textFieldFocusNode2,
                                // obscureText: !_model.passwordVisibility,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  hintText: 'Enter your password here...',
                                  hintStyle: AppTextStyles.mediumBold,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: AppColors.secondaryBg,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
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
                                      color: Color(0x00000000),
                                      width: 1,
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
                                  filled: true,
                                  fillColor: AppColors.secondaryBg,
                                  prefixIcon: const Icon(
                                    Icons.lock_outline,
                                    color: AppColors.primaryBg,
                                  ),
                                  suffixIcon: InkWell(
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
                                      color: Color(0x80FFFFFF),
                                      size: 22,
                                    ),
                                  ),
                                ),
                                style: AppTextStyles.mediumBold,
                                //   validator: _model
                                //       .passwordTextControllerValidator
                                //       .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 24, 0, 20),
                              child: SizedBox(
                                width: 200,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  //     onPressed: () async {
                                  //   GoRouter.of(context).prepareAuthEvent();

                                  //   final user =
                                  //       await authManager.signInWithEmail(
                                  //     context,
                                  //     _model.emailTextController.text,
                                  //     _model.passwordTextController.text,
                                  //   );
                                  //   if (user == null) {
                                  //     return;
                                  //   }

                                  //   context.goNamedAuth('Home', context.mounted);
                                  // },
                                  style: ElevatedButton.styleFrom(
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      backgroundColor: AppColors.buttonDark),
                                  child: const Text(
                                    'Login',
                                    style: AppTextStyles.whiteBold,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsetsDirectional.fromSTEB(0, 44, 0, 30),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 6),
                                    child: Text(
                                      'Don’t have an account yet? ',
                                      style: AppTextStyles.mediumBold,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 2, 0, 20),
                                    child: SizedBox(
                                      width: 100,
                                      height: 32,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        // async {
                                        //   context.pushNamed(
                                        //     'Register',
                                        //     extra: <String, dynamic>{
                                        //       kTransitionInfoKey: TransitionInfo(
                                        //         hasTransition: true,
                                        //         transitionType:
                                        //             PageTransitionType.fade,
                                        //         duration:
                                        //             Duration(milliseconds: 200),
                                        //       ),
                                        //     },
                                        //   );
                                        // },
                                        style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            backgroundColor:
                                                AppColors.primaryColor),
                                        child: const Text(
                                          'Register',
                                          style: AppTextStyles.mediumBold,
                                        ),
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
                  ],
                ),
              ),
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
    );
  }
}
