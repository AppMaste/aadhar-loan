// ignore_for_file: library_prefixes, must_be_immutable, deprecated_member_use

import 'package:aadhar_loan_app/Widgets/Mediaquery/media.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:share_plus/share_plus.dart';

import '../../Controller/Ad Controller/Button Controller/Button Controller.dart';
import '../../Controller/Ad Controller/Native and Banner Ad Controller.dart';

class BankInfoDetailScreen extends StatelessWidget {
  BankInfoDetailScreen({super.key});

  var argument = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/BankInfoDetailScreen");
        return Future(() => false);
      },
      child: Scaffold(
        appBar: appBarWidget(context, "${argument[0]}"),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: ScreenMQ.fSize_20()),
                    bankInfoContainerWidget(
                        context,
                        "Balance Check",
                        "assets/Icon/Balance Check.png",
                        "${argument[1]}",
                        const Color(0xFFECF8F7), () {
                      Share.share("${argument[1]}");
                    }),
                    SizedBox(height: ScreenMQ.fSize_20()),
                    bankInfoContainerWidget(
                        context,
                        "Mini Statement",
                        "assets/Icon/Mini Statement.png",
                        "${argument[2]}",
                        const Color(0xFFEDE9F1), () {
                      Share.share("${argument[2]}");
                    }),
                    SizedBox(height: ScreenMQ.fSize_20()),
                    bankInfoContainerWidget(
                        context,
                        "Customer Care",
                        "assets/Icon/Customer Care.png",
                        "${argument[3]}",
                        const Color(0xFFFFF1E9), () {
                      UrlLauncher.launch("tel:${argument[3]}");
                      // Share.share("${argument[3]}");
                    }),
                  ],
                ),
              ),
              banner.getBN("/BankInfoDetailScreen")
            ],
          ),
        ),
      ),
    );
  }
}
