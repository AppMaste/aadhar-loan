import 'package:aadhar_loan_app/Controller/Ad%20Controller/Button%20Controller/Button%20Controller.dart';
import 'package:aadhar_loan_app/Models/Aadhar%20Loan%20Model/Aadhar%20Service%20Model.dart';
import 'package:aadhar_loan_app/Screens/Aadhar%20Loan%20Page/Aadhar%20Service%20Page/Aadhar%20Service%20Detail.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Controller/Ad Controller/Native and Banner Ad Controller.dart';
import '../../../Widgets/Mediaquery/media.dart';

class AadharServiceScreen extends StatelessWidget {
  AadharServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, "Aadhar Service"),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: ServiceTitle.length,
            padding: EdgeInsets.only(bottom: ScreenMQ.fSize_70()),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                    top: ScreenMQ.fSize_20(),
                    left: ScreenMQ.fSize_10(),
                    right: ScreenMQ.fSize_10()),
                child: GestureDetector(
                  onTap: () {
                    tapController.buttonWidget(
                      context,
                      "/AadharServiceDetailScreen",
                      [
                        ServiceTitle[index],
                        ServiceLink[index],
                        ServiceDetail[index],
                      ],
                    );
                    /* Get.to(() => AadharServiceDetailScreen(), arguments: [
                      ServiceTitle[index],
                      ServiceLink[index],
                      ServiceDetail[index],
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
                              ServiceTitle[index],
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
