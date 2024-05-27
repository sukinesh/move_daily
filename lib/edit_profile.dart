// import '/auth/firebase_auth/auth_util.dart';
import 'package:flutter/material.dart';
import 'style.dart';

//dummy class
class UsersRecord {}

class EditProfileWidget extends StatefulWidget {
  const EditProfileWidget({
    super.key,
    this.displayName,
    this.email,
  });

  final UsersRecord? displayName;
  final UsersRecord? email;

  @override
  State<EditProfileWidget> createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
  // late EditProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // _model = createModel(context, () => EditProfileModel());

    // _model.textFieldFocusNode1 ??= FocusNode();

    // _model.textFieldFocusNode2 ??= FocusNode();
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
    //       return Scaffold(
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
    //     List<UsersRecord> editProfileUsersRecordList = snapshot.data!;
    //     // Return an empty Container when the item does not exist.
    //     if (snapshot.data!.isEmpty) {
    //       return Container();
    //     }
    //     final editProfileUsersRecord = editProfileUsersRecordList.isNotEmpty
    //         ? editProfileUsersRecordList.first
    //         : null;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.primaryBg,
      appBar: AppBar(
        backgroundColor: AppColors.primaryBg,
        automaticallyImplyLeading: false,
        leading: IconButton(
          // borderColor: Colors.transparent,
          // borderRadius: 30,
          // borderWidth: 1,
          // buttonSize: 60,
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
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
        child: Form(
          // key: _model.formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryBg,
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
                child: const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                  // child: StreamBuilder<UsersRecord>(
                  //   stream: UsersRecord.getDocument(currentUserReference!),
                  //   builder: (context, snapshot) {
                  //     // Customize what your widget looks like when it's loading.
                  //     if (!snapshot.hasData) {
                  //       return Center(
                  //         child: SizedBox(
                  //           width: 50,
                  //           height: 50,
                  //           child: CircularProgressIndicator(
                  //             valueColor: AlwaysStoppedAnimation<Color>(
                  //               AppColors.primaryBg,
                  //             ),
                  //           ),
                  //         ),
                  //       );
                  //     }
                  //     final columnUsersRecord = snapshot.data!;
                  //     return Column(
                  //       mainAxisSize: MainAxisSize.max,
                  //       mainAxisAlignment: MainAxisAlignment.start,
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Padding(
                  //           padding: const EdgeInsetsDirectional.fromSTEB(
                  //               16, 12, 0, 0),
                  //           child: Text(
                  //             'Update Account Information',
                  //             style: AppTextStyles.smallBold,
                  //           ),
                  //         ),
                  //         Padding(
                  //           padding: const EdgeInsetsDirectional.fromSTEB(
                  //               16, 16, 16, 0),
                  //           child: TextFormField(
                  //             // controller: _model.textController1 ??=
                  //             //     TextEditingController(
                  //             //   text: editProfileUsersRecord?.displayName,
                  //             // ),
                  //             // focusNode: _model.textFieldFocusNode1,
                  //             obscureText: false,
                  //             decoration: InputDecoration(
                  //               labelText: 'Full Name',
                  //               labelStyle: AppTextStyles.smallBold,
                  //               hintText: 'Please enter your full name...',
                  //               hintStyle: AppTextStyles.smallBold,
                  //               enabledBorder: OutlineInputBorder(
                  //                 borderSide: BorderSide(
                  //                   color: AppColors.primaryBg,
                  //                   width: 1,
                  //                 ),
                  //                 borderRadius: BorderRadius.circular(8),
                  //               ),
                  //               focusedBorder: OutlineInputBorder(
                  //                 borderSide: const BorderSide(
                  //                   color: Color(0x00000000),
                  //                   width: 1,
                  //                 ),
                  //                 borderRadius: BorderRadius.circular(8),
                  //               ),
                  //               errorBorder: OutlineInputBorder(
                  //                 borderSide: const BorderSide(
                  //                   color: Color(0x00000000),
                  //                   width: 1,
                  //                 ),
                  //                 borderRadius: BorderRadius.circular(8),
                  //               ),
                  //               focusedErrorBorder: OutlineInputBorder(
                  //                 borderSide: const BorderSide(
                  //                   color: Color(0x00000000),
                  //                   width: 1,
                  //                 ),
                  //                 borderRadius: BorderRadius.circular(8),
                  //               ),
                  //               filled: true,
                  //               fillColor: AppColors.primaryBg,
                  //               prefixIcon: Icon(
                  //                 Icons.person_rounded,
                  //                 color: AppColors.secondaryText,
                  //               ),
                  //             ),
                  //             style: AppTextStyles.mediumBold,
                  //             // validator: _model.textController1Validator
                  //             //     .asValidator(context),
                  //           ),
                  //         ),
                  //         Padding(
                  //           padding: const EdgeInsetsDirectional.fromSTEB(
                  //               16, 16, 16, 0),
                  //           child: TextFormField(
                  //             // controller: _model.textController2 ??=
                  //             //     TextEditingController(
                  //             //   text: editProfileUsersRecord?.email,
                  //             // ),
                  //             // focusNode: _model.textFieldFocusNode2,
                  //             obscureText: false,
                  //             decoration: InputDecoration(
                  //               labelText: 'Email Address',
                  //               labelStyle: AppTextStyles.smallBold,
                  //               hintText: 'Your email...',
                  //               hintStyle: AppTextStyles.smallBold,
                  //               enabledBorder: OutlineInputBorder(
                  //                 borderSide: BorderSide(
                  //                   color: AppColors.primaryBg,
                  //                   width: 1,
                  //                 ),
                  //                 borderRadius: BorderRadius.circular(8),
                  //               ),
                  //               focusedBorder: OutlineInputBorder(
                  //                 borderSide: const BorderSide(
                  //                   color: Color(0x00000000),
                  //                   width: 1,
                  //                 ),
                  //                 borderRadius: BorderRadius.circular(8),
                  //               ),
                  //               errorBorder: OutlineInputBorder(
                  //                 borderSide: const BorderSide(
                  //                   color: Color(0x00000000),
                  //                   width: 1,
                  //                 ),
                  //                 borderRadius: BorderRadius.circular(8),
                  //               ),
                  //               focusedErrorBorder: OutlineInputBorder(
                  //                 borderSide: const BorderSide(
                  //                   color: Color(0x00000000),
                  //                   width: 1,
                  //                 ),
                  //                 borderRadius: BorderRadius.circular(8),
                  //               ),
                  //               filled: true,
                  //               fillColor: AppColors.primaryBg,
                  //               prefixIcon: Icon(
                  //                 Icons.email_outlined,
                  //                 color: AppColors.secondaryText,
                  //               ),
                  //             ),
                  //             style:AppTextStyles.mediumBold,
                  //             keyboardType: TextInputType.emailAddress,
                  //             // validator: _model.textController2Validator
                  //             //     .asValidator(context),
                  //           ),
                  //         ),
                  //         Padding(
                  //           padding: const EdgeInsetsDirectional.fromSTEB(
                  //               0, 16, 0, 0),
                  //           child: Row(
                  //             mainAxisSize: MainAxisSize.max,
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: [
                  //           Padding(
                  //           padding: const EdgeInsetsDirectional.fromSTEB(
                  //               0, 26, 0, 20),
                  //           child: SizedBox(
                  //             width: 230,
                  //             height: 50,
                  //             child: ElevatedButton(
                  //               onPressed: () {},
                  //                   //       async {
                  //                   //   await columnUsersRecord.reference
                  //                   //       .update(createUsersRecordData(
                  //                   //     displayName:
                  //                   //         _model.textController1.text,
                  //                   //     email: _model.textController2.text,
                  //                   //   ));
                  //                   //   context.pop();
                  //                   // },
                  //                   style: ElevatedButton.styleFrom(
                  //                   elevation: 3,
                  //                   shape: RoundedRectangleBorder(
                  //                       borderRadius:
                  //                           BorderRadius.circular(8)),
                  //                   backgroundColor:
                  //                       AppColors.secondaryText),
                  //               child: const Text(
                  //                 'Save Changes',
                  //                 style: AppTextStyles.mediumBold,
                  //               ),
                  //             ),
                  //           ),
                  //         ),

                  //             ],
                  //           ),
                  //         ),
                  //       ],
                  //     );
                  //   },
                  // ),
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
