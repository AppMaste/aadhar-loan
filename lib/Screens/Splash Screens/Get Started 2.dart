import 'package:aadhar_loan_app/Controller/Ad%20Controller/Button%20Controller/Button%20Controller.dart';
import 'package:aadhar_loan_app/Screens/Splash%20Screens/WebView%20Screen.dart';
import 'package:aadhar_loan_app/Widgets/Mediaquery/media.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

class GetStartedScreen2 extends StatelessWidget {
  const GetStartedScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/GetStartedScreen2");
        return Future(() => false);
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: ScreenMQ.fSize_110()),
                  imageWidget(context, "assets/images/Vector Img 3.png", 2.4),
                  SizedBox(height: ScreenMQ.fSize_50()),
                  textWidget(context, "Easy Loan Guide"),
                  SizedBox(height: ScreenMQ.fSize_40()),
                  detailTextWidget(context,
                      "It’s important to note that loan guides may very depending on the lender, loan type, and location, so it’s always advisable to refer to specific loan guides provided by reputable sources or financial institutions for accurate and up-to-date information."),
                  getStartedButton(
                      context,
                      "Get Started",
                      "assets/Icon/Share.png",
                      "assets/Icon/chevron-right.png",
                      "assets/Icon/Privacy.png", () {
                    Share.share("https://pub.dev/packages/share_plus");
                  }, () {
                    tapController.buttonWidget(context, "/HomeScreen", '');
                    // Get.to(() => const HomeScreen());
                  }, () {
                    Get.to(() => const PrivacyWebView());
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
