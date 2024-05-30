import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:move_daily/functions/style.dart';
import 'package:move_daily/routes/calendar.dart';
import 'package:move_daily/routes/profile.dart';
// import 'splash_screen.dart';
// import 'firebase_functions.dart';
// import 'login.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Map<String, dynamic> task = {};

  @override
  void initState() {
    super.initState();
    // fetchData();
  }

//this methor uses States to get and set tasks
  Future<void> fetchData() async {
    final today =
        "${DateTime.now().day.toString().padLeft(2, '0')}/${DateTime.now().month.toString().padLeft(2, '0')}/${DateTime.now().year}";

    try {
      debugPrint(today);
      final querySnap = await _firestore
          .collection('DailyTask')
          .where("date", isEqualTo: today)
          .get();

      var data = querySnap.docs.map((doc) => doc.data()).toList();
      debugPrint('$data');
      setState(() {
        task = data[0];
      });
      // isLoading = false;
    } catch (e) {
      setState(() {
        task = {'task': 'error', 'reps': '100'};
      });
      debugPrint("Error getting document: $e");
    }
  }

//this methord uses future builder to set tasks
  Future<Map<String, dynamic>> getData() async {
    final today =
        "${DateTime.now().day.toString().padLeft(2, '0')}/${DateTime.now().month.toString().padLeft(2, '0')}/${DateTime.now().year}";

    try {
      debugPrint(today);
      final querySnap = await _firestore
          .collection('DailyTask')
          .where("date", isEqualTo: today)
          .get();

      var data = querySnap.docs.map((doc) => doc.data()).toList();
      debugPrint('$data');
      return data[0];

      // isLoading = false;
    } catch (e) {
      debugPrint("Error getting document: $e");

      return {'task': 'error', 'reps': 'error'};
    }
  }

  @override
  Widget build(BuildContext context) {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      debugPrint('user: $user');
    });
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
                    MaterialPageRoute(
                        builder: (context) => const CalendarWidget()),
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
          child: SingleChildScrollView(
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
                                progressColor: AppColors.brand,
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
                              Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20, 12, 20, 12),
                                  child: FutureBuilder<Map<String, dynamic>>(
                                    future: getData(),
                                    builder: (BuildContext context,
                                        AsyncSnapshot<Map<String, dynamic>>
                                            snapshot) {
                                      if (snapshot.connectionState ==
                                          ConnectionState.waiting) {
                                        return const CircularProgressIndicator(
                                          color: AppColors.brand,
                                        ); // Show loading indicator
                                      } else if (snapshot.hasError) {
                                        return Text(
                                            'Error: ${snapshot.error}'); // Show error message
                                      } else if (snapshot.hasData) {
                                        return Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              snapshot.data?['task'],
                                              style: AppTextStyles.smallBold,
                                            ),
                                            const Text('-',
                                                style: AppTextStyles.smallBold),
                                            Text(
                                              snapshot.data?['reps'],
                                              // rowDailyTaskRecord!.reps,
                                              style: AppTextStyles.smallBold,
                                            ),
                                          ],
                                          // );
                                          // },
                                        );

                                        // return Text(
                                        //     'Data: ${snapshot.data}'); // Show data
                                      } else {
                                        return const Text(
                                            'No data'); // Handle any other case
                                      }
                                    },
                                  )),
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
                                          fetchData();
                                          debugPrint("running fetch");
                                        },
                                        style: TextButton.styleFrom(
                                            backgroundColor: AppColors.brand,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.0))),
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
                                        //   color: AppColors.brand,
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
                //     style: AppTextStyles.smallBold,
                // ),
              ],
            ),
          ),
        ),
      ),
      // ),
    );
  }
}
