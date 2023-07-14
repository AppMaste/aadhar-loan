// import 'package:awesome_dialog/awesome_dialog.dart';
// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Mediaquery/media.dart';

var listsize = ScreenMQ.fSize_160();

var snackdemo = SnackBar(
  content: Text(
    'Link Copied',
    style:
        GoogleFonts.poppins(fontWeight: FontWeight.w500, color: Colors.black),
  ),
  backgroundColor: AppColor,
  elevation: 10,
  behavior: SnackBarBehavior.floating,
  margin: const EdgeInsets.all(5),
);
var AppColor = const Color(0xFFFE9D9E);

Color colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}

alertWidget(BuildContext context) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return Center(
        child: AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
          ),
          backgroundColor: colorFromHex("#FFABA9"),
          title: Column(
            children: [
              Text(
                "Please First Fill Empty Detail.....",
                style: GoogleFonts.poppins(
                    color: Colors.black, fontSize: ScreenMQ.fSize_13()),
              ),
              SizedBox(height: ScreenMQ.fSize_10()),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "OK",
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontSize: ScreenMQ.fSize_15()),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

///////////////////////////////////// Calculator ///////////////////////////////////////////////////////////

var year = [
  '1 Year',
  '2 Year',
  '3 Year',
  '4 Year',
  '5 Year',
  '6 Year',
  '7 Year',
  '8 Year',
  '9 Year',
  '10 Year',
  '11 Year',
  '12 Year',
  '13 Year',
  '14 Year',
  '15 Year',
  '16 Year',
  '17 Year',
  '18 Year',
  '19 Year',
  '20 Year',
  '21 Year',
  '22 Year',
  '23 Year',
  '24 Year',
  '25 Year',
  '26 Year',
  '27 Year',
  '28 Year',
  '29 Year',
  '30 Year',
  '31 Year',
  '32 Year',
  '33 Year',
  '34 Year',
  '35 Year',
  '36 Year',
  '37 Year',
  '38 Year',
  '39 Year',
  '40 Year',
  '41 Year',
  '42 Year',
  '43 Year',
  '44 Year',
  '45 Year',
  '46 Year',
  '47 Year',
  '48 Year',
  '49 Year',
  '50 Year',
].obs;
var month = [
  '0 Month',
  '1 Month',
  '2 Month',
  '3 Month',
  '4 Month',
  '5 Month',
  '6 Month',
  '7 Month',
  '8 Month',
  '9 Month',
  '10 Month',
  '11 Month',
].obs;

///////////////////////////////////// List Data ///////////////////////////////////////////////////////////
List loanTypeName = [
  "Personal Loan",
  "Gold Loan",
  "Home Loan",
  "Business Loan",
  "Education Loan",
  "Car Loan",
];
List loanTypeicon = [
  "assets/Icon/Loan Type/Personal Loan.png",
  "assets/Icon/Loan Type/Gold Loan.png",
  "assets/Icon/Loan Type/Home Loan.png",
  "assets/Icon/Loan Type/Business Loan.png",
  "assets/Icon/Loan Type/Education Loan.png",
  "assets/Icon/Loan Type/Car Loan.png",
];
List loanTypedetails = [
  """➸ Generally you take a home loan for buying a house / flat, plot or construction / renovation. Sometimes home loan is taken to increase or repair the house. Here we are giving you all the necessary information about Home Loan.

➸ Before starting the home loan process, assess how much your income is and how much the banks can lend accordingly.

➸ Your ability to take a home loan depends on the capacity to repay it. It depends on your monthly earnings, expenses and family's earnings, assets, liabilities, income stability.

➸ Banks first see if you will be able to repay the home loan on time. The more money you get in your hands every month, the more the amount of your home loan will increase.""",
  """➸ Sometimes we need money in emergency. In this case, gold kept at home can be quite useful. Companies like Manapuram Finance, Muthoot Finance, IIFL offer gold loans.

➸ Some government and private sector banks also offer gold loans. You can take cash by pledging gold ornaments, coins etc. After paying this money, the pledged jewelery or gold is returned to the customer.

➸ Interest has to be paid on the loan amount. Gold loan has lower interest rate than personal loan. Personal loan.. How much interest do you think?

➸ Finance companies and bank interest rates are different for gold loans. These range from 1 percent to 15 percent. For example, ICICI Bank charges interest from 1% to 16.50% per annum on gold loans. Along with this, one percent charges processing fee.""",
  """➸ To promote small enterprises in the country, the government has introduced several loan schemes. Apart from the Pradhan Mantri Mudra Yojana, there are many other schemes in which you can take small loans to big loans.

➸ At this time, according to the schemes of the central and state government, you can take a loan of Rs 50,000 to Rs 1 lakh for your business.

➸ Actually banks decide to give you a loan according to your business plan. If the bank feels that your business and profits from it will be so much that you will be able to repay the loan of the bank within the stipulated period after completing your expenses, only then the bank approves your loan.

➸ What are the benefits of taking a business loan? Financial support for inward business needs of cash to meet financial needs for both short and long term.""",
  """➸ If you need a loan quickly, a personal loan may be an option for you.

➸ A personal loan is an unsecured loan and you get it quickly.

➸ But yes, you can expect the interest rate of a personal loan to be higher than a secured loan. Let us know in detail about personal loans.

➸ First of all, personal loan is available very quickly.9 Some banks even claim that they will give you a loan in a few minutes. Do not just go to claims. But yes, you can expect to get a loan soon.

➸ Secondly, personal loan is unsecured loan. That is why you do not need to have some security.

➸ This is one of the reasons for getting loan soon. Because less documents are required, that is why the loan is available sooner.""",
  """➸ Everyone's dream is to have a branded car with them at home. A car not only makes your life comfortable, but also reduces many difficulties. Reaching the office while battling public transport or going out for weekends, everything becomes very easy.

➸ Earlier, buying a car was a big thing for anyone, because it had to spend a lump sum, but now it is very easy due to the easy availability of a car loan.

➸ Banks and non-banking finance companies offer car loans on easy monthly installments, which has made it very easy to buy cars. Due to this, your budget is not deteriorated and convenience is also available.""",
  """➸ Quality education is very important for a person's complete and successful life. For some people it may be a graduation from a top institute. At a time when the cost of studies is constantly increasing, the cost of studying in the top institutes of the country and abroad is quite high.

➸ Keeping this in mind, parents invest in mutual funds, some fixed deposits and some resort to ULIPs. Even after all this, the amount may be less for your studies.

➸ Education loan helps you a lot in such situations. This loan fills the gap between your need and the money available.

➸ According to a study, the cost of studies is increasing at the rate of 15 percent annually. At this time, if the cost of studies is Rs 2.5 lakh, then after 15 years, it will cost Rs 20 lakh to do MBA.""",
];

List loanTypeColor = [
  const Color(0xFFFFF1E9),
  const Color(0xFFEDE9F1),
  const Color(0xFFFEEAEA),
  const Color(0xFFECF8F7),
  const Color(0xFFEAFBF2),
  const Color(0xFFFDF4E3),
];

///////////////////////////////////// AppBar ///////////////////////////////////////////////////////////
imageWidget(BuildContext context, String imagepath, double scale) {
  return Image.asset(
    imagepath,
    scale: scale,
  );
}

appBarWidget(BuildContext context, String title) {
  return AppBar(
    title: Text(
      title,
      style:
          GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.w600),
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Padding(
        padding: EdgeInsets.all(ScreenMQ.fSize_10()),
        child: Container(
          decoration: BoxDecoration(
              color: AppColor,
              borderRadius: BorderRadius.circular(ScreenMQ.fSize_10())),
          child: Image.asset(
            "assets/Icon/Back.png",
            scale: 2.7,
          ),
        ),
      ),
    ),
  );
}

