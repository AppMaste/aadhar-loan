import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Controller/Ad Controller/Button Controller/Button Controller.dart';
import '../../../Controller/Ad Controller/Native and Banner Ad Controller.dart';
import '../../../Widgets/Mediaquery/media.dart';
import 'Form 4.dart';

class Form3Screen extends StatelessWidget {
  Form3Screen({super.key});

  TextEditingController dobController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  RxInt id = 1.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBarWidget(context, "Fill up Form"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: ScreenMQ.fSize_20()),
                  Center(
                    child: Container(
                      width: ScreenMQ.fSize_120(),
                      color: Colors.transparent,
                      child: dotWidget(context, 1, 1, 0, 1),
                    ),
                  ),
                  SizedBox(height: ScreenMQ.fSize_50()),
                  titleWidget(context, "Email Details:"),
                  SizedBox(height: ScreenMQ.fSize_20()),
                  textFieldWidget(context, "Enter Date of Birth", dobController,
                      TextInputType.datetime, 10),
                  SizedBox(height: ScreenMQ.fSize_20()),
                  Text(
                    "Select Gender:",
                    style: GoogleFonts.poppins(
                        color: AppColor, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: ScreenMQ.fSize_10()),
                  Obx(() => genderWidget(context, id, "Male", "Female")),
                  SizedBox(height: ScreenMQ.fSize_10()),
                  textFieldWidget(context, "Enter Email Address",
                      emailController, TextInputType.emailAddress, 100),
                  SizedBox(height: ScreenMQ.fSize_60()),
                  Center(
                      child: applyContainerWidget(context, "NEXT", () {
                    if (dobController.text.isEmpty ||
                        emailController.text.isEmpty) {
                      alertWidget(context);
                    } else {
                      Get.to(() => Form4Screen());
                    }
                    // tapController.buttonWidget(context, "/Form4Screen", '');
                  }))
                ],
              ),
            ),
            banner.getBN()
          ],
        ),
      ),
    );
  }
}
