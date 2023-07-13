import 'package:aadhar_loan_app/Controller/Ad%20Controller/Button%20Controller/Button%20Controller.dart';
import 'package:aadhar_loan_app/Screens/Aadhar%20Pan%20Link%20Page/Adhar%20Pan%20Detail%20Page/Aadhar%20pan%20detail.dart';
import 'package:aadhar_loan_app/Screens/Aadhar%20Pan%20Link%20Page/Adhar%20Pan%20Detail%20Page/Important%20Question.dart';
import 'package:aadhar_loan_app/Screens/Aadhar%20Pan%20Link%20Page/Adhar%20Pan%20Detail%20Page/Link%20Pan%20to%20Aadhar.dart';
import 'package:aadhar_loan_app/Screens/Address%20change%20Page/Address%20Detail.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controller/Ad Controller/Native and Banner Ad Controller.dart';
import '../../Models/Aadhar Pan Link Model/Aadhar Pan Link.dart';

class AadharPanLinkScreen extends StatelessWidget {
  const AadharPanLinkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, "Aadhar Pan Link"),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: LinkTitle.length,
            itemBuilder: (context, index) {
              return secondContainerWidget(context, "${LinkTitle[index]}",
                  LinkColor[index], "${LinkIcon[index]}", () {
                LinkTitle[index] == "Aadhar Pan Info"
                    ? tapController.buttonWidget(
                        context, "/AadharPanDetailScreen", LinkTitle[index])
                    // Get.to(() => AadharPanDetailScreen(),
                    //         arguments: LinkTitle[index])
                    : LinkTitle[index] == "Why Link Requires?"
                        ? tapController.buttonWidget(
                            context, "/AadharPanDetailScreen", LinkTitle[index])
                        // Get.to(() => AadharPanDetailScreen(),
                        //             arguments: LinkTitle[index])
                        : LinkTitle[index] == "Link Pan to Aadhar"
                            ? tapController.buttonWidget(
                                context, "/LinkToPanAadharScreen", "")
                            // Get.to(() => LinkToPanAadharScreen())
                            : LinkTitle[index] == "Important Question"
                                ? tapController.buttonWidget(
                                    context, "/ImportantQuestionScreen", "")
                                // Get.to(() => ImportantQuestionScreen())
                                : const SizedBox();
              });
            },
          ),
          banner.getBN()
        ],
      ),
    );
  }
}
