import 'package:aadhar_loan_app/Screens/Calculator%20Page/GST%20calculator%20Page/GST%20Calculator.dart';
import 'package:aadhar_loan_app/Screens/Calculator%20Page/SIP%20Calculator%20Page/SIP%20Calculator.dart';
import 'package:aadhar_loan_app/Screens/Home%20Page/Home%20Screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'Screens/Aadhar Loan Page/Aadhar Service Page/Aadhar Service Detail.dart';
import 'Screens/Aadhar Loan Page/Aadhar Service Page/Aadhar Service.dart';
import 'Screens/Aadhar Loan Page/Aadhar loan.dart';
import 'Screens/Aadhar Loan Page/About Aadhar Page/About Aadhar Detail.dart';
import 'Screens/Aadhar Loan Page/About Aadhar Page/About Aadhar.dart';
import 'Screens/Aadhar Loan Page/Adhar detail page/Get Aadhar.dart';
import 'Screens/Aadhar Loan Page/Adhar detail page/Get Adhar Detail Page/Aadhar detail.dart';
import 'Screens/Aadhar Loan Page/Adhar detail page/Get Adhar Detail Page/Book (BETA).dart';
import 'Screens/Aadhar Loan Page/Adhar detail page/Update Aadhar Detail.dart';
import 'Screens/Aadhar Loan Page/Adhar detail page/Update Aadhar.dart';
import 'Screens/Aadhar Loan Page/Adhar detail page/WebView Page/WebView Screen.dart';
import 'Screens/Aadhar Loan Page/Download  Page/Download Detail.dart';
import 'Screens/Aadhar Loan Page/Download  Page/Download.dart';
import 'Screens/Aadhar Pan Link Page/Aadhar Pan Link.dart';
import 'Screens/Aadhar Pan Link Page/Adhar Pan Detail Page/Aadhar pan detail.dart';
import 'Screens/Aadhar Pan Link Page/Adhar Pan Detail Page/Important Question Detail.dart';
import 'Screens/Aadhar Pan Link Page/Adhar Pan Detail Page/Important Question.dart';
import 'Screens/Aadhar Pan Link Page/Adhar Pan Detail Page/Link  Pan To Aadhar  Detail.dart';
import 'Screens/Aadhar Pan Link Page/Adhar Pan Detail Page/Link Pan to Aadhar.dart';
import 'Screens/Address change Page/Address Change.dart';
import 'Screens/Address change Page/Address Detail.dart';
import 'Screens/Apply Loan Page/Apply Now Screen.dart';
import 'Screens/Apply Loan Page/Form Page/Form 2.dart';
import 'Screens/Apply Loan Page/Form Page/Form 3.dart';
import 'Screens/Apply Loan Page/Form Page/Form 4.dart';
import 'Screens/Apply Loan Page/Form Page/Form.dart';
import 'Screens/Apply Loan Page/Loan Type Screen.dart';
import 'Screens/Bank Info Page/Bank Info Detail.dart';
import 'Screens/Bank Info Page/Bank Info.dart';
import 'Screens/Calculator Page/EMI calcualtor Page/EMI Calculator.dart';
import 'Screens/EPF Service Page/EPF Detail.dart';
import 'Screens/EPF Service Page/EPF Service.dart';
import 'Screens/Instant Loan Page/Balance Online.dart';
import 'Screens/Instant Loan Page/Claim Page/claim detail.dart';
import 'Screens/Instant Loan Page/Claim Page/clam.dart';
import 'Screens/Instant Loan Page/detail.dart';
import 'Screens/Instant Loan Page/instant lona.dart';
import 'Screens/Loan Guide Page/Loan guide detail.dart';
import 'Screens/Loan Guide Page/Loan guide.dart';
import 'Screens/Near By Me Page/Near By Me.dart';
import 'Screens/Splash Screens/Get Started.dart';
import 'Screens/Splash Screens/Splesh Screen.dart';

final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
RxMap firebasedata = {}.obs;

const AndroidNotificationChannel channel = AndroidNotificationChannel(
    "Hello", "Firebase Messaging", "How are you!!",
    importance: Importance.high, playSound: true);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> _firebasemessgingBackgroundMessagingHandler(
    RemoteMessage message) async {
  await Firebase.initializeApp();
  // print("A bg message just showed up : ${message.messageId}");
}

Future initConfig() async {
  await remoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 1),
    minimumFetchInterval: const Duration(seconds: 10),
  ));
  await remoteConfig.fetchAndActivate();
}

AppOpenAd? appOpenAd;

