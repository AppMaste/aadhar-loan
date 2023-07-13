// ignore_for_file: unrelated_type_equality_checks

import 'package:aadhar_loan_app/Controller/Ad%20Controller/Button%20Controller/Button%20Controller.dart';
import 'package:aadhar_loan_app/Models/Update%20Aadhar%20Model/Update%20Aadhar.dart';
import 'package:aadhar_loan_app/Screens/Aadhar%20Loan%20Page/Adhar%20detail%20page/Get%20Adhar%20Detail%20Page/Aadhar%20detail.dart';
import 'package:aadhar_loan_app/Widgets/Mediaquery/media.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Controller/Ad Controller/Native and Banner Ad Controller.dart';
import 'Get Adhar Detail Page/Book (BETA).dart';
import 'Update Aadhar Detail.dart';

class UpdateAadharScreen extends StatelessWidget {
  UpdateAadharScreen({super.key});

  List list = [
    "Update Your Aadhar an Enrollment/\nUpdate Center",
    "Check Aadhar update Status",
    "Update Your Address Online",
    "Check Address Update Status",
    "Aadhar Update History",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, "Update Aadhar"),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                    top: ScreenMQ.fSize_20(),
                    left: ScreenMQ.fSize_10(),
                    right: ScreenMQ.fSize_10()),
                child: GestureDetector(
                  onTap: () {
                    index == 0
                        ? tapController.buttonWidget(
                            context, "/AadharDetailScreen", '')
                        // Get.to(() => AadharDetailScreen())
                        : tapController.buttonWidget(
                            context, "/UpdateAadharDetailScreen", [
                            UpdateTitle[index],
                            UpdateDetail[index],
                            UpdateLink[index]
                          ]);
                    /*Get.to(() => UpdateAadharDetailScreen(), arguments: [
                            UpdateTitle[index],
                            UpdateDetail[index],
                            UpdateLink[index]
                          ]);*/
                  },
                  child: Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: AppColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(ScreenMQ.fSize_40()),
                      border: Border.all(color: AppColor),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(right: ScreenMQ.fSize_10()),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: ScreenMQ.fSize_13(),
                                bottom: ScreenMQ.fSize_13(),
                                left: ScreenMQ.fSize_10()),
                            child: Text(
                              list[index],
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: ScreenMQ.fSize_15()),
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
