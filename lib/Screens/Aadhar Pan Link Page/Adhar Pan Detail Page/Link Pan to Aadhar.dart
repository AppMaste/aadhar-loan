import 'package:aadhar_loan_app/Controller/Ad%20Controller/Button%20Controller/Button%20Controller.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Controller/Ad Controller/Native and Banner Ad Controller.dart';
import '../../../Widgets/Mediaquery/media.dart';
import 'Link  Pan To Aadhar  Detail.dart';

class LinkToPanAadharScreen extends StatelessWidget {
  LinkToPanAadharScreen({super.key});

  List list = [
    "Link By SMS",
    "Link Aadhar with Pan",
    "Check Link Status",
  ];

  List detail = [
    """Link By SMS 

 Step 1: Type a message in the format UIDPAN.
 
Step 2: Send the message to 56161 or 567678 from your registered mobile number.

Step 3: You will get a confirmation message about linking your aadhar with PAN.""",
    """Link Aadhar With PAN 

 You can link your PAN with Aadhaar by following process:

a) Open the Income Tax e-filing portal - https://incometaxindiaefiling.gov.in/

b) Register on it (if not already done). Your PAN (Permanent Account Number) will be your user id.

c) Log in by entering the User ID, password and date of birth.

d) A pop up window will appear, prompting you to link your PAN with Aadhaar. If not, go to ‘Profile Settings’ on Menu bar and click on ‘Link Aadhaar’.

e) Details such as name date of birth and gender will already be mentioned as per the PAN details.

f) Verify the PAN details on screen with the ones mentioned on your Aadhaar. Pls. note that if there is a mismatch, you need to get the same corrected in either of the documents.

g) If the details match, enter your Aadhaar number and click on the “link now” button.

h) A pop-up message will inform you that your Aadhaar has been successfully linked to your PAN

i) You may also visit https://www.utiitsl.com/ OR https://www.egov-nsdl.co.in/ to link your PAN and Aadhaar.
""",
    """Check Link Status Check your Aadhaar and Bank Account Linking Status in NPCI mapper.""",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, "Link To Pan Aadhar"),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: ScreenMQ.fSize_20()),
            child: Padding(
              padding: EdgeInsets.only(top: ScreenMQ.fSize_20()),
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenMQ.fSize_10(),
                        vertical: ScreenMQ.fSize_6()),
                    child: GestureDetector(
                      onTap: () {
                        tapController.buttonWidget(
                          context,
                          "/LinkPanToAadharDetailScreen",
                          [list[index], detail[index]],
                        );
                        /*Get.to(() => LinkPanToAadharDetailScreen(),
                            arguments: [list[index], detail[index]]);*/
                      },
                      child: Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(ScreenMQ.fSize_40()),
                          color: AppColor.withOpacity(0.3),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: ScreenMQ.fSize_17(),
                              horizontal: ScreenMQ.fSize_10()),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${list[index]}",
                                style: GoogleFonts.poppins(
                                    fontSize: ScreenMQ.fSize_15(),
                                    fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: AppColor,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          banner.getBN()
        ],
      ),
    );
  }
}
