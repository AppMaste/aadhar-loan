// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:aadhar_loan_app/Controller/Ad%20Controller/Native%20and%20Banner%20Ad%20Controller.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../Controller/Ad Controller/Button Controller/Button Controller.dart';
import '../../../Widgets/Mediaquery/media.dart';

class GSTCalculatorScreen extends StatelessWidget {
  GSTCalculatorScreen({super.key});

  var amountController = TextEditingController().obs;
  var gstController = TextEditingController().obs;

  RxInt id = 1.obs;

  var GST = 0.0.obs;
  var Original = 0.0.obs;
  var Net = 0.0.obs;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/GSTCalculatorScreen");
        return Future(() => false);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: appBarWidget(context, "GST Calculator"),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: ScreenMQ.fSize_20()),
                    Row(
                      children: [
                        Text(
                          "Amount*",
                          style: GoogleFonts.poppins(),
                        ),
                      ],
                    ),
                    SizedBox(height: ScreenMQ.fSize_4()),
                    Padding(
                      padding: EdgeInsets.only(
                          left: ScreenMQ.fSize_10(),
                          right: ScreenMQ.fSize_10()),
                      child: TextFormField(
                        controller: amountController.value,
                        cursorColor: AppColor,
                        style: GoogleFonts.poppins(
                            color: AppColor, fontSize: ScreenMQ.fSize_13()),
                        keyboardType: TextInputType.number,
                        maxLength: 10,
                        decoration: InputDecoration(
                          counterText: '',
                          hintText: 'Original Amount',
                          filled: true,
                          fillColor: AppColor.withOpacity(0.3),
                          border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: AppColor.withOpacity(0.9))),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: AppColor.withOpacity(0.9))),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColor.withOpacity(0.9),
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenMQ.fSize_10()),
                    Row(
                      children: [
                        Text(
                          "GST Rate*",
                          style: GoogleFonts.poppins(),
                        ),
                      ],
                    ),
                    SizedBox(height: ScreenMQ.fSize_4()),
                    Padding(
                      padding: EdgeInsets.only(
                          left: ScreenMQ.fSize_10(),
                          right: ScreenMQ.fSize_10()),
                      child: TextFormField(
                        controller: gstController.value,
                        cursorColor: AppColor,
                        style: GoogleFonts.poppins(
                            color: AppColor, fontSize: ScreenMQ.fSize_13()),
                        keyboardType: TextInputType.number,
                        maxLength: 10,
                        decoration: InputDecoration(
                          counterText: '',
                          hintText: '0',
                          filled: true,
                          fillColor: AppColor.withOpacity(0.3),
                          border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: AppColor.withOpacity(0.9))),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: AppColor.withOpacity(0.9))),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColor.withOpacity(0.9),
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenMQ.fSize_20()),
                    Obx(() =>
                        genderWidget(context, id, "Add GST", "Remove GST")),
                    SizedBox(height: ScreenMQ.fSize_20()),
                    calculateContainerWidget(context, "Reset", "Calculate", () {
                      amountController.value.clear();
                      gstController.value.clear();
                      id.value = 1;
                    }, () {
                      if (amountController.value.text.isEmpty ||
                          gstController.value.text.isEmpty) {
                        alertWidget(context);
                      }
                      calculation();
                    }),
                    SizedBox(height: ScreenMQ.fSize_20()),
                    Obx(
                          () =>
                          Container(
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: AppColor.withOpacity(0.3),
                              borderRadius:
                              BorderRadius.circular(ScreenMQ.fSize_15()),
                              border: Border.all(color: AppColor),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: ScreenMQ.fSize_20()),
                                Padding(
                                  padding:
                                  EdgeInsets.only(left: ScreenMQ.fSize_20()),
                                  child: Row(
                                    children: [
                                      Text(
                                        "GST Prince",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: ScreenMQ.fSize_15()),
                                      ),
                                      SizedBox(width: ScreenMQ.fSize_60()),
                                      Container(
                                        width: ScreenMQ.fSize_100(),
                                        color: Colors.transparent,
                                        child: Text(
                                          NumberFormat.simpleCurrency(name: '')
                                              .format(GST.value),
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.poppins(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: ScreenMQ.fSize_15()),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: ScreenMQ.fSize_10()),
                                  child: Divider(thickness: 1, color: AppColor),
                                ),
                                SizedBox(height: ScreenMQ.fSize_10()),
                                Padding(
                                  padding:
                                  EdgeInsets.only(left: ScreenMQ.fSize_20()),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Original Price",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: ScreenMQ.fSize_15()),
                                      ),
                                      SizedBox(width: ScreenMQ.fSize_40()),
                                      Container(
                                        width: ScreenMQ.fSize_100(),
                                        color: Colors.transparent,
                                        child: Text(
                                          NumberFormat.simpleCurrency(name: '')
                                              .format(Original.value),
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.poppins(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: ScreenMQ.fSize_10()),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: ScreenMQ.fSize_10()),
                                  child: Divider(thickness: 1, color: AppColor),
                                ),
                                SizedBox(height: ScreenMQ.fSize_10()),
                                Padding(
                                  padding:
                                  EdgeInsets.only(left: ScreenMQ.fSize_20()),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Net Prince",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: ScreenMQ.fSize_15()),
                                      ),
                                      SizedBox(width: ScreenMQ.fSize_60()),
                                      Container(
                                        width: ScreenMQ.fSize_100(),
                                        color: Colors.transparent,
                                        child: Text(
                                          NumberFormat.simpleCurrency(name: '')
                                              .format(Net.value),
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.poppins(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: ScreenMQ.fSize_10()),
                              ],
                            ),
                          ),
                    ),
                  ],
                ),
              ),
              banner.getBN("/GSTCalculatorScreen")
            ],
          ),
        ),
      ),
    );
  }

  calculation() {
    int Amount = int.parse(amountController.value.text);
    double Rate = double.parse(gstController.value.text);

    // GST.value = Amount * Rate / 100;
    GST.value = id.value == 1
        ? (Amount * (Rate / 100))
        : (Amount - (Amount * (100 / (100 + Rate))));
    Original.value = id.value == 1
        ? (double.parse(Amount.toString()) + GST.value)
        : (double.parse(Amount.toString()) - GST.value);
    Net.value = double.parse(Amount.toString());
  }
}
