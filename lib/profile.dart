import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:move_daily/widgets.dart';
// import 'package:flutter/scheduler.dart';

import 'style.dart';
import 'edit_profile.dart';
import 'change_pass.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> with TickerProviderStateMixin {
  // late MyProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasContainerTriggered1 = false;
  var hasContainerTriggered2 = false;
  // final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    // _model = createModel(context, () => MyProfileModel());

    // animationsMap.addAll({
    //   'containerOnActionTriggerAnimation1': AnimationInfo(
    //     trigger: AnimationTrigger.onActionTrigger,
    //     applyInitialState: false,
    //     effectsBuilder: () => [
    //       MoveEffect(
    //         curve: Curves.easeInOut,
    //         delay: 0.0.ms,
    //         duration: 350.0.ms,
    //         begin: Offset(40.0, 0.0),
    //         end: Offset(0.0, 0.0),
    //       ),
    //     ],
    //   ),
    //   'containerOnActionTriggerAnimation2': AnimationInfo(
    //     trigger: AnimationTrigger.onActionTrigger,
    //     applyInitialState: false,
    //     effectsBuilder: () => [
    //       MoveEffect(
    //         curve: Curves.easeInOut,
    //         delay: 0.0.ms,
    //         duration: 350.0.ms,
    //         begin: Offset(-40.0, 0.0),
    //         end: Offset(0.0, 0.0),
    //       ),
    //     ],
    //   ),
    // });
    // setupAnimations(
    //   animationsMap.values.where((anim) =>
    //       anim.trigger == AnimationTrigger.onActionTrigger ||
    //       !anim.applyInitialState),
    //   this,
    // );
  }

  @override
  void dispose() {
    // _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return StreamBuilder<UsersRecord>(
    //   stream: UsersRecord.getDocument(currentUserReference!),
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
    //                 AppColors.brand,
    //               ),
    //             ),
    //           ),
    //         ),
    //       );
    //     }
    //     final myProfileUsersRecord = snapshot.data!;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.primaryBg,
      appBar: AppBar(
        backgroundColor: AppColors.brand,
        automaticallyImplyLeading: false,
        leading: IconButton(
          // borderColor: AppColors.brand,
          // borderRadius: 0,
          // borderWidth: 1,
          // buttonSize: 60,
          // fillColor: Colors.transparent,
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: AppColors.secondaryText,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Display Name",
          // myProfileUsersRecord.displayName,
          style: AppTextStyles.titleWhite,
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 100),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
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
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 12, 0, 0),
                      child: Text(
                        'Account Information',
                        // style: AppTextStyles.smallBold,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const EditProfileWidget())));
                        },
                        // async {
                        //   context.pushNamed(
                        //     'EditProfile',
                        //     queryParameters: {
                        //       'displayName': serializeParam(
                        //         myProfileUsersRecord,
                        //         ParamType.Document,
                        //       ),
                        //       'email': serializeParam(
                        //         myProfileUsersRecord,
                        //         ParamType.Document,
                        //       ),
                        //     }.withoutNulls,
                        //     extra: <String, dynamic>{
                        //       'displayName': myProfileUsersRecord,
                        //       'email': myProfileUsersRecord,
                        //     },
                        //   );
                        // },
                        child: const Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 20, 0, 20),
                                child: Text(
                                  'Edit Profile',
                                  style: AppTextStyles.smallBold,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.icons,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      height: 2,
                      thickness: 1,
                      indent: 0,
                      endIndent: 0,
                      color: AppColors.divider,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ChangePasswordWidget()));
                      },
                      // context.pushNamed('ChangePassword');
                      // },
                      child: const Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 20, 0, 20),
                              child: Text(
                                'Change Password',
                                style: AppTextStyles.smallBold,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.icons,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      height: 2,
                      thickness: 1,
                      indent: 0,
                      endIndent: 0,
                      color: AppColors.divider,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (!(Theme.of(context).brightness ==
                              Brightness.dark))
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {},
                              // async {},
                              //   setDarkModeSetting(
                              //       context, ThemeMode.dark);
                              //   if (animationsMap[
                              //           'containerOnActionTriggerAnimation2'] !=
                              //       null) {
                              //     setState(() =>
                              //         hasContainerTriggered2 = true);
                              //     SchedulerBinding.instance
                              //         .addPostFrameCallback((_) async =>
                              //             await animationsMap[
                              //                     'containerOnActionTriggerAnimation2']!
                              //                 .controller
                              //                 .forward(from: 0.0));
                              //   }
                              // },
                              child: Container(
                                width: MediaQuery.sizeOf(context).width,
                                decoration: const BoxDecoration(
                                  color: AppColors.secondaryBg,
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16, 12, 16, 12),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Switch to Dark Mode',
                                        style: AppTextStyles.smallBold,
                                      ),
                                      Container(
                                        width: 80,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: AppColors.primaryBg,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Stack(
                                          alignment:
                                              const AlignmentDirectional(0, 0),
                                          children: [
                                            const Align(
                                              alignment:
                                                  AlignmentDirectional(0.95, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 8, 0),
                                                child: Icon(
                                                  Icons.nights_stay,
                                                  color: AppColors.icons,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                            Align(
                                                alignment:
                                                    const AlignmentDirectional(
                                                        -0.85, 0),
                                                child: Container(
                                                  width: 36,
                                                  height: 36,
                                                  decoration: BoxDecoration(
                                                    color: AppColors.primaryBg,
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        blurRadius: 4,
                                                        color:
                                                            Color(0x430B0D0F),
                                                        offset: Offset(
                                                          0.0,
                                                          2,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                )
                                                // .animateOnActionTrigger(
                                                //     animationsMap[
                                                //         'containerOnActionTriggerAnimation1']!,
                                                //     hasBeenTriggered:
                                                //         hasContainerTriggered1),
                                                ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          if (Theme.of(context).brightness == Brightness.dark)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {},
                              //   setDarkModeSetting(
                              //       context, ThemeMode.light);
                              //   if (animationsMap[
                              //           'containerOnActionTriggerAnimation1'] !=
                              //       null) {
                              //     setState(() =>
                              //         hasContainerTriggered1 = true);
                              //     SchedulerBinding.instance
                              //         .addPostFrameCallback((_) async =>
                              //             await animationsMap[
                              //                     'containerOnActionTriggerAnimation1']!
                              //                 .controller
                              //                 .forward(from: 0.0));
                              //   }
                              // },
                              child: Container(
                                width: MediaQuery.sizeOf(context).width,
                                decoration: const BoxDecoration(
                                  color: AppColors.secondaryBg,
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16, 12, 16, 12),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Switch to Light Mode',
                                        style: AppTextStyles.mediumBold,
                                      ),
                                      Container(
                                        width: 80,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: AppColors.primaryBg,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Stack(
                                          alignment:
                                              const AlignmentDirectional(0, 0),
                                          children: [
                                            const Align(
                                              alignment:
                                                  AlignmentDirectional(-0.9, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(8, 2, 0, 0),
                                                child: Icon(
                                                  Icons.wb_sunny_rounded,
                                                  color: AppColors.icons,
                                                  size: 24,
                                                ),
                                              ),
                                            ),
                                            Align(
                                                alignment:
                                                    const AlignmentDirectional(
                                                        0.9, 0),
                                                child: Container(
                                                  width: 36,
                                                  height: 36,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        AppColors.secondaryBg,
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        blurRadius: 4,
                                                        color:
                                                            Color(0x430B0D0F),
                                                        offset: Offset(
                                                          0.0,
                                                          2,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                )
                                                // .animateOnActionTrigger(
                                                //     animationsMap[
                                                //         'containerOnActionTriggerAnimation2']!,
                                                //     hasBeenTriggered:
                                                //         hasContainerTriggered2),
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
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 44),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BigButton(
                          label: "Log Out",
                          color: AppColors.secondaryBg,
                          textStyle: AppTextStyles.mediumBold,
                          handlePress: () {
                            FirebaseAuth.instance.signOut();
                          }),
                      // ),
                      const Text(
                        'App Version v0.0',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.smallBold,
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
    // },
    // );
  }
}
