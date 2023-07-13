import 'package:aadhar_loan_app/Screens/Home%20Page/Home%20Screen.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';

// import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/Ad Controller/Native and Banner Ad Controller.dart';
import '../../../Widgets/Mediaquery/media.dart';

class Form4Screen extends StatelessWidget {
  Form4Screen({super.key});

  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController accountNumberController = TextEditingController();
  TextEditingController salaryAmountController = TextEditingController();

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
                      child: dotWidget(context, 1, 1, 1, 0),
                    ),
                  ),
                  SizedBox(height: ScreenMQ.fSize_50()),
                  titleWidget(context, "Contact Details:"),
                  SizedBox(height: ScreenMQ.fSize_20()),
                  textFieldWidget(context, "Enter Phone Number",
                      phoneNumberController, TextInputType.number, 10),
                  SizedBox(height: ScreenMQ.fSize_20()),
                  textFieldWidget(context, "Enter Account Number",
                      accountNumberController, TextInputType.number, 11),
                  SizedBox(height: ScreenMQ.fSize_20()),
                  textFieldWidget(context, "Enter Salary Amount",
                      salaryAmountController, TextInputType.number, 10),
                  SizedBox(height: ScreenMQ.fSize_90()),
                  Center(
                    child: applyContainerWidget(context, "NEXT", () {
                      if (phoneNumberController.text.isEmpty ||
                          accountNumberController.text.isEmpty ||
                          salaryAmountController.text.isEmpty) {
                        alertWidget(context);
                      } else {
                        Get.to(() => const HomeScreen());
                        // Get.to(() => HomeScreen());
                      }
                      // if (firstNameController.text.isNotEmpty ||
                      //     lastNameController.text.isNotEmpty ||
                      //     middleNameController.text.isNotEmpty) {
                      // } else {}
                    }),
                  ),
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