///////////////////////////////////// GetStartedScreen ///////////////////////////////////////////////////////////
NEXTButton(BuildContext context, String title, String icon, var ontap) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      height: ScreenMQ.fSize_100(),
      width: ScreenMQ.fSize_170(),
      color: Colors.transparent,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: ScreenMQ.fSize_55(),
              width: ScreenMQ.fSize_150(),
              decoration: BoxDecoration(
                color: const Color(0xFFFE9D9E),
                borderRadius: BorderRadius.circular(ScreenMQ.fSize_50()),
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(right: ScreenMQ.fSize_30()),
                  child: Text(
                    title,
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: ScreenMQ.horizontalBlockSize! * 5.5),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: ScreenMQ.fSize_120(),
                top: ScreenMQ.horizontalBlockSize! * 6),
            child: Container(
              height: ScreenMQ.fSize_55(),
              width: ScreenMQ.fSize_55(),
              decoration: BoxDecoration(
                color: const Color(0xFFFE9D9E),
                borderRadius: BorderRadius.circular(ScreenMQ.fSize_80()),
                border:
                    Border.all(width: ScreenMQ.fSize_4(), color: Colors.white),
              ),
              child: Center(
                child: Image.asset(icon, scale: 2.0),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

textWidget(BuildContext context, String title) {
  return Text(
    title,
    style: GoogleFonts.poppins(
      fontSize: ScreenMQ.fSize_20(),
      fontWeight: FontWeight.bold,
    ),
  );
}

detailTextWidget(BuildContext context, String title) {
  return Padding(
    padding: EdgeInsets.only(
      right: ScreenMQ.fSize_15(),
      left: ScreenMQ.fSize_17(),
    ),
    child: Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: ScreenMQ.horizontalBlockSize! * 5.35,
      ),
    ),
  );
}

