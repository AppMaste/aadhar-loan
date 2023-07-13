import 'package:aadhar_loan_app/Controller/Ad%20Controller/Button%20Controller/Button%20Controller.dart';
import 'package:aadhar_loan_app/Models/Loan%20guide%20Model/Loan%20guide.dart';
import 'package:aadhar_loan_app/Screens/Loan%20Guide%20Page/Loan%20guide%20detail.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Controller/Ad Controller/Native and Banner Ad Controller.dart';
import '../../Widgets/Mediaquery/media.dart';

class LoanGuideScreen extends StatelessWidget {
  const LoanGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, "Loan Guide"),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: ScreenMQ.fSize_15(), bottom: ScreenMQ.fSize_60()),
            child: ListView.builder(
              itemCount: adharname.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(ScreenMQ.fSize_8()),
                  child: GestureDetector(
                    onTap: () {
                      tapController.buttonWidget(
                        context,
                        "/LoanGuideDetailScreen",
                        AdharData[index],
                      );
                      /*Get.to(() => LoanGuideDetailScreen(),
                          arguments: AdharData[index]);*/
                    },
                    child: Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: AppColor.withOpacity(0.3),
                          border: Border.all(color: AppColor),
                          borderRadius:
                              BorderRadius.circular(ScreenMQ.fSize_40())),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: ScreenMQ.fSize_8(),
                              right: ScreenMQ.fSize_8(),
                              top: ScreenMQ.fSize_15(),
                              bottom: ScreenMQ.fSize_15()),
                          child: Text(
                            adharname[index],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: ScreenMQ.fSize_15()),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          banner.getBN()
        ],
      ),
    );
  }
}
