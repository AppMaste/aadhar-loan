import 'dart:math';
import 'package:aadhar_loan_app/Widgets/Mediaquery/media.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../Controller/Ad Controller/Native and Banner Ad Controller.dart';

class EMICalculatorScreen extends StatelessWidget {
  EMICalculatorScreen({super.key});

  var principalController = TextEditingController().obs;
  var rateController = TextEditingController().obs;

  var TotalInterst = 0.0.obs;
  var TotalPrincipal = 0.obs;
  var TotalPayment = 0.0.obs;
  var EMI = 0.0.obs;

  var yearValue = '1 Year'.obs;
  var monthValue = '1 Month'.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, "EMI Calculator"),
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
                          "Principal Amount",
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
                        controller: principalController.value,
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
                    // emiTextFieldWidget(
                    //     context, "0", principalController.value, TextInputType.number, 10),
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
                    // emiTextFieldWidget(
                    //     context, "0", rateController, TextInputType.number, 2),
                    SizedBox(height: ScreenMQ.fSize_20()),
                    Row(
                      children: [
                        Text(
                          "Period*",
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
                      principalController.value.clear();
                      rateController.value.clear();
                      yearValue.value = "1 Year";
                      monthValue.value = "1 Month";
                    }, () {
                      if (principalController.value.text.isEmpty ||
                          rateController.value.text.isEmpty) {
                        alertWidget(context);
                      }
                      calculation();
                    }),
                    SizedBox(height: ScreenMQ.fSize_20()),
                    emiContainerWidget(
                        context,
                        NumberFormat.simpleCurrency(name: '')
                            .format(TotalInterst.value),
                        NumberFormat.simpleCurrency(name: '')
                            .format(TotalPrincipal.value),
                        NumberFormat.simpleCurrency(name: '')
                            .format(TotalPayment.value),
                        NumberFormat.simpleCurrency(name: '')
                            .format(EMI.value)),
                    SizedBox(height: ScreenMQ.fSize_60())
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
    int P = int.parse(principalController.value.text);
    double R = double.parse(rateController.value.text) / 12 / 100;
    int Y = int.parse(AA) * 12 + int.parse(MM);
    double M = double.parse(Y.toString());

    EMI.value = (P * R * pow((1 + R), M) / (pow((1 + R), M) - 1));

    TotalPrincipal.value = P;
    TotalPayment.value = EMI.value * M;
    TotalInterst.value = TotalPayment.value - P;

    print("EMIEMIEMI ${e}");
  }
}
