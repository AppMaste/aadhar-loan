// ignore_for_file: must_be_immutable, invalid_use_of_protected_member, non_constant_identifier_names

import 'dart:math';
import 'package:aadhar_loan_app/Controller/Ad%20Controller/Native%20and%20Banner%20Ad%20Controller.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../../Controller/Ad Controller/Button Controller/Button Controller.dart';
import '../../../Widgets/Mediaquery/media.dart';

class SIPCalculateScreen extends StatelessWidget {
  SIPCalculateScreen({super.key});

  var depositController = TextEditingController().obs;
  var rateController = TextEditingController().obs;

  var yearValue = '1 Year'.obs;
  var monthValue = '1 Month'.obs;

  var investment = 0.0.obs;
  var interest = 0.0.obs;
  var sip = 0.0.obs;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/SIPCalculateScreen");
        return Future(() => false);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: appBarWidget(context, "SIP Calculator"),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Obx(
                  () => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: ScreenMQ.fSize_20()),
                      Row(
                        children: [
                          Text(
                            "Regular Monthly Deposit",
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
                          controller: depositController.value,
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
                                borderSide: BorderSide(
                                    color: AppColor.withOpacity(0.9))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColor.withOpacity(0.9))),
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
                      Row(
                        children: [
                          Text(
                            "Rate of Interest",
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
                          controller: rateController.value,
                          cursorColor: AppColor,
                          style: GoogleFonts.poppins(
                              color: AppColor, fontSize: ScreenMQ.fSize_13()),
                          keyboardType: TextInputType.number,
                          maxLength: 2,
                          decoration: InputDecoration(
                            counterText: '',
                            hintText: "0",
                            filled: true,
                            fillColor: AppColor.withOpacity(0.3),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColor.withOpacity(0.9))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColor.withOpacity(0.9))),
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
                      Row(
                        children: [
                          Text(
                            "Tenure*",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: ScreenMQ.fSize_20()),
                          ),
                        ],
                      ),
                      SizedBox(height: ScreenMQ.fSize_10()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: ScreenMQ.fSize_60(),
                            width: ScreenMQ.fSize_150(),
                            decoration: BoxDecoration(
                                color: AppColor.withOpacity(0.3),
                                borderRadius:
                                    BorderRadius.circular(ScreenMQ.fSize_40()),
                                border: Border.all(color: AppColor)),
                            child: Center(
                              child: DropdownButton(
                                borderRadius: BorderRadius.circular(0),
                                disabledHint: Container(),
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: ScreenMQ.fSize_15(),
                                    fontWeight: FontWeight.w500),
                                value: yearValue.value,
                                underline: Container(),
                                iconSize: 0,
                                enableFeedback: false,
                                dropdownColor: AppColor,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: year.value.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  yearValue.value = newValue!;
                                },
                              ),
                            ),
                          ),
                          Container(
                            height: ScreenMQ.fSize_60(),
                            width: ScreenMQ.fSize_150(),
                            decoration: BoxDecoration(
                                color: AppColor.withOpacity(0.3),
                                borderRadius:
                                    BorderRadius.circular(ScreenMQ.fSize_40()),
                                border: Border.all(color: AppColor)),
                            child: Center(
                              child: DropdownButton(
                                borderRadius: BorderRadius.circular(0),
                                disabledHint: Container(),
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: ScreenMQ.fSize_15(),
                                    fontWeight: FontWeight.w500),
                                value: monthValue.value,
                                underline: Container(),
                                iconSize: 0,
                                enableFeedback: false,
                                dropdownColor: AppColor,
                                icon: const Icon(Icons.keyboard_arrow_down),

                                // Array list of items
                                items: month.value.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  monthValue.value = newValue!;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: ScreenMQ.fSize_20()),
                      calculateContainerWidget(context, "Reset", "Calculate",
                          () {
                        depositController.value.clear();
                        rateController.value.clear();
                        yearValue.value = "1 Year";
                        monthValue.value = "1 Month";
                      }, () {
                        if (depositController.value.text.isEmpty ||
                            rateController.value.text.isEmpty) {
                          alertWidget(context);
                        }
                        calculation();
                      }),
                      SizedBox(height: ScreenMQ.fSize_20()),
                      Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: AppColor.withOpacity(0.3),
                            border: Border.all(color: AppColor),
                            borderRadius:
                                BorderRadius.circular(ScreenMQ.fSize_20())),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: ScreenMQ.fSize_20()),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: ScreenMQ.fSize_10()),
                              child: Container(
                                width: ScreenMQ.horizontalBlockSize! * 45,
                                color: Colors.transparent,
                                child: Text(
                                  "Investment Amount\n${NumberFormat.simpleCurrency(name: '').format(investment.value)}",
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.poppins(
                                      fontSize: ScreenMQ.fSize_15()),
                                ),
                              ),
                            ),
                            SizedBox(height: ScreenMQ.fSize_10()),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: ScreenMQ.fSize_10()),
                              child: Divider(color: AppColor, thickness: 1),
                            ),
                            SizedBox(height: ScreenMQ.fSize_10()),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: ScreenMQ.fSize_10()),
                              child: Container(
                                width: ScreenMQ.horizontalBlockSize! * 40,
                                color: Colors.transparent,
                                child: Text(
                                  "Total Interest\n${NumberFormat.simpleCurrency(name: '').format(interest.value)}",
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.poppins(
                                      fontSize: ScreenMQ.fSize_15()),
                                ),
                              ),
                            ),
                            SizedBox(height: ScreenMQ.fSize_10()),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: ScreenMQ.fSize_10()),
                              child: Divider(color: AppColor, thickness: 1),
                            ),
                            SizedBox(height: ScreenMQ.fSize_10()),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: ScreenMQ.fSize_10()),
                              child: Container(
                                width: ScreenMQ.horizontalBlockSize! * 60,
                                color: Colors.transparent,
                                child: Text(
                                  "SIP Maturity Amount\n${NumberFormat.simpleCurrency(name: '').format(sip.value)}",
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.poppins(
                                      fontSize: ScreenMQ.fSize_15()),
                                ),
                              ),
                            ),
                            SizedBox(height: ScreenMQ.fSize_20()),
                          ],
                        ),
                      ),
                      SizedBox(height: ScreenMQ.fSize_60()),
                    ],
                  ),
                ),
              ),
              banner.getBN("/SIPCalculateScreen")
            ],
          ),
        ),
      ),
    );
  }

  calculation() {
    var AA = yearValue.value.replaceAll("Year", '');
    var MM = monthValue.value.replaceAll("Month", '');
    int A = int.parse(depositController.value.text);
    double R = double.parse(rateController.value.text) / 12 / 100;
    int Y = int.parse(AA) * 12 + int.parse(MM);

    var IA = A * ((pow((1 + R), (Y)) - 1) / R) * (1 + R);
    investment.value = double.parse((A * Y).toString());
    interest.value = IA - investment.value;
    sip.value = investment.value + interest.value;
  }
}