getStartedButton(
    BuildContext context,
    String title,
    String shareicon,
    String nextIcon,
    String privacyicon,
    var shareontap,
    var nextontap,
    var privacyontap) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      GestureDetector(
        onTap: shareontap,
        child: Container(
          height: ScreenMQ.fSize_50(),
          width: ScreenMQ.fSize_50(),
          decoration: const BoxDecoration(
              color: Color(0xFF3784F6), shape: BoxShape.circle),
          child: Image.asset(
            shareicon,
            scale: 2.2,
          ),
        ),
      ),
      GestureDetector(
        onTap: nextontap,
        child: Container(
          height: ScreenMQ.fSize_100(),
          width: ScreenMQ.horizontalBlockSize! * 58,
          color: Colors.transparent,
          child: Stack(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: ScreenMQ.fSize_55(),
                    width: ScreenMQ.fSize_200(),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFE9D9E),
                      borderRadius: BorderRadius.circular(ScreenMQ.fSize_50()),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(right: ScreenMQ.fSize_45()),
                        child: Text(
                          title,
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: ScreenMQ.horizontalBlockSize! * 5),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: ScreenMQ.horizontalBlockSize! * 41,
                    top: ScreenMQ.horizontalBlockSize! * 5.5),
                child: Container(
                  height: ScreenMQ.fSize_60(),
                  width: ScreenMQ.fSize_60(),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFE9D9E),
                    borderRadius: BorderRadius.circular(ScreenMQ.fSize_80()),
                    border: Border.all(
                        width: ScreenMQ.fSize_4(), color: Colors.white),
                  ),
                  child: Center(
                    child: Image.asset(nextIcon, scale: 2.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      GestureDetector(
        onTap: privacyontap,
        child: Container(
          height: ScreenMQ.fSize_50(),
          width: ScreenMQ.fSize_50(),
          decoration: const BoxDecoration(
              color: Color(0xFF6FB200), shape: BoxShape.circle),
          child: Image.asset(
            privacyicon,
            scale: 2.2,
          ),
        ),
      )
    ],
  );
}

///////////////////////////////////// HomeScreen ///////////////////////////////////////////////////////////
firstContainerWidget(BuildContext context, String title, String amount,
    String description, var ontap) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: const Color(0xFFFFABA9),
          borderRadius: BorderRadius.circular(ScreenMQ.fSize_15())),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: ScreenMQ.fSize_14()),
          Text(
            title,
            style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: ScreenMQ.fSize_18(),
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: ScreenMQ.fSize_10()),
          Text(
            amount,
            style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: ScreenMQ.fSize_24(),
                fontWeight: FontWeight.w600),
          ),
          SizedBox(height: ScreenMQ.fSize_10()),
          Text(
            description,
            style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: ScreenMQ.fSize_18(),
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: ScreenMQ.fSize_20()),
          GestureDetector(
            onTap: ontap,
            child: Container(
              height: ScreenMQ.horizontalBlockSize! * 13.5,
              width: ScreenMQ.fSize_150(),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(ScreenMQ.fSize_50())),
              child: Center(
                child: Text(
                  "Apply Now",
                  style: GoogleFonts.poppins(
                      color: AppColor, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          SizedBox(height: ScreenMQ.fSize_14()),
        ],
      ),
    ),
  );
}

