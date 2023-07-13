import 'package:aadhar_loan_app/Widgets/Mediaquery/media.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Controller/Ad Controller/Native and Banner Ad Controller.dart';

class LinkPanToAadharDetailScreen extends StatelessWidget {
  LinkPanToAadharDetailScreen({super.key});

  var argument = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, "${argument[0]}"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: ScreenMQ.fSize_20()),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: AppColor.withOpacity(0.3),
                        borderRadius:
                            BorderRadius.circular(ScreenMQ.fSize_15())),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: ScreenMQ.fSize_20(),
                          bottom: ScreenMQ.fSize_20(),
                          left: ScreenMQ.fSize_15(),
                          right: ScreenMQ.fSize_15()),
                      child: Center(
                        child: Text(
                          "${argument[1]}",
                          textAlign: TextAlign.center,
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenMQ.fSize_40()),
                  applyContainerWidget(context, "Copy Link", () {
                    ScaffoldMessenger.of(context).showSnackBar(snackdemo);
                    Clipboard.setData(const ClipboardData(
                        text: "https://unifiedportal.epfindia.gov.in/"));
                  })
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
