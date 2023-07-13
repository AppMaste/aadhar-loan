import 'package:aadhar_loan_app/Controller/Ad%20Controller/Button%20Controller/Button%20Controller.dart';
import 'package:aadhar_loan_app/Widgets/Mediaquery/media.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Controller/Ad Controller/Native and Banner Ad Controller.dart';
import 'Form Page/Form.dart';

// ignore: must_be_immutable
class LoanTypeScreen extends StatelessWidget {
  LoanTypeScreen({super.key});

  var argument = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, argument[0].toString()),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: ScreenMQ.fSize_30()),
                    applyContainerWidget(context, "Apply Now", () {
                      tapController.buttonWidget(context, "/FormScreen", '');
                      // Get.to(() => FormScreen());
                    }),
                    SizedBox(height: ScreenMQ.fSize_20()),
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: AppColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(ScreenMQ.fSize_15()),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: ScreenMQ.fSize_20()),
                          Padding(
                            padding: EdgeInsets.only(
                                left: ScreenMQ.fSize_28(),
                                right: ScreenMQ.fSize_28()),
                            child: Text(
                              "${argument[1]}",
                              style:
                                  GoogleFonts.poppins(fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(height: ScreenMQ.fSize_20()),
                        ],
                      ),
                    ),
                    SizedBox(height: ScreenMQ.fSize_20()),
                    nativeee.getNT("listTileMedium"),
                    SizedBox(height: ScreenMQ.fSize_60()),
                  ],
                ),
              ),
            ),
          ),
          banner.getBN()
        ],
      ),
    );
  }
}
