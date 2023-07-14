import 'package:aadhar_loan_app/Controller/Ad%20Controller/Button%20Controller/Button%20Controller.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../Controller/Ad Controller/Native and Banner Ad Controller.dart';
import '../../../Models/Aadhar Loan Model/Aadhar loan.dart';
import '../../../Widgets/Mediaquery/media.dart';

class ImportantQuestionScreen extends StatelessWidget {
  const ImportantQuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/ImportantQuestionScreen");
        return Future(() => false);
      },
      child: Scaffold(
        appBar: appBarWidget(context, "Important Question"),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: ScreenMQ.fSize_20(), bottom: ScreenMQ.fSize_60()),
              child: ListView.builder(
                itemCount: importantname.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenMQ.fSize_10(),
                        vertical: ScreenMQ.fSize_6()),
                    child: GestureDetector(
                      onTap: () {
                        tapController.buttonWidget(
                            context,
                            "/ImportantQuestionDetailScreen",
                            importantdetail[index]);
                        /*Get.to(() => ImportantQuestionDetailScreen(),
                            arguments: importantdetail[index]);*/
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
                              Container(
                                width: ScreenMQ.horizontalBlockSize! * 80,
                                color: Colors.transparent,
                                child: Text(
                                  "${importantname[index]}",
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.poppins(
                                      fontSize: ScreenMQ.fSize_15(),
                                      fontWeight: FontWeight.w500),
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
            ),
            banner.getBN("/ImportantQuestionScreen")
          ],
        ),
      ),
    );
  }
}
