import 'package:aadhar_loan_app/Screens/Home%20Page/Home%20Screen.dart';
import 'package:aadhar_loan_app/Widgets/Mediaquery/media.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Controller/Ad Controller/Button Controller/Button Controller.dart';
import '../../Widgets/widgets/Allwidget.dart';
import 'Get Started 2.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/GetStartedScreen");
        return Future(() => false);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => const HomeScreen());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Skip",
                        style: GoogleFonts.poppins(
                            fontSize: ScreenMQ.fSize_15(),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: ScreenMQ.fSize_20()),
                imageWidget(context, "assets/images/Vector Img 2.png", 2.2),
                SizedBox(height: ScreenMQ.fSize_50()),
                textWidget(context, "Easy Loan Guide"),
                SizedBox(height: ScreenMQ.fSize_40()),
                detailTextWidget(context,
                    "A loan guide may also provide guidance on how to compare different loan options, understand loan agreements, calculate loan payments, and manage loan-related finances effectively."),
                SizedBox(height: ScreenMQ.fSize_30()),
                NEXTButton(context, "NEXT", "assets/Icon/chevron-right.png",
                    () {
                  Get.to(() => const GetStartedScreen2());
                }),
                SizedBox(height: ScreenMQ.fSize_30()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
