import 'package:aadhar_loan_app/Widgets/Mediaquery/media.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

class PrivacyWebView extends StatefulWidget {
  const PrivacyWebView({super.key});

  @override
  State<PrivacyWebView> createState() => _PrivacyWebViewState();
}

class _PrivacyWebViewState extends State<PrivacyWebView> {
  double _progress = 0;

  late InAppWebViewController webview;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, "Privacy"),
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(url: Uri.parse("https://pub.dev/")),
            onWebViewCreated: (InAppWebViewController controller) {
              webview = controller;
            },
            onProgressChanged:
                (InAppWebViewController controller, int progress) {
              setState(() {
                _progress = progress / 100;
              });
            },
          ),
          _progress < 1
              ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: ScreenMQ.fSize_40(),
                  width: ScreenMQ.fSize_40(),
                  child: CircularProgressIndicator(
                    strokeWidth: ScreenMQ.horizontalBlockSize! * 1.4,
                    value: _progress,
                    backgroundColor: Theme.of(context)
                        .colorScheme
                        .secondary
                        .withOpacity(0.2),
                  ),
                ),
                SizedBox(
                  height: ScreenMQ.fSize_20(),
                ),
                Text(
                  "Loading...",
                  style: TextStyle(fontSize: ScreenMQ.fSize_20()),
                )
              ],
            ),
          )
              : const SizedBox(),
        ],
      ),
    );
  }
}
