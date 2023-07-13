import 'package:aadhar_loan_app/Controller/Ad%20Controller/Button%20Controller/Button%20Controller.dart';
import 'package:aadhar_loan_app/Screens/Apply%20Loan%20Page/Form%20Page/Form%202.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
// import 'package:awesome_dialog/awesome_dialog.dart';

// import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Controller/Ad Controller/Native and Banner Ad Controller.dart';
import '../../../Widgets/Mediaquery/media.dart';

class FormScreen extends StatefulWidget {
  FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var middleNameController = TextEditingController();

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
                      child: dotWidget(context, 0, 1, 1, 1),
                    ),
                  ),
                  SizedBox(height: ScreenMQ.fSize_50()),
                  titleWidget(context, "Personal Details:"),
                  SizedBox(height: ScreenMQ.fSize_20()),
                  textFieldWidget(context, "First Name", firstNameController,
                      TextInputType.name, 100),
                  SizedBox(height: ScreenMQ.fSize_20()),
                  textFieldWidget(context, "Last Name", lastNameController,
                      TextInputType.name, 100),
                  SizedBox(height: ScreenMQ.fSize_20()),
                  textFieldWidget(context, "Middle Name", middleNameController,
                      TextInputType.name, 100),
                  SizedBox(height: ScreenMQ.fSize_90()),
                  Center(
                    child: applyContainerWidget(context, "NEXT", () {
                      if (firstNameController.text.isEmpty ||
                          lastNameController.text.isEmpty ||
                          middleNameController.text.isEmpty) {
                        alertWidget(context);
                      } else {
                        // tapController.buttonWidget(context, "/Form2Screen", '');
                        Get.to(() => Form2Screen());
                      }
                    }),
                  ),
                  SizedBox(height: ScreenMQ.fSize_20()),
                  nativeee.getNT("listTile"),
                  SizedBox(height: ScreenMQ.fSize_90()),
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
