// ignore_for_file: must_be_immutable

import 'package:aadhar_loan_app/Controller/Ad%20Controller/Button%20Controller/Button%20Controller.dart';
import 'package:aadhar_loan_app/Models/Instant%20loan%20model/intant%20loan.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Controller/Ad Controller/Native and Banner Ad Controller.dart';
import '../../Widgets/Mediaquery/media.dart';

class InstantLoanScreen extends StatelessWidget {
  InstantLoanScreen({super.key});

  late InstantModel instantModel;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/InstantLoanScreen");
        return Future(() => false);
      },
      child: Scaffold(
        appBar: appBarWidget(context, "Instant Loan"),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: ScreenMQ.fSize_10(),
                  right: ScreenMQ.fSize_10(),
                  top: ScreenMQ.fSize_20(),
                  bottom: ScreenMQ.fSize_60()),
              child: GridView.builder(
                itemCount: Instantname.length - 1,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 19 / 15,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Instantdetails[index] != ""
                          ? tapController.buttonWidget(
                              context,
                              "/InstantDetailScreen",
                              [
                                Instantname[index],
                                Instantdetails[index],
                              ],
                            )
                          /*Get.to(() => InstantDetailScreen(), arguments: [
                              Instantname[index],
                              Instantdetails[index],
                            ])*/
                          : Instantname2[index] == ""
                              ? tapController.buttonWidget(
                                  context,
                                  "/ClamScreen",
                                  Instantname[index],
                                )
                              /* Get.to(() => ClamScreen(),
                                  arguments: Instantname[index])*/
                              : tapController.buttonWidget(
                                  context, "/BalanceOnlineScreen", '');
                      // Get.to(() => BalanceOnlineScreen());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: colorFromHex(
                            Instantboxcolor[index],
                          ),
                          // color: InstantColor[index],
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(ScreenMQ.fSize_70()),
                            bottomRight: Radius.circular(ScreenMQ.fSize_30()),
                            bottomLeft: Radius.circular(ScreenMQ.fSize_30()),
                          )),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: ScreenMQ.horizontalBlockSize! * 21,
                              width: ScreenMQ.horizontalBlockSize! * 21,
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Image.asset(
                                Instanticon[index],
                                scale: 1.3,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: ScreenMQ.fSize_70(),
                                left: ScreenMQ.fSize_10()),
                            child: Text(
                              Instantname[index],
                              style: GoogleFonts.poppins(
                                  fontSize: ScreenMQ.fSize_18(),
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            banner.getBN("/InstantLoanScreen")
          ],
        ),
      ),
    );
  }
}
