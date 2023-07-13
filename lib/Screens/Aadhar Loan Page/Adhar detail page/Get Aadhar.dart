import 'package:aadhar_loan_app/Controller/Ad%20Controller/Button%20Controller/Button%20Controller.dart';
import 'package:aadhar_loan_app/Screens/Aadhar%20Loan%20Page/Adhar%20detail%20page/Get%20Adhar%20Detail%20Page/Book%20(BETA).dart';
import 'package:aadhar_loan_app/Widgets/Mediaquery/media.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Controller/Ad Controller/Native and Banner Ad Controller.dart';
import '../../../Models/Get Aadhar model/Get Aadhar.dart';
import 'Get Adhar Detail Page/Aadhar detail.dart';

class GetAadharScreen extends StatelessWidget {
  GetAadharScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, "Get Aadhar"),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: GetTitle.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                    top: ScreenMQ.fSize_10(),
                    left: ScreenMQ.fSize_8(),
                    right: ScreenMQ.fSize_8()),
                child: GestureDetector(
                  onTap: () {
                    GetTitle[index] == "Locate an Enrollment Center"
                        ? tapController.buttonWidget(
                            context, "/AadharDetailScreen", '')
                        // Get.to(() => AadharDetailScreen())
                        : tapController.buttonWidget(
                            context,
                            "/BETAScreen",
                            [GetTitle[index], GetDetail[index], GetLink[index]],
                          );
                    /* Get.to(() => BETAScreen(), arguments: [
                            GetTitle[index],
                            GetDetail[index],
                            GetLink[index]
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
                      padding: EdgeInsets.only(right: ScreenMQ.fSize_20()),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(ScreenMQ.fSize_20()),
                            child: Text(
                              GetTitle[index],
                              style: GoogleFonts.poppins(
                                  fontSize: ScreenMQ.fSize_15(),
                                  fontWeight: FontWeight.w500),
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
