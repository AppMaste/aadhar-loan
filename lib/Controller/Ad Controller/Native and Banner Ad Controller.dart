// ignore_for_file: invalid_use_of_protected_member

import 'dart:async';

import 'package:aadhar_loan_app/Widgets/Mediaquery/media.dart';
import 'package:aadhar_loan_app/main.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/material.dart';

import '../../Widgets/widgets/Allwidget.dart';

final nativeee = Get.put(NativeAD());
final native = Get.put(GetNative());
final banner = Get.put(BannerAD());

class GetNative {
  Future<dynamic> getData() {
    NativeAd? ads;
    final completer = Completer();
    ads = NativeAd(
      adUnitId: firebasedata.value[Get.currentRoute]["N_A"],
      // adUnitId: "/6499/example/native",
      factoryId: "listTile",
      request: const AdManagerAdRequest(),
      listener: NativeAdListener(
          onAdLoaded: (ad) {
            completer.complete(ads);
          },
          onAdFailedToLoad: (ad, error) {}),
    )..load();
    // return Future.delayed(Duration(seconds: 2));
    return completer.future;
  }
}

class NativeAD extends GetxController {
  Future<void> _launchURL(String url) async {
    late Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  Widget getNT(String factoryId) {
    NativeAd? nativeAd;
    var isLoaded = false.obs;
    if (firebasedata.value[Get.currentRoute]["N_A_T"] == "admob") {
      nativeAd = NativeAd(
        request: const AdManagerAdRequest(),
        adUnitId: firebasedata.value[Get.currentRoute]["N_A"],
        // adUnitId: "/6499/example/native",
        listener: NativeAdListener(onAdLoaded: (ad) {
          nativeAd!.load();
          isLoaded.value = true;
          // print("Native ad Loaded");
        }, onAdFailedToLoad: (ad, error) {
          // print("Native ad Failed to Load");
        }),
        // factoryId: wantSmallNativeAd ? "listTile" : "listTileMedium",
        factoryId: factoryId,
      );
      nativeAd.load();
    }
    return firebasedata.value[Get.currentRoute]["N_A_T"] == "admob"
        ? Obx(() => (isLoaded.value)
            ? factoryId == "listTile"
                ? Stack(
                    children: [
                      Container(
                        height: ScreenMQ.fSize_160(),
                        width: ScreenMQ.fSize_350(),
                        // color: Colors.green,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(1, 1),
                              color: Colors.black26,
                              blurRadius: 5,
                            )
                          ],
                        ),
                        child: AdWidget(
                          ad: nativeAd!,
                        ),
                        // color: Colors.blue,
                      ),
                    ],
                  )
                : Stack(
                    children: [
                      Container(
                        height: ScreenMQ.fSize_250(),
                        width: ScreenMQ.fSize_350(),
                        // color: Colors.green,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(1, 1),
                              color: Colors.black26,
                              blurRadius: 5,
                            )
                          ],
                        ),
                        child: AdWidget(
                          ad: nativeAd!,
                        ),
                        // color: Colors.blue,
                      ),
                    ],
                  )
            : factoryId == "listTile"
                ? Container(
                    height: ScreenMQ.fSize_150(),
                    width: ScreenMQ.fSize_350(),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(1, 1),
                          color: Colors.black26,
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : Container(
                    height: ScreenMQ.fSize_250(),
                    width: ScreenMQ.fSize_350(),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(1, 1),
                          color: Colors.black26,
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ))
        : firebasedata.value[Get.currentRoute]["N_A_T"] == "fb"
            ? Container(
                height: factoryId == "listTile"
                    ? ScreenMQ.fSize_150()
                    : ScreenMQ.fSize_250(),
                width: ScreenMQ.fSize_350(),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 25.0,
                    )
                  ],
                ),
                child: FacebookNativeAd(
                  // placementId: "YOUR_PLACEMENT_ID",
                  placementId: firebasedata.value["N_F_B_A"],
                  // placementId:
                  //     "IMG_16_9_APP_INSTALL#2312433698835503_2964953543583512",
                  adType: NativeAdType.NATIVE_AD,
                  height: factoryId == "listTile"
                      ? ScreenMQ.fSize_150()
                      : ScreenMQ.fSize_250(),
                  width: ScreenMQ.fSize_350(),
                  backgroundColor: Colors.white,
                  titleColor: Colors.black,
                  descriptionColor: Colors.grey,
                  buttonColor: AppColor.withOpacity(0.4),
                  buttonTitleColor: Colors.black,
                  buttonBorderColor: AppColor,
                  listener: (result, value) {
                    // print("Native Banner Ad: $result --> $value");
                  },
                ),
              )
            : firebasedata.value[Get.currentRoute]["N_A_T"] == "null"
                ? Container()
                : GestureDetector(
                    onTap: () {
                      _launchURL(firebasedata.value[Get.currentRoute]["U"]);
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: factoryId == "listTile"
                              ? ScreenMQ.fSize_150()
                              : ScreenMQ.fSize_250(),
                          width: ScreenMQ.fSize_350(),
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(firebasedata
                                      .value[Get.currentRoute]["I_U"]))),
                        ),
                        Positioned(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(ScreenMQ.fSize_2()))),
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
                    ),
                  );
  }
}

class BannerAD extends GetxController {
  late BannerAd bannerAd;
  int a = 1;

  // var bannerLoaded = false.obs;

  Widget getBN(String page) {
    if (firebasedata.value["B_A_T"] == "admob") {
      bannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: firebasedata.value["B_A"],
        // adUnitId: "ca-app-pub-3940256099942544/6300978111",
        listener: BannerAdListener(
            onAdLoaded: (ad) {
              // print("Banner ad Loaded${a++}");
            },
            onAdFailedToLoad: (ad, error) {}),
        request: const AdRequest(),
      );
      bannerAd.load();
    }

    return firebasedata.value["B_A_T"] == "admob"
        ? Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              // color: Colors.redAccent,
              height: 50,
              child: AdWidget(
                ad: bannerAd,
              ),
            ),
          )
        : Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              // color: Colors.black12,
              height: 50,
              child: FacebookBannerAd(
                  // placementId: "YOUR_PLACEMENT_ID",
                  placementId: firebasedata.value["B_F_B_A"],
                  bannerSize: BannerSize.STANDARD,
                  listener: (result, value) {
                    // print("Banner Ad: $result -->  $value");
                  }),
            ),
          );
  }
}
