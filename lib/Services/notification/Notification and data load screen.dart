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
  bool Loaded = false;

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
    // ignore: invalid_use_of_protected_member
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

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused) {
      AppOpenAd.load(
        // ignore: invalid_use_of_protected_member
        adUnitId: firebasedata.value["A_A"],
        // adUnitId: "/6499/example/app-open",
        orientation: AppOpenAd.orientationPortrait,
        request: const AdManagerAdRequest(),
        adLoadCallback: AppOpenAdLoadCallback(
          onAdLoaded: (ad) {
            appOpenAd = ad;
            Loaded = true;
          },
          onAdFailedToLoad: (error) {
            // Handle the error.
          },
        ),
      );
      Paused = true;
    }
    if (state == AppLifecycleState.resumed) {
      if (Loaded == true) {
        appOpenAd?.show();
      }
      Paused = false;
    }
  }
}
