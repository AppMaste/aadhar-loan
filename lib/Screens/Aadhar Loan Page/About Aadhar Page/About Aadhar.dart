import 'package:aadhar_loan_app/Controller/Ad%20Controller/Button%20Controller/Button%20Controller.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../Controller/Ad Controller/Native and Banner Ad Controller.dart';
import '../../../Models/Aadhar Loan Model/About Aadhar.dart';
import '../../../Widgets/Mediaquery/media.dart';

class AboutAadharScreen extends StatelessWidget {
  const AboutAadharScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/AboutAadharScreen");
        return Future(() => false);
      },
      child: Scaffold(
        appBar: appBarWidget(context, "About Aadhar"),
        body: Stack(
          children: [
            ListView.builder(
              itemCount: AboutTitle.length,
              padding: EdgeInsets.only(bottom: ScreenMQ.fSize_70()),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                      top: ScreenMQ.fSize_20(),
                      left: ScreenMQ.fSize_10(),
                      right: ScreenMQ.fSize_10()),
                  child: GestureDetector(
                    onTap: () {
                      tapController.buttonWidget(
                        context,
                        "/AboutAadharDetailScreen",
                        [
                          AboutTitle[index],
                          AboutDetail[index],
                          AboutLink[index],
                        ],
                      );
                      /*  Get.to(() => AboutAadharDetailScreen(), arguments: [
                        AboutTitle[index],
                        AboutDetail[index],
                        AboutLink[index],
                      ]);*/
                    },
                    child: Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: AppColor.withOpacity(0.3),
                        borderRadius:
                            BorderRadius.circular(ScreenMQ.fSize_40()),
                        border: Border.all(color: AppColor),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(right: ScreenMQ.fSize_10()),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: ScreenMQ.fSize_13(),
                                  bottom: ScreenMQ.fSize_13(),
                                  left: ScreenMQ.fSize_10()),
                              child: Text(
                                AboutTitle[index],
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: ScreenMQ.fSize_15()),
                              ),
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
            banner.getBN("/AboutAadharScreen")
          ],
        ),
      ),
    );
  }
}
