// ignore_for_file: must_be_immutable

import 'package:aadhar_loan_app/Widgets/Mediaquery/media.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Controller/Ad Controller/Button Controller/Button Controller.dart';
import '../../Controller/Ad Controller/Native and Banner Ad Controller.dart';
import '../../Models/Loan guide Model/Loan guide.dart';

class LoanGuideDetailScreen extends StatelessWidget {
  LoanGuideDetailScreen({super.key});

  AdharLoan adharLoan = Get.arguments;

  @override
  Widget build(BuildContext context) {
    // print("LoanGuideDetailScreennn $argument");
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/LoanGuideDetailScreen");
        return Future(() => false);
      },
      child: Scaffold(
        appBar: appBarWidget(context, "Detail"),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: ScreenMQ.fSize_30()),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: AppColor.withOpacity(0.4),
                          borderRadius:
                              BorderRadius.circular(ScreenMQ.fSize_15())),
                      child: Padding(
                        padding: EdgeInsets.all(ScreenMQ.fSize_20()),
                        child: Text(
                          adharLoan.adhardetails,
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenMQ.fSize_60()),
                ],
              ),
            ),
            banner.getBN("/LoanGuideDetailScreen")
          ],
        ),
      ),
    );
  }
}
