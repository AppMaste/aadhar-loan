import 'package:aadhar_loan_app/Controller/Ad%20Controller/Button%20Controller/Button%20Controller.dart';
import 'package:aadhar_loan_app/Screens/Aadhar%20Loan%20Page/Adhar%20detail%20page/WebView%20Page/WebView%20Screen.dart';
import 'package:aadhar_loan_app/Widgets/Mediaquery/media.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Controller/Ad Controller/Native and Banner Ad Controller.dart';

class AadharDetailScreen extends StatefulWidget {
  const AadharDetailScreen({super.key});

  @override
  State<AadharDetailScreen> createState() => _AadharDetailScreenState();
}

class _AadharDetailScreenState extends State<AadharDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, "Enrollment Center"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: ScreenMQ.fSize_20()),
                  nativeee.getNT("listTileMedium"),
                  SizedBox(height: ScreenMQ.fSize_20()),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: ScreenMQ.fSize_20()),
                    child: Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: AppColor.withOpacity(0.3),
                        borderRadius:
                            BorderRadius.circular(ScreenMQ.fSize_40()),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Locate an Enrollment/Update Center\nNear You",
                            style: GoogleFonts.poppins(
                                fontSize: ScreenMQ.fSize_15()),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenMQ.fSize_20()),
                  Center(
                    child: Text(
                      "Search for a nearest enrollment center by\nselecting any of the following given mode",
                      style: GoogleFonts.poppins(
                          color: AppColor.withAlpha(150),
                          fontSize: ScreenMQ.fSize_15()),
                    ),
                  ),
                  SizedBox(height: ScreenMQ.fSize_20()),
                  Text(
                    "Search By",
                    style: GoogleFonts.poppins(
                        fontSize: ScreenMQ.fSize_20(),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: ScreenMQ.fSize_20()),
                  Center(
                      child: stateContainerWidget(context, "State", () {
                    tapController.buttonWidget(
                      context,
                      "/AadharWebView",
                      [
                        "https://appointments.uidai.gov.in/EACenterSearch.aspx?value=1",
                        "State"
                      ],
                    );
                    /*Get.to(() => AadharWebView(), arguments: [
                      "https://appointments.uidai.gov.in/EACenterSearch.aspx?value=1",
                      "State"
                    ]);*/
                  })),
                  SizedBox(height: ScreenMQ.fSize_20()),
                  Center(
                      child: stateContainerWidget(context, "Postel (pin) Code",
                          () {
                    tapController.buttonWidget(
                      context,
                      "/AadharWebView",
                      [
                        "https://appointments.uidai.gov.in/EACenterSearch.aspx?value=2",
                        "Postel (pin) Code"
                      ],
                    );
                    /*Get.to(() => AadharWebView(), arguments: [
                      "https://appointments.uidai.gov.in/EACenterSearch.aspx?value=2",
                      "Postel (pin) Code"
                    ]);*/
                  })),
                  SizedBox(height: ScreenMQ.fSize_20()),
                  Center(
                      child: stateContainerWidget(context, "Search Box", () {
                    tapController.buttonWidget(
                      context,
                      "/AadharWebView",
                      [
                        "https://appointments.uidai.gov.in/EACenterSearch.aspx?value=3",
                        "Search Box"
                      ],
                    );
                    /*Get.to(() => AadharWebView(), arguments: [
                      "https://appointments.uidai.gov.in/EACenterSearch.aspx?value=3",
                      "Search Box"
                    ]);*/
                  })),
                  SizedBox(height: ScreenMQ.fSize_60()),
                ],
              ),
            ),
            banner.getBN()
          ],
        ),
      ),
    );
  }
}
