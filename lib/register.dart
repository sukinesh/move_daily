// import '/auth/firebase_auth/auth_util.dart';
import 'package:flutter/material.dart';
import 'style.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  // late RegisterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

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
    return GestureDetector(
      // onTap: () => _model.unfocusNode.canRequestFocus
      //     ? FocusScope.of(context).requestFocus(_model.unfocusNode)
      //     : FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: AppColors.primaryBg,
          body: SafeArea(
            top: true,
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
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24, 0, 24, 36),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              TextFormField(
                                // controller: _model.fullNameTextController,
                                // focusNode: _model.fullNameFocusNode,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Full Name',
                                  hintText: 'Enter your name here...',
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
                                ),
                                style: AppTextStyles.mediumBold,
                                keyboardType: TextInputType.emailAddress,
                                // validator: _model
                                //     .fullNameTextControllerValidator
                                //     .asValidator(context),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 20, 0, 0),
                                child: TextFormField(
                                  // controller: _model.emailTextController,
                                  // focusNode: _model.textFieldFocusNode1,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Email Address',
                                    hintText: 'Enter your email here...',
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
                                  ),
                                  style: AppTextStyles.mediumBold,
                                  keyboardType: TextInputType.emailAddress,
                                  // validator: _model.emailTextControllerValidator
                                  //     .asValidator(context),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 20, 0, 0),
                                child: TextFormField(
                                  // controller: _model.passwordTextController,
                                  // focusNode: _model.textFieldFocusNode2,
                                  // obscureText: !_model.passwordVisibility1,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    hintText: 'Enter your password here...',
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
                                    suffixIcon: InkWell(
                                      onTap: () {},
                                      //  => setState(
                                      // () => _model.passwordVisibility1 =
                                      //     !_model.passwordVisibility1,
                                      // ),
                                      focusNode: FocusNode(skipTraversal: true),
                                      child: const Icon(
                                        // _model.passwordVisibility1
                                        // ? Icons.visibility_outlined
                                        // :
                                        Icons.visibility_off_outlined,
                                        color: Color(0x80FFFFFF),
                                        size: 22,
                                      ),
                                    ),
                                  ),
                                  style: AppTextStyles.mediumBold,
                                  // validator: _model
                                  //     .passwordTextControllerValidator
                                  //     .asValidator(context),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 20, 0, 0),
                                child: TextFormField(
                                  // controller:
                                  //     _model.confirmPasswordTextController,
                                  // focusNode: _model.textFieldFocusNode3,
                                  // obscureText: !_model.passwordVisibility2,
                                  decoration: InputDecoration(
                                    labelText: 'Confirm Password',
                                    hintText: 'Confirm password here...',
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
                                    suffixIcon: InkWell(
                                      onTap: () {},
                                      // => setState(
                                      //   () => _model.passwordVisibility2 =
                                      //       !_model.passwordVisibility2,
                                      // ),
                                      focusNode: FocusNode(skipTraversal: true),
                                      child: const Icon(
                                        // _model.passwordVisibility2
                                        //     ? Icons.visibility_outlined
                                        //     :
                                        Icons.visibility_off_outlined,
                                        color: Color(0x80FFFFFF),
                                        size: 22,
                                      ),
                                    ),
                                  ),
                                  style: AppTextStyles.mediumBold,
                                  // validator: _model
                                  //     .confirmPasswordTextControllerValidator
                                  //     .asValidator(context),
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
                                    // async {
                                    //   GoRouter.of(context).prepareAuthEvent();
                                    //   if (_model.passwordTextController.text !=
                                    //       _model.confirmPasswordTextController
                                    //           .text) {
                                    //     ScaffoldMessenger.of(context)
                                    //         .showSnackBar(
                                    //       const SnackBar(
                                    //         content: Text(
                                    //           'Passwords don\'t match!',
                                    //         ),
                                    //       ),
                                    //     );
                                    //     return;
                                    //   }

                                    //   final user = await authManager
                                    //       .createAccountWithEmail(
                                    //     context,
                                    //     _model.emailTextController.text,
                                    //     _model.passwordTextController.text,
                                    //   );
                                    //   if (user == null) {
                                    //     return;
                                    //   }

                                    //   await UsersRecord.collection
                                    //       .doc(user.uid)
                                    //       .update(createUsersRecordData(
                                    //         displayName: _model
                                    //             .fullNameTextController.text,
                                    //         email:
                                    //             _model.emailTextController.text,
                                    //       ));

                                    //   context.goNamedAuth(
                                    //       'Home', context.mounted);
                                    // },
                                    style: ElevatedButton.styleFrom(
                                        elevation: 3,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        backgroundColor: AppColors.buttonDark),
                                    child: const Text(
                                      'Create Account',
                                      style: AppTextStyles.smallBold,
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
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 6),
                            child: Text(
                              'Don’t have an account yet? ',
                              style: AppTextStyles.mediumBold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 2, 0, 20),
                            child: SizedBox(
                              width: 80,
                              height: 30,
                              child: ElevatedButton(
                                onPressed: () {},
                                // async {
                                //   context.pushNamed(
                                //     'Login',
                                //     extra: <String, dynamic>{
                                //       kTransitionInfoKey: TransitionInfo(
                                //         hasTransition: true,
                                //         transitionType:
                                //             PageTransitionType.fade,
                                //         duration: const Duration(
                                //             milliseconds: 200),
                                //       ),
                                //     },
                                //   );
                                // },
                                style: ElevatedButton.styleFrom(
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    backgroundColor: AppColors.secondaryBg),
                                child: const Text(
                                  'Login',
                                  style: AppTextStyles.smallBold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
