import 'package:aadhar_loan_app/Widgets/Mediaquery/media.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Controller/Ad Controller/Native and Banner Ad Controller.dart';

class ClaimDetailScreen extends StatelessWidget {
  const ClaimDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, "Apply"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: ScreenMQ.fSize_20()),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColor.withOpacity(0.3),
                        borderRadius:
                            BorderRadius.circular(ScreenMQ.fSize_15())),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: ScreenMQ.fSize_20(),
                          right: ScreenMQ.fSize_20(),
                          top: ScreenMQ.fSize_20(),
                          bottom: ScreenMQ.fSize_20()),
                      child: Text(
                        """✤ Step 1: Login to the Unified Portal of Employees’ Provident Fund (https://unifiedportal.epfindia.gov.in/) and click on For employees, followed by UAN Member e-Sewa.

✤ Step 2: Enter UAN and password to log in to the portal.

✤ Step 3: Click on Manage on the top panel and then on KYC

✤ Step 4: On the next page, under Add KYC tab, provide your bank, PAN and Aadhaar, passport, driving license, election card and ration card details. Then click on submit. After submitting, you can find these details under Pending KYC tab. Once approved by the employer (which would generally take 15 days), it will be shown under Approved KYC tab.

✤ Linking of your Aadhaar to EPF account will help in faster withdrawal and transfer process and for that, the present employer should have approved and verified the KYC including the employees Aadhaar details.""",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: ScreenMQ.fSize_15()),
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenMQ.fSize_60()),
                  applyContainerWidget(context, "Copy Link", () {
                    ScaffoldMessenger.of(context).showSnackBar(snackdemo);
                    Clipboard.setData(const ClipboardData(text: "https://unifiedportal.epfindia.gov.in/"));
                    // https://unifiedportal.epfindia.gov.in/
                  }),
                  SizedBox(height: ScreenMQ.fSize_60()),
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
