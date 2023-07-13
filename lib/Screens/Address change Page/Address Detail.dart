import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Controller/Ad Controller/Native and Banner Ad Controller.dart';
import '../../Models/Aadhar Address Model/Aadhar Address.dart';
import '../../Widgets/Mediaquery/media.dart';

class AadharAddressDetailScreen extends StatelessWidget {
  AadharAddressDetailScreen({super.key});

  AddressModel addressModel = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, "${addressModel.addressname}"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: ScreenMQ.fSize_20()),
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: AppColor.withOpacity(0.3),
                        borderRadius:
                            BorderRadius.circular(ScreenMQ.fSize_15())),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: ScreenMQ.fSize_20()),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: ScreenMQ.fSize_20(),
                                  right: ScreenMQ.fSize_20()),
                              child: Text(
                                addressModel.addressdetails,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(),
                              ),
                            ),
                            SizedBox(height: ScreenMQ.fSize_20()),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: ScreenMQ.fSize_40()),
                  applyContainerWidget(context, "Copy Link", () {
                    ScaffoldMessenger.of(context).showSnackBar(snackdemo);
                    Clipboard.setData(const ClipboardData(text: 'https://unifiedportal.epfindia.gov.in/'));
                  })
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
