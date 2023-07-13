import 'package:aadhar_loan_app/Controller/Ad%20Controller/Button%20Controller/Button%20Controller.dart';
import 'package:aadhar_loan_app/Screens/Instant%20Loan%20Page/Claim%20Page/claim%20detail.dart';
import 'package:aadhar_loan_app/Widgets/Mediaquery/media.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Controller/Ad Controller/Native and Banner Ad Controller.dart';

class ClamScreen extends StatelessWidget {
  ClamScreen({super.key});

  var argument = Get.arguments;

  List title = [
    "Your Claim Status",
    "Member Claim",
    "Apply for Claim",
  ];

  @override
  Widget build(BuildContext context) {
    var name = argument.toString().split("\n");
    return Scaffold(
      appBar: appBarWidget(context, name[0]),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: title.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                    left: ScreenMQ.fSize_20(),
                    right: ScreenMQ.fSize_20(),
                    top: ScreenMQ.fSize_10()),
                child: GestureDetector(
                  onTap: () {
                    tapController.buttonWidget(
                        context, "/ClaimDetailScreen", '');
                    // Get.to(() => const ClaimDetailScreen());
                  },
                  child: Container(
                    height: ScreenMQ.fSize_60(),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: AppColor.withOpacity(0.3),
                        borderRadius:
                            BorderRadius.circular(ScreenMQ.fSize_40()),
                        border: Border.all(color: AppColor)),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: ScreenMQ.fSize_15(),
                        right: ScreenMQ.fSize_15(),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title[index],
                            style: GoogleFonts.poppins(
                              color: AppColor,
                              fontSize: ScreenMQ.fSize_15(),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: AppColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          banner.getBN()
        ],
      ),
    );
  }
}
