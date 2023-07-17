// ignore_for_file: invalid_use_of_protected_member

import 'dart:convert';
import 'package:aadhar_loan_app/main.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../Screens/Splash Screens/Get Started.dart';
import '../App open Ad/AppOpenAd.dart';

class AppController extends GetxController with WidgetsBindingObserver {
  AppOpenAdManager appOpenAdManager = AppOpenAdManager();

  // ignore: non_constant_identifier_names
  bool Paused = false;

  // ignore: non_constant_identifier_names
  var Loaded = false.obs;

  @override
  void onInit() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification!.android;

      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              channel.description,
              // color: Colors.blue,
              playSound: true,
              icon: "@drawable/ic_logo_launch",
            ),
          ),
        );
      }
    });
    super.onInit();

    WidgetsBinding.instance.addObserver(this);
    initConfig().whenComplete(() {});
    firebasedata.value = json.decode(remoteConfig.getString("AADHAR"));
    // update();
    Future.delayed(const Duration(seconds: 1), () {
      AdData();
    });
  }

  // ignore: non_constant_identifier_names
  AdData() async {
    if (firebasedata.value.isNotEmpty) {
      appopenAd();
      Future.delayed(const Duration(seconds: 3), () {
        Get.offAll(() => const GetStartedScreen());
      });
    } else {
      // initConfig().whenComplete(() {});
      firebasedata.value = await json.decode(remoteConfig.getString("AADHAR"));
      // update();
      AdData();
    }
  }

  var back = 1.obs;

  AppOpenAd? _appOpenAd;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused) {
      print("pauseeeee ${Loaded.value}");
      AppOpenAd.loadWithAdManagerAdRequest(
        adUnitId: firebasedata.value["A_A"],
        // adUnitId: "/6499/example/app-open",
        orientation: AppOpenAd.orientationPortrait,
        adManagerAdRequest: const AdManagerAdRequest(),
        adLoadCallback: AppOpenAdLoadCallback(
          onAdLoaded: (ad) {
            _appOpenAd = ad;
            Loaded.value = true;
            print("trueee ${Loaded.value}");
          },
          onAdFailedToLoad: (error) {
            // Handle the error.
            back.value++;
            print("mainback ${back.value}");
          },
        ),
      );
      Paused = true;
    }
    if (state == AppLifecycleState.resumed) {
      if (back.value == firebasedata.value["B_I_A_C"] && Loaded.value == true) {
        back.value = 1;
        // if (Loaded.value == true) {
        _appOpenAd?.show();
        // }
        Paused = false;
        print("backbackbackback ${back.value}");
      } else {
        back.value++;
        print("elseback ${back.value}");
      }
    }
  }
}
