import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Controller/Ad Controller/Native and Banner Ad Controller.dart';
import '../../Widgets/Mediaquery/media.dart';

class BalanceOnlineScreen extends StatelessWidget {
  BalanceOnlineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, "Balance Online"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: AppColor.withOpacity(0.3),
                          borderRadius:
                              BorderRadius.circular(ScreenMQ.fSize_15())),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(ScreenMQ.fSize_20()),
                            child: Center(
                              child: Text(
                                "Check Your PF Balance\nWithout Internet Through",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: ScreenMQ.fSize_15()),
                              ),
                            ),
                          ),
                          SizedBox(height: ScreenMQ.horizontalBlockSize! * 8),
                          Row(
                            children: [
                              SizedBox(
                                  width: ScreenMQ.horizontalBlockSize! * 15),
                              Image.asset("assets/Icon/Message.png"),
                              SizedBox(
                                  width: ScreenMQ.horizontalBlockSize! * 10),
                              Text(
                                "EPFOHO UAN ENG to\n7738299899",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: ScreenMQ.fSize_15()),
                              )
                            ],
                          ),
                          SizedBox(height: ScreenMQ.horizontalBlockSize! * 8),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenMQ.horizontalBlockSize! * 8),
                  applyContainerWidget(context, "Copy Link", () {
                    ScaffoldMessenger.of(context).showSnackBar(snackdemo);
                    Clipboard.setData(const ClipboardData(text: "7738299899"));
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
