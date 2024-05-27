import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';
// import 'package:provider/provider.dart';

import 'style.dart';
import 'calendar.dart';
import 'profile.dart';
import 'firebase_functions.dart';

// import 'home_model.dart';
// export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  // late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  // final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    // _model = createModel(context, () => HomeModel());

    // animationsMap.addAll({
    //   'containerOnPageLoadAnimation': AnimationInfo(
    //     trigger: AnimationTrigger.onPageLoad,
    //     effectsBuilder: () => [
    //       FadeEffect(
    //         curve: Curves.easeInOut,
    //         delay: 0.0.ms,
    //         duration: 600.0.ms,
    //         begin: 0.0,
    //         end: 1.0,
    //       ),
    //       MoveEffect(
    //         curve: Curves.easeInOut,
    //         delay: 0.0.ms,
    //         duration: 600.0.ms,
    //         begin: const Offset(0.0, -40.0),
    //         end: const Offset(0.0, 0.0),
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
    // context.watch<FFAppState>();

    // return GestureDetector(
    // onTap: () => _model.unfocusNode.canRequestFocus
    //     ? FocusScope.of(context).requestFocus(_model.unfocusNode)
    //     : FocusScope.of(context).unfocus(),
    // child: Scaffold(
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.primaryBg,
      appBar: AppBar(
        backgroundColor: AppColors.primaryBg,
        automaticallyImplyLeading: false,
        title: const Text(
          "Move",
          style: AppTextStyles.title,
        ),
        actions: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(
                // borderColor: const Color(0x00FF4D00),
                // borderRadius: 20,
                // borderWidth: 1,
                // fillColor: const Color(0x00616161),
                icon: const Icon(
                  Icons.calendar_month,
                  color: AppColors.primaryText,
                  size: 30,
                ),
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Calender()),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 6, 0),
                child: IconButton(
                  // borderColor: AppColors.primaryBg,
                  // borderRadius: 0,
                  // borderWidth: 0,
                  // fillColor: const Color(0x00616161),
                  icon: const FaIcon(
                    FontAwesomeIcons.circleUser,
                    color: AppColors.primaryText,
                    size: 30,
                  ),
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyProfile()),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                //streak bar box
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 600,
                      maxHeight: 160,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.secondaryBg,
                      borderRadius: BorderRadius.circular(12),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Streak Scale',
                            style: AppTextStyles.smallBold,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 12, 0, 12),
                            child: LinearPercentIndicator(
                              percent: 0.7,
                              lineHeight: 16,
                              animation: true,
                              animateFromLastPercent: true,
                              progressColor: AppColors.primaryColor,
                              backgroundColor: AppColors.primaryBg,
                              barRadius: const Radius.circular(16),
                              padding: EdgeInsets.zero,
                            ),
                          ),
                          const Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Noob',
                                style: AppTextStyles.smallBold,
                              ),
                              Text(
                                'Rookie',
                                style: AppTextStyles.smallBold,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                      // .animateOnPageLoad(
                      //     animationsMap['containerOnPageLoadAnimation']!),
                      ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                //image box
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        color: AppColors.secondaryBg,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Text(
                              'Today\'s Task',
                              style: AppTextStyles.mediumBold,
                            ),
                            SvgPicture.asset(
                              'assets/exercises/pushup.svg',
                              width: 300,
                              height: 200,
                              fit: BoxFit.fitHeight,
                            ),
                            const Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20, 12, 20, 12),
                              // child: FutureBuilder<List<DailyTaskRecord>>(
                              //   future: queryDailyTaskRecordOnce(
                              //     queryBuilder: (dailyTaskRecord) =>
                              //         dailyTaskRecord.where(
                              //       'date',
                              //       isEqualTo: dateTimeFormat(
                              //         'd/M/y',
                              //         getCurrentTimestamp,
                              //         locale: FFLocalizations.of(context)
                              //             .languageCode,
                              //       ),
                              //     ),
                              //     singleRecord: true,
                              //   ),
                              //   builder: (context, snapshot) {
                              //     // Customize what your widget looks like when it's loading.
                              //     if (!snapshot.hasData) {
                              //       return Center(
                              //         child: SizedBox(
                              //           width: 50,
                              //           height: 50,
                              //           child: CircularProgressIndicator(
                              //             valueColor:
                              //                 AlwaysStoppedAnimation<Color>(
                              //               FlutterFlowTheme.of(context)
                              //                   .primary,
                              //             ),
                              //           ),
                              //         ),
                              //       );
                              //     }
                              //     List<DailyTaskRecord>
                              //         rowDailyTaskRecordList = snapshot.data!;
                              //     // Return an empty Container when the item does not exist.
                              //     if (snapshot.data!.isEmpty) {
                              //       return Container();
                              //     }
                              //     final rowDailyTaskRecord =
                              //         rowDailyTaskRecordList.isNotEmpty
                              //             ? rowDailyTaskRecordList.first
                              //             : null;
                              //     return const Row(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Push Ups",
                                    // rowDailyTaskRecord!.task,
                                    style: AppTextStyles.smallBold,
                                  ),
                                  Text('-', style: AppTextStyles.smallBold),
                                  Text(
                                    "100 reps",
                                    // rowDailyTaskRecord!.reps,
                                    style: AppTextStyles.smallBold,
                                  ),
                                ],
                                // );
                                // },
                              ),
                            ),
                            Row(
                              //completion Button
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            30, 12, 30, 12),
                                    child: TextButton(
                                      onPressed: () {
                                        FirebaseFunctions().readData();
                                      },
                                      style: TextButton.styleFrom(
                                          backgroundColor:
                                              AppColors.primaryColor,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0))),
                                      // onPressed: () async {
                                      //   await showModalBottomSheet(
                                      //     isScrollControlled: true,
                                      //     backgroundColor: Colors.transparent,
                                      //     enableDrag: false,
                                      //     context: context,
                                      //     builder: (context) {
                                      //       return GestureDetector(
                                      //         onTap: () => _model.unfocusNode
                                      //                 .canRequestFocus
                                      //             ? FocusScope.of(context)
                                      //                 .requestFocus(
                                      //                     _model.unfocusNode)
                                      //             : FocusScope.of(context)
                                      //                 .unfocus(),
                                      //         child: Padding(
                                      //           padding:
                                      //               MediaQuery.viewInsetsOf(
                                      //                   context),
                                      //           child: SubmitActivityWidget(),
                                      //         ),
                                      //       );
                                      //     },
                                      //   ).then(
                                      //       (value) => safeSetState(() {}));
                                      // },

                                      // style: FFButtonOptions(
                                      //   height: 40,
                                      //   padding: const EdgeInsetsDirectional
                                      //       .fromSTEB(24, 0, 24, 0),
                                      //   iconPadding:
                                      //       const EdgeInsetsDirectional
                                      //           .fromSTEB(0, 0, 0, 0),
                                      //   color: AppColors.primaryColor,
                                      //   textStyle: AppTextStyles.smallBold,
                                      //   elevation: 3,
                                      //   borderSide: const BorderSide(
                                      //     color: Colors.transparent,
                                      //     width: 1,
                                      //   ),
                                      //   borderRadius:
                                      //       BorderRadius.circular(8),
                                      // ),
                                      child: const Text(
                                        'Update Completion',
                                        style: AppTextStyles.whiteBold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Text(
              //   "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
              //   // dateTimeFormat(
              //   //   'd/M/y',
              //   //   getCurrentTimestamp,
              //   //   locale: FFLocalizations.of(context).languageCode,
              //   // ),
              //   style: AppTextStyles.smallBold,
              // ),
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
