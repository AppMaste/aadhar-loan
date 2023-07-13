import 'dart:convert';

import 'package:aadhar_loan_app/Controller/Ad%20Controller/Button%20Controller/Button%20Controller.dart';
import 'package:aadhar_loan_app/Models/Bank%20Info%20Model/Bank%20Info.dart';
import 'package:aadhar_loan_app/Screens/Bank%20Info%20Page/Bank%20Info%20Detail.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../Controller/Ad Controller/Native and Banner Ad Controller.dart';
import '../../Widgets/Mediaquery/media.dart';

class BankInfoScreen extends StatelessWidget {
  const BankInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, "Bank Info"),
      body: Center(
        child: FutureBuilder(
          future:
              DefaultAssetBundle.of(context).loadString("assets/banklist.json"),
          builder: (context, snapshot) {
            var jsondata = json.decode(snapshot.data.toString());
            if (snapshot.hasData) {
              return Users(jsondata);
            } else {
              return const Text("No data");
            }
          },
        ),
      ),
    );
  }

  // user.data![indexs].bankName.toString()
  Widget Users(users) {
    BanklistModel user = BanklistModel.fromJson(users);
    return Stack(
      children: [
        Padding(
            padding: EdgeInsets.only(
                top: ScreenMQ.fSize_20(), bottom: ScreenMQ.fSize_60()),
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: user.data!.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      tapController.buttonWidget(
                        context,
                        "/BankInfoDetailScreen",
                        [
                          user.data![index].bankName,
                          user.data![index].balanceNumber,
                          user.data![index].miniNumber,
                          user.data![index].careNumber,
                        ],
                      );
                      Get.to(
                        () => BankInfoDetailScreen(),
                        arguments: [
                          user.data![index].bankName,
                          user.data![index].balanceNumber,
                          user.data![index].miniNumber,
                          user.data![index].careNumber,
                        ],
                      );
                    },
                    child: Container(
                      height: ScreenMQ.horizontalBlockSize! * 18,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: AppColor.withOpacity(0.3),
                          // color: InfoBoxColor[index],
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(ScreenMQ.fSize_40()),
                              bottomLeft: Radius.circular(ScreenMQ.fSize_20()),
                              bottomRight:
                                  Radius.circular(ScreenMQ.fSize_20()))),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: ScreenMQ.horizontalBlockSize! * 15,
                              width: ScreenMQ.horizontalBlockSize! * 15,
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Center(
                                child: Text(
                                  user.data![index].bankName![0].toString(),
                                  style: GoogleFonts.poppins(
                                      fontSize:
                                          ScreenMQ.horizontalBlockSize! * 7,
                                      color: AppColor,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: ScreenMQ.fSize_15(),
                                    left: ScreenMQ.fSize_20()),
                                child: Container(
                                  width: ScreenMQ.horizontalBlockSize! * 70,
                                  color: Colors.transparent,
                                  child: Text(
                                    user.data![index].bankName.toString(),
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: ScreenMQ.fSize_18()),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Container(
                  child: (index + 1) % 15 == 2
                      ? FutureBuilder(
                          builder: (context, snapshot) {
                            return snapshot.connectionState ==
                                    ConnectionState.done
                                ? Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey,
                                                    offset: Offset(1, 2),
                                                    blurRadius: 5)
                                              ]),
                                          height: listsize,
                                          child: AdWidget(
                                            ad: snapshot.data,
                                            key: Key(index.toString()),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 10,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              boxShadow: const [
                                                BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 25.0,
                                                )
                                              ],
                                              color: Colors.deepOrange.shade300,
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(10),
                                                      bottomRight:
                                                          Radius.circular(10))),
                                          height: ScreenMQ.fSize_16(),
                                          width: ScreenMQ.fSize_34(),
                                          child: Center(
                                              child: Text(
                                            "Ad",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: ScreenMQ.fSize_10()),
                                          )),
                                        ),
                                      ),
                                    ],
                                  )
                                : Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: listsize,
                                          decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey,
                                                    offset: Offset(1, 2),
                                                    blurRadius: 5)
                                              ]),
                                          child: Center(
                                            child: Text(
                                              "Ad is Loading.......",
                                              style: GoogleFonts.poppins(
                                                  fontSize: ScreenMQ.fSize_20(),
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 10,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              boxShadow: const [
                                                BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 25.0,
                                                )
                                              ],
                                              color: Colors.deepOrange.shade300,
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(10),
                                                      bottomRight:
                                                          Radius.circular(10))),
                                          height: ScreenMQ.fSize_16(),
                                          width: ScreenMQ.fSize_34(),
                                          child: Center(
                                              child: Text(
                                            "Ad",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: ScreenMQ.fSize_10()),
                                          )),
                                        ),
                                      ),
                                    ],
                                  );
                          },
                          future: native.getData(),
                        )
                      : Container(),
                );
              },
            )
            /*child: ListView.builder(
            itemCount: user.data!.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    tapController.buttonWidget(
                      context,
                      "/BankInfoDetailScreen",
                      [
                        user.data![index].bankName,
                        user.data![index].balanceNumber,
                        user.data![index].miniNumber,
                        user.data![index].careNumber,
                      ],
                    );
          Get.to(
                      () => BankInfoDetailScreen(),
                      arguments: [
                        user.data![index].bankName,
                        user.data![index].balanceNumber,
                        user.data![index].miniNumber,
                        user.data![index].careNumber,
                      ],
                    );
                  },
                  child: Container(
                    height: ScreenMQ.horizontalBlockSize! * 18,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: AppColor.withOpacity(0.3),
                        // color: InfoBoxColor[index],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(ScreenMQ.fSize_40()),
                            bottomLeft: Radius.circular(ScreenMQ.fSize_20()),
                            bottomRight: Radius.circular(ScreenMQ.fSize_20()))),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: ScreenMQ.horizontalBlockSize! * 15,
                            width: ScreenMQ.horizontalBlockSize! * 15,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                user.data![index].bankName![0].toString(),
                                style: GoogleFonts.poppins(
                                    fontSize: ScreenMQ.horizontalBlockSize! * 7,
                                    color: AppColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: ScreenMQ.fSize_15(),
                                  left: ScreenMQ.fSize_20()),
                              child: Container(
                                width: ScreenMQ.horizontalBlockSize! * 70,
                                color: Colors.transparent,
                                child: Text(
                                  user.data![index].bankName.toString(),
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: ScreenMQ.fSize_18()),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),*/
            ),
        banner.getBN()
      ],
    );
  }
}
