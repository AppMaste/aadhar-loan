// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Controller/Ad Controller/Button Controller/Button Controller.dart';
import '../../Controller/Ad Controller/Native and Banner Ad Controller.dart';
import '../../Widgets/Mediaquery/media.dart';

class InstantDetailScreen extends StatelessWidget {
  InstantDetailScreen({super.key});

  var argument = Get.arguments;

  @override
  Widget build(BuildContext context) {
    var Name = argument[0].toString().split("\n");
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/InstantDetailScreen");
        return Future(() => false);
      },
      child: Scaffold(
        appBar: appBarWidget(context, "${Name[0]}${Name[1]}"),
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
                          "${argument[1]}",
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            banner.getBN("/InstantDetailScreen")
          ],
        ),
      ),
    );
  }
}
