import 'dart:math';

import 'package:aadhar_loan_app/Controller/Ad%20Controller/Native%20and%20Banner%20Ad%20Controller.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../Widgets/Mediaquery/media.dart';

class SIPCalculateScreen extends StatelessWidget {
  SIPCalculateScreen({super.key});

  var depositController = TextEditingController().obs;
  var rateController = TextEditingController().obs;

  var yearValue = '1 Year'.obs;
  var monthValue = '1 Month'.obs;

  // List of items in our dropdown menu
  var year = [
    '1 Year',
    '2 Year',
    '3 Year',
    '4 Year',
    '5 Year',
    '6 Year',
    '7 Year',
    '8 Year',
    '9 Year',
    '10 Year',
    '11 Year',
    '12 Year',
    '13 Year',
    '14 Year',
    '15 Year',
    '16 Year',
    '17 Year',
    '18 Year',
    '19 Year',
    '20 Year',
    '21 Year',
    '22 Year',
    '23 Year',
    '24 Year',
    '25 Year',
    '26 Year',
    '27 Year',
    '28 Year',
    '29 Year',
    '30 Year',
    '31 Year',
    '32 Year',
    '33 Year',
    '34 Year',
    '35 Year',
    '36 Year',
    '37 Year',
    '38 Year',
    '39 Year',
    '40 Year',
    '41 Year',
    '42 Year',
    '43 Year',
    '44 Year',
    '45 Year',
    '46 Year',
    '47 Year',
    '48 Year',
    '49 Year',
    '50 Year',
  ].obs;
  var month = [
    '0 Month',
    '1 Month',
    '2 Month',
    '3 Month',
    '4 Month',
    '5 Month',
    '6 Month',
    '7 Month',
    '8 Month',
    '9 Month',
    '10 Month',
    '11 Month',
  ].obs;

  var investment = 0.0.obs;
  var interest = 0.0.obs;
  var sip = 0.0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    calculateContainerWidget(context, "Reset", "Calculate", () {
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
                            padding: EdgeInsets.only(left: ScreenMQ.fSize_10()),
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
                            padding: EdgeInsets.only(left: ScreenMQ.fSize_10()),
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
                            padding: EdgeInsets.only(left: ScreenMQ.fSize_10()),
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
            banner.getBN()
          ],
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
