import 'package:aadhar_loan_app/Controller/Ad%20Controller/Button%20Controller/Button%20Controller.dart';
import 'package:aadhar_loan_app/Models/Aadhar%20Loan%20Model/Aadhar%20loan.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';

import '../../Controller/Ad Controller/Native and Banner Ad Controller.dart';

class AadharLoanScreen extends StatelessWidget {
  const AadharLoanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/AadharLoanScreen");
        return Future(() => false);
      },
      child: Scaffold(
        appBar: appBarWidget(context, "Aadhar Loan"),
        body: Stack(
          children: [
            ListView.builder(
              itemCount: AadharTitle.length,
              itemBuilder: (context, index) {
                return secondContainerWidget(context, "${AadharTitle[index]}",
                    AdharColor[index], "${AadharIcon[index]}", () {
                  AadharTitle[index] == "Get Aadhar"
                      ? tapController.buttonWidget(
                          context, "/GetAadharScreen", '')
                      : AadharTitle[index] == "update Aadhar"
                          ? tapController.buttonWidget(
                              context, "/UpdateAadharScreen", '')
                          : AadharTitle[index] == "Aadhar Service"
                              ? tapController.buttonWidget(
                                  context, "/AadharServiceScreen", '')
                              : AadharTitle[index] == "About Aadhar"
                                  ? tapController.buttonWidget(
                                      context, "/AboutAadharScreen", '')
                                  : AadharTitle[index] == "Download"
                                      ? tapController.buttonWidget(
                                          context, "/DownloadScreen", '')
                                      : const SizedBox();

                  // Get.to(() => LoanGuideScreen());
                });
                /*  AdharColor[index], "${AadharIcon[index]}", () {
                  AadharTitle[index] == "Get Aadhar"
                      ? Get.to(() => GetAadharScreen())
                      : AadharTitle[index] == "update Aadhar"
                          ? Get.to(() => UpdateAadharScreen())
                          : AadharTitle[index] == "Aadhar Service"
                              ? Get.to(() => AadharServiceScreen())
                              : AadharTitle[index] == "About Aadhar"
                                  ? Get.to(() => AboutAadharScreen())
                                  : AadharTitle[index] == "Download"
                                      ? Get.to(() => DownloadScreen())
                                      : const SizedBox();

                  // Get.to(() => LoanGuideScreen());
                });*/
              },
            ),
            banner.getBN("/AadharLoanScreen")
          ],
        ),
      ),
    );
  }
}
