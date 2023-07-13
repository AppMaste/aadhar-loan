import 'package:aadhar_loan_app/main.dart';
import 'package:facebook_audience_network/ad/ad_interstitial.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Widgets/widgets/Allwidget.dart';



TapController tapController = Get.put(TapController());

class TapController extends GetxController {
  Future<void> _launchURL(String url) async {
    late Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  Rx tapcounter = 1.obs;

  buttonWidget(BuildContext context, String page, var aa) async {
    if (firebasedata.value["C"] == tapcounter.value) {
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
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                ),
                backgroundColor: colorFromHex("#FFABA9"),
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                        width: 30,
                        height: 30,
                        child: CircularProgressIndicator(
                          color: Colors.black,
                        )),
                    Text(
                      "Ad is loading...",
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
      if (firebasedata.value[page]["I_A_T"] == 'admob') {
        InterstitialAd.load(
          adUnitId: firebasedata.value["I_A"],
          // adUnitId: "/6499/example/interstitial",
          request: const AdManagerAdRequest(),
          adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
            ad.show();
            Navigator.pop(context);
            page != 'stop' ? Get.toNamed(page, arguments: aa) : null;
            tapcounter.value = 1;
          }, onAdFailedToLoad: (error) {
            InterstitialAd.load(
              adUnitId: firebasedata.value["I_A"],
              // adUnitId: "/6499/example/interstitial",
              request: const AdManagerAdRequest(),
              adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
                ad.show();
                Navigator.pop(context);
                page != 'stop' ? Get.toNamed(page, arguments: aa) : null;
                tapcounter.value = 1;
              }, onAdFailedToLoad: (error) {
                Navigator.pop(context);
                page != 'stop' ? Get.toNamed(page, arguments: aa) : null;
                tapcounter.value = 1;
              }),
            );
          }),
        );
      }

      if (firebasedata.value[page]["I_A_T"] == 'fb') {
        FacebookInterstitialAd.loadInterstitialAd(
          placementId: firebasedata.value["I_F_B_A"],
          // placementId: "IMG_16_9_APP_INSTALL#2312433698835503_2650502525028617",
          listener: (result, value) {
            if (result == InterstitialAdResult.LOADED) {
              FacebookInterstitialAd.showInterstitialAd;
              Navigator.pop(context);
              page != 'stop' ? Get.toNamed(page, arguments: aa) : null;
              tapcounter.value = 1;
            }
            if (result == InterstitialAdResult.ERROR) {
              Navigator.pop(context);
              page != 'stop' ? Get.toNamed(page, arguments: aa) : null;
              tapcounter.value = 1;
            }
          },
        );
      }
      if (firebasedata.value[page]["I_A_T"] == "I_U") {
        _launchURL(firebasedata.value[page]["U"]);
        Future.delayed(
          const Duration(seconds: 2),
          () {
            Navigator.pop(context);
            page != 'stop' ? Get.toNamed(page, arguments: aa) : null;
            tapcounter.value = 1;
          },
        );
      }
    } else {
      // Get.to(() => const FirstPage());
      page != 'stop' ? Get.toNamed(page, arguments: aa) : null;
      tapcounter.value++;
      // controller.incrementClickCount(context, 'FirstPage');
    }
  }
}
