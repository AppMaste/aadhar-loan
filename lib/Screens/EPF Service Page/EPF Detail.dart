// ignore_for_file: must_be_immutable

import 'package:aadhar_loan_app/Widgets/Mediaquery/media.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Controller/Ad Controller/Button Controller/Button Controller.dart';
import '../../Controller/Ad Controller/Native and Banner Ad Controller.dart';

class EPFDetailScreen extends StatelessWidget {
  EPFDetailScreen({super.key});

  var argument = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/EPFDetailScreen");
        return Future(() => false);
      },
      child: Scaffold(
        appBar: appBarWidget(context, "${argument[0]}"),
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
                              BorderRadius.circular(ScreenMQ.fSize_15())),
                      child: Column(
                        children: [
                          SizedBox(height: ScreenMQ.fSize_20()),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: ScreenMQ.fSize_20(),
                                  right: ScreenMQ.fSize_20()),
                              child: Text(
                                "${argument[1]}",
                                style: GoogleFonts.poppins(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: ScreenMQ.fSize_60()),
                  ],
                ),
              ),
              banner.getBN("/EPFDetailScreen")
            ],
          ),
        ),
      ),
    );
  }
}