appopenAd() {
  AppOpenAd.load(
    // ignore: invalid_use_of_protected_member
    adUnitId: firebasedata.value["A_A"],
    // adUnitId: "/6499/example/app-open",
    orientation: AppOpenAd.orientationPortrait,
    request: const AdManagerAdRequest(),
    adLoadCallback: AppOpenAdLoadCallback(
      onAdLoaded: (ad) {
        // print("Ad Loaded.................................");
        appOpenAd = ad;
        // isLoaded=true;
        ad.show();
      },
      onAdFailedToLoad: (error) {
        // loadAd();
        AppOpenAd.load(
          // adUnitId: "/6499/example/app-open",
          adUnitId: "ca-app-pub-3940256099942544/3419835294",
          orientation: AppOpenAd.orientationPortrait,
          request: const AdManagerAdRequest(),
          adLoadCallback: AppOpenAdLoadCallback(
            onAdLoaded: (ad) {
              // print("Ad Loaded.................................");
              appOpenAd = ad;
              // isLoaded=true;
              ad.show();
            },
            onAdFailedToLoad: (error) {
              // loadAd();
              // Handle the error.
            },
          ),
        );

        // Handle the error.
      },
    ),
  );
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FirebaseMessaging.onBackgroundMessage(
      (message) => _firebasemessgingBackgroundMessagingHandler(message));

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  return runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "/AadharLoanScreen": (context) => AadharLoanScreen(),
        "/AadharPanLinkScreen": (context) => AadharPanLinkScreen(),
        "/GetAadharScreen": (context) => GetAadharScreen(),
        "/AadharDetailScreen": (context) => AadharDetailScreen(),
        "/AadharWebView": (context) => AadharWebView(),
        "/UpdateAadharScreen": (context) => UpdateAadharScreen(),
        "/UpdateAadharDetailScreen": (context) => UpdateAadharDetailScreen(),
        "/AadharServiceScreen": (context) => AadharServiceScreen(),
        "/AadharServiceDetailScreen": (context) => AadharServiceDetailScreen(),
        "/AboutAadharScreen": (context) => AboutAadharScreen(),
        "/AboutAadharDetailScreen": (context) => AboutAadharDetailScreen(),
        "/DownloadScreen": (context) => DownloadScreen(),
        "/DownloadDetailScreen": (context) => DownloadDetailScreen(),
        "/BETAScreen": (context) => BETAScreen(),
        "/AadharPanDetailScreen": (context) => AadharPanDetailScreen(),
        "/LinkToPanAadharScreen": (context) => LinkToPanAadharScreen(),
        "/LinkPanToAadharDetailScreen": (context) =>
            LinkPanToAadharDetailScreen(),
        "/ImportantQuestionScreen": (context) => ImportantQuestionScreen(),
        "/ImportantQuestionDetailScreen": (context) =>
            ImportantQuestionDetailScreen(),
        "/AddressChangeScreen": (context) => AddressChangeScreen(),
        "/AadharAddressDetailScreen": (context) => AadharAddressDetailScreen(),
        "/ApplyNowScreen": (context) => ApplyNowScreen(),
        "/LoanTypeScreen": (context) => LoanTypeScreen(),
        "/FormScreen": (context) => FormScreen(),
        "/Form2Screen": (context) => Form2Screen(),
        "/Form3Screen": (context) => Form3Screen(),
        "/Form4Screen": (context) => Form4Screen(),
        "/BankInfoScreen": (context) => BankInfoScreen(),
        "/BankInfoDetailScreen": (context) => BankInfoDetailScreen(),
        "/EMICalculatorScreen": (context) => EMICalculatorScreen(),
        "/GSTCalculatorScreen": (context) => GSTCalculatorScreen(),
        "/SIPCalculateScreen": (context) => SIPCalculateScreen(),
        "/EPFServiceScreen": (context) => EPFServiceScreen(),
        "/EPFDetailScreen": (context) => EPFDetailScreen(),
        "/HomeScreen": (context) => HomeScreen(),
        "/NearByMeScreen": (context) => NearByMeScreen(),
        "/InstantLoanScreen": (context) => InstantLoanScreen(),
        "/InstantDetailScreen": (context) => InstantDetailScreen(),
        "/ClamScreen": (context) => ClamScreen(),
        "/BalanceOnlineScreen": (context) => BalanceOnlineScreen(),
        "/ClaimDetailScreen": (context) => ClaimDetailScreen(),
        "/LoanGuideScreen": (context) => LoanGuideScreen(),
        "/LoanGuideDetailScreen": (context) => LoanGuideDetailScreen(),
      },
      // home: SplashScreen(),
    ),
  );
}
