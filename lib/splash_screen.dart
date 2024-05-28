import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:move_daily/register.dart';
import 'package:move_daily/login.dart';

// import 'package:google_fonts/google_fonts.dart';

import 'style.dart';

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({super.key});

  @override
  State<SplashScreenWidget> createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.darkBg,
      body: SafeArea(
        top: true,
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height * 1,
          decoration: BoxDecoration(
            color: AppColors.secondaryBg,
            image: DecorationImage(
              fit: BoxFit.cover,
              // opacity: 0.9,
              image: Image.asset(
                'assets/banner_waves.png',
              ).image,
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/move_logo+name.svg',
                        width: 240,
                        height: 240,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                        child: SizedBox(
                          width: 200,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterWidget()));
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                backgroundColor: AppColors.brand),
                            child: const Text(
                              'Register',
                              style: AppTextStyles.whiteBold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 2, 0, 20),
                          child: SizedBox(
                            width: 200,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginWidget()));
                              },
                              style: ElevatedButton.styleFrom(
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  backgroundColor: AppColors.brand),
                              child: const Text(
                                'Login',
                                style: AppTextStyles.whiteBold,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
