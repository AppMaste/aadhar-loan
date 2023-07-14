import 'package:aadhar_loan_app/Controller/Ad%20Controller/Button%20Controller/Button%20Controller.dart';
import 'package:aadhar_loan_app/Widgets/Mediaquery/media.dart';
import 'package:aadhar_loan_app/Widgets/widgets/Allwidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Controller/Ad Controller/Native and Banner Ad Controller.dart';

class ApplyNowScreen extends StatelessWidget {
  const ApplyNowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.backbuttonWidget(context, "/ApplyNowScreen");
        return Future(() => false);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: appBarWidget(context, "Loan Type"),
        body: Center(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: ScreenMQ.fSize_20()),
                    imageWidget(context, "assets/images/Vector Img 4.png", 2.2),
                    SizedBox(height: ScreenMQ.fSize_20()),
                    Padding(
                      padding: EdgeInsets.all(ScreenMQ.fSize_10()),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: loanTypeColor.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10),
                        itemBuilder: (context, index) {
                          final con = loanTypeName[index].toString().split(" ");
                          // print("conconcon ${con[0]}");
                          return GestureDetector(
                            onTap: () {
                              tapController.buttonWidget(
                                context,
                                "/LoanTypeScreen",
                                [
                                  loanTypeName[index],
                                  loanTypedetails[index],
                                ],
                              );
                              /*Get.to(() => LoanTypeScreen(), arguments: [
                                loanTypeName[index],
                                loanTypedetails[index],
                              ]);*/
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: loanTypeColor[index],
                                  borderRadius: BorderRadius.only(
                                    topRight:
                                        Radius.circular(ScreenMQ.fSize_70()),
                                    bottomRight:
                                        Radius.circular(ScreenMQ.fSize_30()),
                                    bottomLeft:
                                        Radius.circular(ScreenMQ.fSize_30()),
                                  )),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      height:
                                          ScreenMQ.horizontalBlockSize! * 21,
                                      width: ScreenMQ.horizontalBlockSize! * 21,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle),
                                      child: Image.asset(
                                        loanTypeicon[index],
                                        scale: 1.3,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: ScreenMQ.fSize_70(),
                                        left: ScreenMQ.fSize_10()),
                                    child: Text(
                                      "${con[0]}\n${con[1]}",
                                      style: GoogleFonts.poppins(
                                          fontSize: ScreenMQ.fSize_18(),
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: ScreenMQ.fSize_70())
                  ],
                ),
              ),
              banner.getBN("/ApplyNowScreen")
            ],
          ),
        ),
      ),
    );
  }
}
