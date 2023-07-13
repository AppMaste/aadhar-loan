import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/Ad Controller/Button Controller/Button Controller.dart';
import '../../../Controller/Ad Controller/Native and Banner Ad Controller.dart';
import '../../../Widgets/Mediaquery/media.dart';
import 'Form 3.dart';

class Form2Screen extends StatelessWidget {
  Form2Screen({super.key});

  TextEditingController addressController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController zipcodeController = TextEditingController();
  TextEditingController countryController = TextEditingController();

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
                      child: dotWidget(context, 1, 0, 1, 1),
                    ),
                  ),
                  SizedBox(height: ScreenMQ.fSize_50()),
                  titleWidget(context, "Address Details:"),
                  SizedBox(height: ScreenMQ.fSize_20()),
                  textFieldWidget(context, "Enter Address", addressController,
                      TextInputType.streetAddress, 100),
                  SizedBox(height: ScreenMQ.fSize_20()),
                  textFieldWidget(context, "Enter State/Province",
                      stateController, TextInputType.name, 100),
                  SizedBox(height: ScreenMQ.fSize_20()),
                  rowTextFieldWidget(
                      context,
                      "Enter City",
                      cityController,
                      "Enter Zipcode",
                      zipcodeController,
                      TextInputType.name,
                      TextInputType.number,
                      100,
                      6),
                  SizedBox(height: ScreenMQ.fSize_20()),
                  textFieldWidget(context, "Enter Country", countryController,
                      TextInputType.name, 100),
                  SizedBox(height: ScreenMQ.fSize_60()),
                  Center(
                    child: applyContainerWidget(context, "NEXT", () {
                      if (addressController.value.text.isEmpty ||
                          stateController.value.text.isEmpty ||
                          cityController.value.text.isEmpty ||
                          zipcodeController.value.text.isEmpty ||
                          countryController.value.text.isEmpty) {
                        alertWidget(context);
                      } else {
                        Get.to(() => Form3Screen());
                      }
                      // tapController.buttonWidget(context, "/Form3Screen", '');
                    }),
                  )
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
