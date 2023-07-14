// ignore_for_file: must_be_immutable

import 'package:aadhar_loan_app/Widgets/Mediaquery/media.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../Controller/Ad Controller/Button Controller/Button Controller.dart';
import '../../../Controller/Ad Controller/Native and Banner Ad Controller.dart';

class ImportantQuestionDetailScreen extends StatelessWidget {
  ImportantQuestionDetailScreen({super.key});

  var argument = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/ImportantQuestionDetailScreen");
        return Future(() => false);
      },
      child: Scaffold(
        appBar: appBarWidget(context, "Important Question"),
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
                            BorderRadius.circular(ScreenMQ.fSize_20()),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          argument,
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              banner.getBN("/ImportantQuestionDetailScreen")
            ],
          ),
        ),
      ),
    );
  }
}
