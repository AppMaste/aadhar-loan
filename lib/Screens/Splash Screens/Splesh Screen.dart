import 'package:aadhar_loan_app/Widgets/Mediaquery/media.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Services/notification/Notification and data load screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  AppController appController = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    ScreenMQ.sizerInit(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset("assets/images/splesh screen shape.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: ScreenMQ.horizontalBlockSize! * 85),
                  child: Image.asset(
                    "assets/images/splesh screen shape 2.png",
                    width: ScreenMQ.fSize_110(),
                  ),
                ),
              ],
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: ScreenMQ.horizontalBlockSize! * 40),
                    Image.asset(
                      "assets/images/splesh screen shape 3.png",
                      width: ScreenMQ.horizontalBlockSize! * 60,
                    ),
                    SizedBox(
                      height: ScreenMQ.fSize_30(),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Aadhar ',
                        style: GoogleFonts.poppins(
                            color: const Color(0xFFFE9D9E),
                            fontWeight: FontWeight.bold,
                            fontSize: ScreenMQ.fSize_30()),
                        children: [
                          TextSpan(
                            text: 'Loan',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: ScreenMQ.fSize_15()),
                    Text(
                      "Easiest Way to Get Loan",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: ScreenMQ.horizontalBlockSize! * 30),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      width: ScreenMQ.fSize_150(),
                      height: ScreenMQ.fSize_6(),
                      child: const ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: LinearProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(Color(0xFFFE9D9E)),
                          backgroundColor: Color(0xffD6D6D6),
                        ),
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
