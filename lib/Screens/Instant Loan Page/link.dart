import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/Mediaquery/media.dart';

class LinkScreen extends StatelessWidget {
  LinkScreen({super.key});

  var argument = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, "$argument"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: ScreenMQ.fSize_30()),
            Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: AppColor.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(ScreenMQ.fSize_15())),
              child: Column(
                children: [
                  SizedBox(height: ScreenMQ.fSize_30()),
                  Text(
                    "Check Your PF Balance\nWithout Internet Through",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(fontSize: ScreenMQ.fSize_17()),
                  ),
                  SizedBox(height: ScreenMQ.fSize_30()),
                  Row(
                    children: [
                      SizedBox(
                        width: ScreenMQ.horizontalBlockSize! * 15,
                      ),
                      Image.asset("assets/Icon/Message.png"),
                      SizedBox(
                        width: ScreenMQ.horizontalBlockSize! * 5,
                      ),
                      Text(
                        "EPFOHO UAN ENG to\n7738299899",
                        textAlign: TextAlign.center,
                        style:
                            GoogleFonts.poppins(fontSize: ScreenMQ.fSize_17()),
                      )
                    ],
                  ),
                  SizedBox(height: ScreenMQ.fSize_30()),
                ],
              ),
            ),
            SizedBox(height: ScreenMQ.fSize_30()),
            applyContainerWidget(context, "Copy Link", () {
              Clipboard.setData(const ClipboardData(text: "7738299899"));
            })
          ],
        ),
      ),
    );
  }
}
