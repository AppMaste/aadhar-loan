// ignore_for_file: must_be_immutable

import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Controller/Ad Controller/Button Controller/Button Controller.dart';
import '../../../Controller/Ad Controller/Native and Banner Ad Controller.dart';
import '../../../Widgets/Mediaquery/media.dart';

class UpdateAadharDetailScreen extends StatelessWidget {
  UpdateAadharDetailScreen({super.key});

  var argument = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/UpdateAadharDetailScreen");
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
                            BorderRadius.circular(ScreenMQ.fSize_15()),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: ScreenMQ.fSize_20()),
                          Text(
                            "${argument[0]}",
                            style: GoogleFonts.poppins(),
                          ),
                          SizedBox(height: ScreenMQ.fSize_20()),
                          Padding(
                            padding: EdgeInsets.only(
                                left: ScreenMQ.fSize_20(),
                                right: ScreenMQ.fSize_24()),
                            child: Text(
                              "${argument[1]}",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(),
                            ),
                          ),
                          SizedBox(height: ScreenMQ.fSize_20()),
                        ],
                      ),
                    ),
                    SizedBox(height: ScreenMQ.fSize_40()),
                    applyContainerWidget(context, "Copy Link", () {
                      ScaffoldMessenger.of(context).showSnackBar(snackdemo);
                      Clipboard.setData(ClipboardData(text: "${argument[2]}"));
                    })
                  ],
                ),
              ),
              banner.getBN("/UpdateAadharDetailScreen")
            ],
          ),
        ),
      ),
    );
  }
}
