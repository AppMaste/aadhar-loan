import 'package:aadhar_loan_app/Controller/Ad%20Controller/Button%20Controller/Button%20Controller.dart';
import 'package:aadhar_loan_app/Screens/Aadhar%20Pan%20Link%20Page/Aadhar%20Pan%20Link.dart';
import 'package:aadhar_loan_app/Screens/Bank%20Info%20Page/Bank%20Info.dart';
import 'package:aadhar_loan_app/Screens/Near%20By%20Me%20Page/Near%20By%20Me.dart';
import 'package:aadhar_loan_app/Widgets/Mediaquery/media.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Controller/Ad Controller/Native and Banner Ad Controller.dart';
import '../Aadhar Loan Page/Aadhar loan.dart';
import '../Address change Page/Address Change.dart';
import '../Apply Loan Page/Apply Now Screen.dart';
import '../Calculator Page/EMI calcualtor Page/EMI Calculator.dart';
import '../Calculator Page/GST calculator Page/GST Calculator.dart';
import '../Calculator Page/SIP Calculator Page/SIP Calculator.dart';
import '../EPF Service Page/EPF Service.dart';
import '../Instant Loan Page/instant lona.dart';
import '../Loan Guide Page/Loan guide.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<bool> _onWillPop(BuildContext context) async {
    bool? exitResult = await showDialog(
      context: context,
      builder: (context) => _buildExitDialog(context),
    );
    return exitResult ?? false;
  }

  Scaffold _buildExitDialog(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: ScreenMQ.fSize_60()),
                imageWidget(context, "assets/images/Thank you vector.png", 2.2),
                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: AppColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(ScreenMQ.fSize_10())),
                  child: Column(
                    children: [
                      SizedBox(height: ScreenMQ.fSize_15()),
                      Text(
                        "Are you sure want to exit?",
                        style: GoogleFonts.poppins(
                            fontSize: ScreenMQ.fSize_17(),
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: ScreenMQ.fSize_30()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.of(context).pop(true),
                            child: Container(
                              height: ScreenMQ.fSize_45(),
                              width: ScreenMQ.fSize_100(),
                              decoration: BoxDecoration(
                                  color: AppColor,
                                  borderRadius: BorderRadius.circular(
                                      ScreenMQ.fSize_30())),
                              child: Center(
                                child: Text(
                                  "Yes",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: ScreenMQ.fSize_15()),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: _shareURL,
                            child: Container(
                              height: ScreenMQ.fSize_45(),
                              width: ScreenMQ.fSize_100(),
                              decoration: BoxDecoration(
                                  color: AppColor,
                                  borderRadius: BorderRadius.circular(
                                      ScreenMQ.fSize_30())),
                              child: Center(
                                child: Text(
                                  "Rate Us",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: ScreenMQ.fSize_15()),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.of(context).pop(false),
                            child: Container(
                              height: ScreenMQ.fSize_45(),
                              width: ScreenMQ.fSize_100(),
                              decoration: BoxDecoration(
                                  color: AppColor,
                                  borderRadius: BorderRadius.circular(
                                      ScreenMQ.fSize_30())),
                              child: Center(
                                child: Text(
                                  "No",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: ScreenMQ.fSize_15()),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: ScreenMQ.fSize_20()),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onWillPop(context),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Aadhar Loan",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: ScreenMQ.fSize_28()),
                      ),
                    ),
                    SizedBox(height: ScreenMQ.fSize_30()),
                    firstContainerWidget(context, "Maximum Loan Amount",
                        "RS. 5,00,000", "Money, when you need it.", () {
                      tapController.buttonWidget(context, "/ApplyNowScreen", '');
                      // Get.to(() => const ApplyNowScreen());
                    }),
                    SizedBox(height: ScreenMQ.fSize_20()),
                    secondContainerWidget(
                        context,
                        "Aadhar Loan Guide",
                        AppColor.withOpacity(0.3),
                        "assets/Icon/Loan Guide.png", () {
                      tapController.buttonWidget(context, "/LoanGuideScreen", '');
                      // Get.to(() => LoanGuideScreen());
                    }),
                    SizedBox(height: ScreenMQ.fSize_20()),
                    secondContainerWidget(context, "Types of Aadhar Loan",
                        const Color(0xFFf0ecf4), "assets/Icon/Loan Type.png", () {
                          tapController.buttonWidget(context, "/ApplyNowScreen", '');
                      // Get.to(() => ApplyNowScreen());
                    }),
                    SizedBox(height: ScreenMQ.fSize_20()),
                    rowWidget(
                        context,
                        "Aadhar\nLoan",
                        "Instant\nLoan",
                        "assets/Icon/Aadhar Loan.png",
                        "assets/Icon/Instant Loan.png",
                        const Color(0xFFFDF4E3),
                        const Color(0xFFECF8F7), () {
                      tapController.buttonWidget(context, "/AadharLoanScreen", '');
                      // Get.to(() => AadharLoanScreen());
                    }, () {
                      tapController.buttonWidget(context, "/InstantLoanScreen", '');
                      // Get.to(() => InstantLoanScreen());
                    }),
                    SizedBox(height: ScreenMQ.fSize_10()),
                    rowWidget(
                        context,
                        "Address\nChange",
                        "EPF\nService",
                        "assets/Icon/Address Change.png",
                        "assets/Icon/EPF Service.png",
                        const Color(0xFFFDEEF5),
                        const Color(0xFFFFF1E9), () {
                      tapController.buttonWidget(context, "/AddressChangeScreen", '');
                      // Get.to(() => AddressChangeScreen());
                    }, () {
                      tapController.buttonWidget(context, "/EPFServiceScreen", '');
                      // Get.to(() => EPFServiceScreen());
                    }),
                    SizedBox(height: ScreenMQ.fSize_10()),
                    rowWidget(
                        context,
                        "Aadhar\nPan Link",
                        "Bank\nInfo",
                        "assets/Icon/Aadhar Pan Link.png",
                        "assets/Icon/Bank Info.png",
                        const Color(0xFFEFF4FF),
                        const Color(0xFFEAFBF2), () {
                      tapController.buttonWidget(context, "/AadharPanLinkScreen", '');
                      // Get.to(() => const AadharPanLinkScreen());
                    }, () {
                      tapController.buttonWidget(context, "/BankInfoScreen", '');
                      // Get.to(() =>  BankInfoScreen());
                    }),
                    SizedBox(height: ScreenMQ.fSize_20()),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Near By Me",
                            style: GoogleFonts.poppins(
                                fontSize: ScreenMQ.fSize_20(),
                                fontWeight: FontWeight.w500),
                          ),
                          GestureDetector(
                            onTap: () {
                              tapController.buttonWidget(context, "/NearByMeScreen", '');
                              // Get.to(() => NearByMeScreen());
                            },
                            child: Text(
                              "View All",
                              style:
                                  GoogleFonts.poppins(fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: ScreenMQ.fSize_10()),
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: AppColor.withOpacity(0.2),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: ScreenMQ.fSize_20()),
                          atmContainerWidget(
                              context,
                              "ATM",
                              "Art",
                              "Bars",
                              "assets/Icon/Near By Me/ATM.png",
                              "assets/Icon/Near By Me/art.png",
                              "assets/Icon/Near By Me/bars.png", () {
                            dialogWidget(context);
                            Future.delayed(
                              const Duration(seconds: 3),
                              () {
                                Navigator.pop(context);
                                launchMapsUrl("ATM");
                              },
                            );
                          }, () {
                            dialogWidget(context);
                            Future.delayed(
                              const Duration(seconds: 3),
                              () {
                                Navigator.pop(context);
                                launchMapsUrl("Art");
                              },
                            );
                          }, () {
                            dialogWidget(context);
                            Future.delayed(
                              const Duration(seconds: 3),
                              () {
                                Navigator.pop(context);
                                launchMapsUrl("Bars");
                              },
                            );
                          }),
                          SizedBox(height: ScreenMQ.fSize_20()),
                        ],
                      ),
                    ),
                    SizedBox(height: ScreenMQ.fSize_20()),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Loan Calculator",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: ScreenMQ.fSize_20()),
                      ),
                    ),
                    SizedBox(height: ScreenMQ.fSize_20()),
                    calculatorContainerWidget(context, "EMI Calculator", () {
                      tapController.buttonWidget(context, "/EMICalculatorScreen", '');
                      // Get.to(() => EMICalculatorScreen());
                    }),
                    SizedBox(height: ScreenMQ.fSize_20()),
                    calculatorContainerWidget(context, "GST Calculator", () {
                      tapController.buttonWidget(context, "/GSTCalculatorScreen", '');
                      // Get.to(() => GSTCalculatorScreen());
                    }),
                    SizedBox(height: ScreenMQ.fSize_20()),
                    calculatorContainerWidget(context, "SIP Calculator", () {
                      tapController.buttonWidget(context, "/SIPCalculateScreen", '');
                      // Get.to(() => SIPCalculateScreen());
                    }),
                    SizedBox(height: ScreenMQ.fSize_60()),
                  ],
                ),
              ),
              banner.getBN()
            ],
          ),
        ),
      ),
    );
  }

  _shareURL() async {
    const url = "https://in.linkedin.com/company/infinitizi?trk=ppro_cprof";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void launchMapsUrl(String lat) async {
    final url = 'https://www.google.com/maps/search/?api=1&query=$lat near me';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
