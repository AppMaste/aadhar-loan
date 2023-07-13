import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Controller/Ad Controller/Native and Banner Ad Controller.dart';
import '../../Models/Near By Me Model/Near By Me.dart';
import '../../Widgets/Mediaquery/media.dart';

class NearByMeScreen extends StatelessWidget {
  const NearByMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, "Near By Me"),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: ScreenMQ.fSize_10(),bottom: ScreenMQ.fSize_60()),
            child: ListView.builder(
              itemCount: NearTitle.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) {
                          return WillPopScope(
                            onWillPop: () {
                              return Future.value(false);
                            },
                            child: Center(
                              child: AlertDialog(
                                backgroundColor: AppColor,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20)),
                                ),
                                title: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                        width: ScreenMQ.fSize_38(),
                                        height: ScreenMQ.fSize_38(),
                                        child: CircularProgress(context)),
                                    const Text("Please wait..."),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                      Future.delayed(
                        const Duration(seconds: 3),
                        () {
                          Navigator.pop(context);
                          launchMapsUrl(NearTitle[index]);
                        },
                      );
                      // Get.to(() => BankInfoDetailScreen(),
                      //     arguments: InfoTitle[index]);
                    },
                    child: Container(
                      height: ScreenMQ.horizontalBlockSize! * 18,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: NeatColor[index],
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
                                child: Image.asset(
                                  NearIcon[index],
                                  scale: 1.7,
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
                                child: Text(
                                  NearTitle[index],
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: ScreenMQ.fSize_18()),
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
            ),
          ),
          banner.getBN()
        ],
      ),
    );
  }

  void launchMapsUrl(String lat) async {
    final url = 'https://www.google.com/maps/search/?api=1&query=$lat near me';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
