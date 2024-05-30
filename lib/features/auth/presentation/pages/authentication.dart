import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social/core/theme/colors.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment(0, -0.55),
        child: Image.asset(
          'assets/logo/logo2.png',
          width: 150,
        ),
      ),
      bottomSheet: Container(
        height: 400,
        decoration: BoxDecoration(
          color: CustomColors.orangeColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(
              60,
            ),
            topRight: Radius.circular(
              60,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 86, right: 86 , top: 20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColors.lightColor,
                  surfaceTintColor: CustomColors.transparantColor,
                  shadowColor: CustomColors.transparantColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10 ),
                      child: Image.asset(
                        "assets/git-icon.png",
                        width: 60,
                      ),
                    ),
                    Text(
                      "GitHub",
                      style: GoogleFonts.varelaRound(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.orangeColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Text(
              'OR',
              style: GoogleFonts.varelaRound(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 86,
                right: 86,
                bottom: 20
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                      color: CustomColors.lightColor, width: 3),
                  backgroundColor: CustomColors.orangeColor,
                  surfaceTintColor: CustomColors.transparantColor,
                  shadowColor: CustomColors.transparantColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Image.asset(
                        "assets/git-lab-icon.png",
                        width: 60,
                      ),
                    ),
                    Text(
                      "GitLab",
                      style: GoogleFonts.varelaRound(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.lightColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