secondContainerWidget(
    BuildContext context, String title, var color, String icon, var ontap) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: ontap,
      child: Container(
        height: ScreenMQ.horizontalBlockSize! * 25,
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(ScreenMQ.fSize_50()),
                bottomLeft: Radius.circular(ScreenMQ.fSize_20()),
                bottomRight: Radius.circular(ScreenMQ.fSize_20()))),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: ScreenMQ.horizontalBlockSize! * 21,
                width: ScreenMQ.horizontalBlockSize! * 21,
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: Image.asset(
                  icon,
                  scale: 1.3,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(right: ScreenMQ.fSize_110()),
                child: Text(
                  title,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: ScreenMQ.fSize_20()),
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

thirdContainerWidget(
    BuildContext context, String title, String icon, var color, var ontap) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      height: ScreenMQ.horizontalBlockSize! * 35,
      width: ScreenMQ.horizontalBlockSize! * 46,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(ScreenMQ.fSize_70()),
            bottomRight: Radius.circular(ScreenMQ.fSize_30()),
            bottomLeft: Radius.circular(ScreenMQ.fSize_30()),
          )),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: ScreenMQ.horizontalBlockSize! * 21,
              width: ScreenMQ.horizontalBlockSize! * 21,
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: Image.asset(
                icon,
                scale: 1.3,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: ScreenMQ.fSize_55(), left: ScreenMQ.fSize_10()),
            child: Text(
              title,
              style: GoogleFonts.poppins(
                  fontSize: ScreenMQ.fSize_17(), fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    ),
  );
}

rowWidget(BuildContext context, String title, String title2, String icon,
    String icon2, var color, var color2, var ontap, var ontap2) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        thirdContainerWidget(context, title, icon, color, ontap),
        thirdContainerWidget(context, title2, icon2, color2, ontap2),
      ],
    ),
  );
}

atmContainerWidget(
    BuildContext context,
    String title,
    String title2,
    String title3,
    String icon,
    String icon2,
    String icon3,
    var ontap,
    var ontap2,
    var ontap3) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          GestureDetector(
            onTap: ontap,
            child: Container(
              height: ScreenMQ.fSize_70(),
              width: ScreenMQ.fSize_70(),
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: Image.asset(
                icon,
                scale: 1.5,
              ),
            ),
          ),
          SizedBox(height: ScreenMQ.fSize_30()),
          Text(
            title,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: ScreenMQ.fSize_14()),
          )
        ],
      ),
      Column(
        children: [
          GestureDetector(
            onTap: ontap2,
            child: Container(
              height: ScreenMQ.fSize_70(),
              width: ScreenMQ.fSize_70(),
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: Image.asset(
                icon2,
                scale: 1.3,
              ),
            ),
          ),
          SizedBox(height: ScreenMQ.fSize_30()),
          Text(
            title2,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: ScreenMQ.fSize_14()),
          )
        ],
      ),
      Column(
        children: [
          GestureDetector(
            onTap: ontap3,
            child: Container(
              height: ScreenMQ.fSize_70(),
              width: ScreenMQ.fSize_70(),
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: Image.asset(
                icon3,
                scale: 1.3,
              ),
            ),
          ),
          SizedBox(height: ScreenMQ.fSize_30()),
          Text(
            title3,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: ScreenMQ.fSize_14()),
          )
        ],
      ),
    ],
  );
}

calculatorContainerWidget(BuildContext context, String title, var ontap) {
  return Padding(
    padding:
        EdgeInsets.only(left: ScreenMQ.fSize_20(), right: ScreenMQ.fSize_20()),
    child: Container(
      height: ScreenMQ.horizontalBlockSize! * 18,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: AppColor.withOpacity(0.2),
          borderRadius: BorderRadius.all(Radius.circular(ScreenMQ.fSize_40()))),
      child: Padding(
        padding: EdgeInsets.only(
            left: ScreenMQ.fSize_15(), right: ScreenMQ.fSize_15()),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: ScreenMQ.fSize_15()),
            ),
            GestureDetector(
              onTap: ontap,
              child: Container(
                height: ScreenMQ.horizontalBlockSize! * 9,
                width: ScreenMQ.horizontalBlockSize! * 23,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius:
                        BorderRadius.all(Radius.circular(ScreenMQ.fSize_20())),
                    border: Border.all(color: AppColor)),
                child: Center(
                  child: Text(
                    "Calculate",
                    style: GoogleFonts.poppins(
                        color: AppColor, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

///////////////////////////////////// LoanType Screen ///////////////////////////////////////////////////////////
applyContainerWidget(BuildContext context, String title, var ontap) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      height: ScreenMQ.fSize_55(),
      width: ScreenMQ.fSize_170(),
      decoration: BoxDecoration(
          color: AppColor,
          borderRadius: BorderRadius.circular(ScreenMQ.fSize_40())),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500, fontSize: ScreenMQ.fSize_17()),
        ),
      ),
    ),
  );
}
///////////////////////////////////// Form Screen ///////////////////////////////////////////////////////////

