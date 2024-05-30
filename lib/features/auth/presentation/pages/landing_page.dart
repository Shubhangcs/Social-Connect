import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:social/core/theme/colors.dart';
import 'package:social/features/auth/presentation/pages/authentication.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final PageController _pageViewController = PageController();
  var _pageNo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 400,
            height: 400,
            child: PageView(
              controller: _pageViewController,
              onPageChanged: (val) {
                setState(() {
                  _pageNo = val;
                });
              },
              children: [
                LottieBuilder.asset('assets/chatting.json'),
                LottieBuilder.asset('assets/videocall.json'),
                LottieBuilder.asset('assets/community.json'),
              ],
            ),
          ),
        ],
      ).animate().fadeIn(
            duration: const Duration(
              milliseconds: 1000,
            ),
          ),
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height - 430,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(
              100,
            ),
          ),
          color: CustomColors.orangeColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: _pageNo == 0
                  ? Text(
                      "Connect to People",
                      style: GoogleFonts.varelaRound(
                        color: CustomColors.lightColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        letterSpacing: 1.4,
                      ),
                    )
                  : _pageNo == 1
                      ? Text(
                          "Make Video Chatt",
                          style: GoogleFonts.varelaRound(
                            color: CustomColors.lightColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            letterSpacing: 1.4,
                          ),
                        )
                      : Text(
                          "Create Community",
                          style: GoogleFonts.varelaRound(
                            color: CustomColors.lightColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                            letterSpacing: 1.4,
                          ),
                        ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: _pageNo == 0
                  ? Text(
                      "Build connections with people and start working by clearing your doubts through chatrooms",
                      style: GoogleFonts.varela(
                        color: CustomColors.lightColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        letterSpacing: 1.4,
                      ),
                    ).animate().slideX().fadeIn(
                        duration: const Duration(
                          milliseconds: 1000,
                        ),
                      )
                  : _pageNo == 1
                      ? Text(
                          "Talk with people face to face and clear doubts regarding any topics or make friendships",
                          style: GoogleFonts.varela(
                            color: CustomColors.lightColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            letterSpacing: 1.4,
                          ),
                        ).animate().slideX().fadeIn(
                            duration: const Duration(
                              milliseconds: 1000,
                            ),
                          )
                      : Text(
                          "Create communities and connect to new network and share ideas throught the community",
                          style: GoogleFonts.varela(
                            color: CustomColors.lightColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            letterSpacing: 1.4,
                          ),
                        ).animate().slideX().fadeIn(
                            duration: const Duration(
                              milliseconds: 1000,
                            ),
                          ),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                if (_pageNo != 2) {
                  setState(() {
                    _pageNo = _pageNo + 1;
                    _pageViewController.nextPage(
                      duration: const Duration(
                        milliseconds: 300,
                      ),
                      curve: Curves.linear,
                    );
                  });
                } else {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AuthenticationPage(),
                    ),
                    (route) => false,
                  );
                }
              },
              child: Align(
                alignment: const Alignment(0.85, 1),
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        30,
                      ),
                    ),
                    color: CustomColors.orangeColor,
                  ),
                  child: Stack(
                    alignment: const Alignment(0, 0),
                    children: [
                      const Icon(
                        Icons.arrow_right_rounded,
                        color: CustomColors.lightColor,
                        size: 60,
                      ),
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: CircularProgressIndicator(
                          value: _pageNo == 0
                              ? 0.33
                              : _pageNo == 1
                                  ? 0.66
                                  : _pageNo == 2
                                      ? 1
                                      : 0,
                          color: CustomColors.lightColor,
                          backgroundColor: CustomColors.orangeColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )
          .animate()
          .fadeIn(
            duration: const Duration(
              milliseconds: 1000,
            ),
          )
          .slideX(
            duration: const Duration(
              milliseconds: 500,
            ),
          ),
    );
  }
}
