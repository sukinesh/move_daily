// import '/auth/firebase_auth/auth_util.dart';
import 'package:flutter/material.dart';
import '../functions/style.dart';

class ChangePasswordWidget extends StatefulWidget {
  const ChangePasswordWidget({super.key});

  @override
  State<ChangePasswordWidget> createState() => _ChangePasswordWidgetState();
}

class _ChangePasswordWidgetState extends State<ChangePasswordWidget> {
  // late ChangePasswordModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // _model = createModel(context, () => ChangePasswordModel());

    // _model.emailTextController ??= TextEditingController();
    // _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    // _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return StreamBuilder<List<UsersRecord>>(
    //   stream: queryUsersRecord(
    //     singleRecord: true,
    //   ),
    //   builder: (context, snapshot) {
    //     // Customize what your widget looks like when it's loading.
    //     if (!snapshot.hasData) {
    //       return const Scaffold(
    //         backgroundColor: AppColors.primaryBg,
    //         body: Center(
    //           child: SizedBox(
    //             width: 50,
    //             height: 50,
    //             child: CircularProgressIndicator(
    //               valueColor: AlwaysStoppedAnimation<Color>(
    //                 AppColors.primaryBg,
    //               ),
    //             ),
    //           ),
    //         ),
    //       );
    //     }
    //     List<UsersRecord> changePasswordUsersRecordList = snapshot.data!;
    //     // Return an empty Container when the item does not exist.
    //     if (snapshot.data!.isEmpty) {
    //       return Container();
    //     }
    //     final changePasswordUsersRecord =
    //         changePasswordUsersRecordList.isNotEmpty
    //             ? changePasswordUsersRecordList.first
    //             : null;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.primaryBg,
      appBar: AppBar(
        backgroundColor: AppColors.secondaryBg,
        automaticallyImplyLeading: false,
        leading: IconButton(
          // borderColor: Colors.transparent,
          // borderRadius: 30,
          // buttonSize: 48,
          style: IconButton.styleFrom(
            iconSize: 48,
          ),
          icon: const Icon(
            Icons.chevron_left_rounded,
            color: AppColors.secondaryBg,
            size: 25,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Change Password',
          style: AppTextStyles.title,
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        top: true,
        child: Form(
          // key: _model.formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryBg,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
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
                  padding: const EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 0, 0),
                        child: Text(
                          'Enter your email and we will send a reset password link to your email for you to update it.',
                          style: AppTextStyles.smallBold,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                        child: TextFormField(
                          // controller: _model.emailTextController,
                          // focusNode: _model.textFieldFocusNode,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Email address here...',
                            labelStyle: AppTextStyles.smallBold,
                            hintText: 'We will send a link to your email...',
                            hintStyle: AppTextStyles.smallBold,
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.primaryBg,
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
                            fillColor: AppColors.primaryBg,
                            prefixIcon: const Icon(
                              Icons.email_outlined,
                              color: AppColors.secondaryText,
                            ),
                          ),
                          style: AppTextStyles.mediumBold,
                          keyboardType: TextInputType.emailAddress,
                          // validator: _model.emailTextControllerValidator
                          //     .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 2, 0, 20),
                              child: SizedBox(
                                width: 230,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  // async {
                                  //   if (_model
                                  //       .emailTextController.text.isEmpty) {
                                  //     ScaffoldMessenger.of(context)
                                  //         .showSnackBar(
                                  //       const SnackBar(
                                  //         content: Text(
                                  //           'Email required!',
                                  //         ),
                                  //       ),
                                  //     );
                                  //     return;
                                  //   }
                                  //   await authManager.resetPassword(
                                  //     email: _model.emailTextController.text,
                                  //     context: context,
                                  //   );
                                  //   context.pop();
                                  // },
                                  style: ElevatedButton.styleFrom(
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      backgroundColor: AppColors.primaryBg),
                                  child: const Text(
                                    'Send Link',
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
      ),
    );
    //   },
    // );
  }
}