dotWidget(BuildContext context, int count, int count2, int count3, int count4) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: ScreenMQ.fSize_8(),
        width: count == 1 ? ScreenMQ.fSize_8() : ScreenMQ.fSize_30(),
        decoration: count == 1
            ? BoxDecoration(color: Colors.grey.shade400, shape: BoxShape.circle)
            : BoxDecoration(
                color: AppColor,
                borderRadius: BorderRadius.circular(ScreenMQ.fSize_15())),
      ),
      Container(
        height: ScreenMQ.fSize_8(),
        width: count2 == 1 ? ScreenMQ.fSize_8() : ScreenMQ.fSize_30(),
        decoration: count2 == 1
            ? BoxDecoration(color: Colors.grey.shade400, shape: BoxShape.circle)
            : BoxDecoration(
                color: AppColor,
                borderRadius: BorderRadius.circular(ScreenMQ.fSize_15())),
      ),
      Container(
        height: ScreenMQ.fSize_8(),
        width: count3 == 1 ? ScreenMQ.fSize_8() : ScreenMQ.fSize_30(),
        decoration: count3 == 1
            ? BoxDecoration(color: Colors.grey.shade400, shape: BoxShape.circle)
            : BoxDecoration(
                color: AppColor,
                borderRadius: BorderRadius.circular(ScreenMQ.fSize_15())),
      ),
      Container(
        height: ScreenMQ.fSize_8(),
        width: count4 == 1 ? ScreenMQ.fSize_8() : ScreenMQ.fSize_30(),
        decoration: count4 == 1
            ? BoxDecoration(color: Colors.grey.shade400, shape: BoxShape.circle)
            : BoxDecoration(
                color: AppColor,
                borderRadius: BorderRadius.circular(ScreenMQ.fSize_15())),
      ),
    ],
  );
}

textFieldWidget(BuildContext context, String hintText, var controller,
    var keyBordType, var max) {
  return Padding(
    padding:
        EdgeInsets.only(left: ScreenMQ.fSize_10(), right: ScreenMQ.fSize_10()),
    child: TextFormField(
      controller: controller,
      cursorColor: AppColor,
      style:
          GoogleFonts.poppins(color: AppColor, fontSize: ScreenMQ.fSize_13()),
      keyboardType: keyBordType,
      maxLength: max,
      decoration: InputDecoration(
        counterText: '',
        hintText: hintText,
        filled: true,
        fillColor: AppColor.withOpacity(0.3),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.withOpacity(0.9))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.withOpacity(0.9))),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.withOpacity(0.9),
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    ),
  );
}

titleWidget(BuildContext context, String title) {
  return Text(
    title,
    style: GoogleFonts.poppins(
      fontWeight: FontWeight.w600,
      fontSize: ScreenMQ.horizontalBlockSize! * 5.9,
    ),
  );
}

///////////////////////////////////// Form2 Screen ///////////////////////////////////////////////////////////

rowTextFieldWidget(
    BuildContext context,
    String hintText,
    var controller,
    String hintText2,
    var controller2,
    var keyBordType,
    var keyBordType2,
    var max,
    var max2) {
  return Padding(
    padding:
        EdgeInsets.only(left: ScreenMQ.fSize_10(), right: ScreenMQ.fSize_10()),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: ScreenMQ.horizontalBlockSize! * 44,
          child: TextField(
            controller: controller,
            cursorColor: AppColor,
            style: TextStyle(color: AppColor),
            keyboardType: keyBordType,
            maxLength: max,
            decoration: InputDecoration(
              counterText: '',
              hintText: hintText,
              filled: true,
              fillColor: AppColor.withOpacity(0.3),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.withOpacity(0.9))),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.withOpacity(0.9))),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColor.withOpacity(0.9),
                ),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          ),
        ),
        SizedBox(
          width: ScreenMQ.horizontalBlockSize! * 44,
          child: TextField(
            controller: controller2,
            cursorColor: AppColor,
            style: TextStyle(color: AppColor),
            keyboardType: keyBordType2,
            maxLength: max2,
            decoration: InputDecoration(
              counterText: '',
              hintText: hintText2,
              filled: true,
              fillColor: AppColor.withOpacity(0.3),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.withOpacity(0.9))),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.withOpacity(0.9))),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColor.withOpacity(0.9),
                ),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

///////////////////////////////////// Form3 Screen ///////////////////////////////////////////////////////////

genderWidget(BuildContext context, RxInt id, String title, String title2) {
  return Row(
    children: [
      Transform.scale(
        scale: 1.3,
        child: Radio(
          fillColor: MaterialStateColor.resolveWith((states) => AppColor),
          activeColor: AppColor,
          value: 1,
          groupValue: id.value,
          onChanged: (val) {
            // setState(() {
            // radioButtonItem = 'ONE';
            id.value = 1;
            // });
          },
        ),
      ),
      Text(
        title,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
          fontSize: 17,
        ),
      ),
      SizedBox(width: ScreenMQ.fSize_30()),
      Transform.scale(
        scale: 1.3,
        child: Radio(
          fillColor: MaterialStateColor.resolveWith((states) => AppColor),
          activeColor: AppColor,
          value: 2,
          groupValue: id.value,
          onChanged: (val) {
            // setState(() {
            // radioButtonItem = 'TWO';
            id.value = 2;
            // });
          },
        ),
      ),
      Text(
        title2,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
          fontSize: 17,
        ),
      ),
    ],
  );
}

///////////////////////////////////// Aadhar Detail Screen ///////////////////////////////////////////////////////////

stateContainerWidget(BuildContext context, String title, var ontap) {
  return Center(
    child: GestureDetector(
      onTap: ontap,
      child: Container(
        height: ScreenMQ.fSize_50(),
        width: ScreenMQ.fSize_170(),
        decoration: BoxDecoration(
            color: AppColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(ScreenMQ.fSize_40())),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.poppins(
                fontSize: ScreenMQ.fSize_15(),
                color: Colors.black,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    ),
  );
}

///////////////////////////////////// Bank Info Detail Screen ///////////////////////////////////////////////////////////

bankInfoContainerWidget(BuildContext context, String title, String icon,
    String number, var color, var ontap) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: ontap,
      child: Container(
        height: ScreenMQ.horizontalBlockSize! * 25,
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(ScreenMQ.fSize_50()),
                bottomLeft: Radius.circular(ScreenMQ.fSize_20()),
                bottomRight: Radius.circular(ScreenMQ.fSize_20()))),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: ScreenMQ.horizontalBlockSize! * 20,
                width: ScreenMQ.horizontalBlockSize! * 20,
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: Image.asset(
                  icon,
                  scale: 1.3,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: ScreenMQ.fSize_15()),
                Padding(
                  padding: EdgeInsets.only(left: ScreenMQ.fSize_15()),
                  child: Text(
                    title,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: ScreenMQ.fSize_20()),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: ScreenMQ.fSize_15()),
                  child: Text(
                    number,
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}

///////////////////////////////////// Near By Me Screen ///////////////////////////////////////////////////////////

Widget CircularProgress(BuildContext context) {
  const TWO_PI = 3.14 * 2;
  var size = ScreenMQ.fSize_40();
  return Center(
    child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: 1.0),
        duration: const Duration(seconds: 3),
        builder: (context, value, child) {
          // percentage to show in Center Text
          int percentage = (value * 100).ceil();
          return Container(
            color: Colors.transparent,
            width: size,
            height: size,
            child: Stack(
              children: [
                ShaderMask(
                  shaderCallback: (rect) {
                    return SweepGradient(
                            startAngle: 0.0,
                            endAngle: TWO_PI,
                            stops: [value, value],
                            // value from Tween Animation Builder
                            // 0.0 , 0.5 , 0.5 , 1.0
                            center: Alignment.center,
                            colors: const [Colors.black87, Colors.transparent])
                        .createShader(rect);
                  },
                  child: Container(
                    width: size,
                    height: size,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                  ),
                ),
                percentage != 100
                    ? Center(
                        child: Container(
                          width: size - 5,
                          height: size - 5,
                          decoration: BoxDecoration(
                              color: AppColor, shape: BoxShape.circle),
                          child: Center(
                              child: Text(
                            "$percentage",
                            style: TextStyle(
                                fontSize: ScreenMQ.fSize_15(),
                                color: Colors.black87,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      )
                    : Center(
                        child: Container(
                          width: size - 5,
                          height: size - 5,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Center(
                            child: Icon(Icons.check,
                                size: ScreenMQ.fSize_30(),
                                color: Colors.black87),
                          ),
                        ),
                      )
              ],
            ),
          );
        }),
  );
}

dialogWidget(BuildContext context) {
  return showDialog(
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
}

///////////////////////////////////// EMI Calculator Screen ///////////////////////////////////////////////////////////

emiTextFieldWidget(BuildContext context, String hintText, controller,
    var keyBordType, var max) {
  return Padding(
    padding:
        EdgeInsets.only(left: ScreenMQ.fSize_10(), right: ScreenMQ.fSize_10()),
    child: TextFormField(
      controller: controller,
      cursorColor: AppColor,
      style:
          GoogleFonts.poppins(color: AppColor, fontSize: ScreenMQ.fSize_13()),
      keyboardType: keyBordType,
      maxLength: max,
      decoration: InputDecoration(
        counterText: '',
        hintText: hintText,
        filled: true,
        fillColor: AppColor.withOpacity(0.3),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.withOpacity(0.9))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.withOpacity(0.9))),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.withOpacity(0.9),
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    ),
  );
}

emiContainerWidget(
    BuildContext context, var interest, var principal, var payment, var emi) {
  return Container(
    width: double.maxFinite,
    decoration: BoxDecoration(
        color: AppColor.withOpacity(0.3),
        border: Border.all(color: AppColor),
        borderRadius: BorderRadius.circular(ScreenMQ.fSize_20())),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: ScreenMQ.fSize_20()),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: ScreenMQ.horizontalBlockSize! * 40,
                color: Colors.transparent,
                child: Text(
                  "Total Interest\n$interest",
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(fontSize: ScreenMQ.fSize_15()),
                ),
              ),
              VerticalDivider(
                color: AppColor,
                thickness: 1,
              ),
              Container(
                width: ScreenMQ.horizontalBlockSize! * 40,
                color: Colors.transparent,
                child: Text(
                  "Total Principal\n$principal",
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(fontSize: ScreenMQ.fSize_15()),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: ScreenMQ.fSize_10()),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: ScreenMQ.fSize_10()),
          child: Divider(color: AppColor, thickness: 1),
        ),
        SizedBox(height: ScreenMQ.fSize_10()),
        Padding(
          padding: EdgeInsets.only(left: ScreenMQ.fSize_10()),
          child: Container(
            width: ScreenMQ.horizontalBlockSize! * 75,
            color: Colors.transparent,
            child: Text(
              "Total Payment (Principal + Interest)\n$payment",
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(fontSize: ScreenMQ.fSize_15()),
            ),
          ),
        ),
        SizedBox(height: ScreenMQ.fSize_10()),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: ScreenMQ.fSize_10()),
          child: Divider(color: AppColor, thickness: 1),
        ),
        SizedBox(height: ScreenMQ.fSize_10()),
        Padding(
          padding: EdgeInsets.only(left: ScreenMQ.fSize_10()),
          child: Container(
            width: ScreenMQ.horizontalBlockSize! * 60,
            color: Colors.transparent,
            child: Text(
              "EMI (Monthly Payment)\n$emi",
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(fontSize: ScreenMQ.fSize_15()),
            ),
          ),
        ),
        SizedBox(height: ScreenMQ.fSize_20()),
      ],
    ),
  );
}

calculateContainerWidget(
    BuildContext context, String title, String title2, var ontap, var ontap2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      GestureDetector(
        onTap: ontap,
        child: Container(
          height: ScreenMQ.fSize_60(),
          width: ScreenMQ.fSize_140(),
          decoration: BoxDecoration(
            color: AppColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(ScreenMQ.fSize_40()),
          ),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.poppins(
                  color: AppColor,
                  fontSize: ScreenMQ.fSize_17(),
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: ontap2,
        child: Container(
          height: ScreenMQ.fSize_60(),
          width: ScreenMQ.horizontalBlockSize! * 55,
          decoration: BoxDecoration(
            color: AppColor,
            borderRadius: BorderRadius.circular(ScreenMQ.fSize_40()),
          ),
          child: Center(
            child: Text(
              title2,
              style: GoogleFonts.poppins(
                  fontSize: ScreenMQ.fSize_17(), fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    ],
  );
}
