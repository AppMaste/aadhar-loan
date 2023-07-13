class InstantModel {
  final Instantname,
      Instantboxcolor,
      Instanticon,
      Instantappbarname,
      Instantdetails,
      Instantclaim,
      Instantclaim2,
      Instantcall,
      Instantcallbutton;

  InstantModel(
      this.Instantname,
      this.Instantboxcolor,
      this.Instanticon,
      this.Instantappbarname,
      this.Instantdetails,
      this.Instantclaim,
      this.Instantclaim2,
      this.Instantcall,
      this.Instantcallbutton,
      );
}

List Instantname = [
  "Activity \nUNA",
  "Balance \nOnline",
  "Pensioners\n",
  "TRRN \nStatus",
  "Claim\n",
  "Balance \nCall",
  "Balance \nSMS",
  "FAQs\n",
  "News\n",
  "Helpline\n",
  "Locate \nOffice",
  "EPF \nonline",
];


List Instantname2 = [
  "Activity \nUNA",
  "Balance \nOnline",
  "Pensioners\n",
  "TRRN \nStatus",
  "",
  "Balance \nCall",
  "Balance \nSMS",
  "FAQs\n",
  "News\n",
  "Helpline\n",
  "Locate \nOffice",
  "EPF \nonline",
];
List Instantboxcolor = [
  "#FFF1E9",
  "#EDE9F1",
  "#FEEAEA",
  "#ECF8F7",
  "#EAFBF2",
  "#FDF4E3",
  "#FDEEF5",
  "#EFF4FF",
  "#ECF8F7",
  "#FFF1E9",
  "#EDE9F1",
];
List Instanticon = [
  "assets/Icon/Instant Loan/Active UNA.png",
  "assets/Icon/Instant Loan/Balance Online.png",
  "assets/Icon/Instant Loan/Pensioners.png",
  "assets/Icon/Instant Loan/TRRN Status.png",
  "assets/Icon/Instant Loan/Claim.png",
  "assets/Icon/Instant Loan/Balance Call.png",
  "assets/Icon/Instant Loan/Balance SMS.png",
  "assets/Icon/Instant Loan/FAQs.png",
  "assets/Icon/Instant Loan/News.png",
  "assets/Icon/Instant Loan/Helpline.png",
  "assets/Icon/Instant Loan/Locate Office.png",
];
List Instantappbarname = [
  "Detail",
  "Loan Tips",
  "Detail",
  "Detail",
  "Claim",
  "Loan Tips",
  "Loan Tips",
  "Detail",
  "Detail",
  "Loan Tips",
  "Detail",
  "EPF Service",
];
List Instantdetails = [
  """✤ Ways to Check EPF Balance Online

✤The EPFO has been introducing new methods for employees to check the EPF balance and is in the process of developing the existing platforms that can be used.

✤ Online Portal

✤ SMS Service

✤ Missed Call""",
  """""",
  """✤ EPFO introduced a new system to facilitate online submission of transfer claims by Members with an objective to make the transfer process transparent, efficient and comfortable for your employees.

✤ You are urged to bring this facility to the notice of all your employees which is available on EPFOs Member portal.

✤ A member has an option to submit his claim either through his present employer or the previous one.

✤ You can see all such claim requests with ease, verify/correct member details, approve and submit the requests online through this portal.

✤ For online submission of the claims, the Digital signature (Class II or above) of the authorized person is required.""",
  """✤ Visit the EPF Portal and click on ‘Our Services’ on the dashboard and click on For Employees.

✤ Click on Member Passbook

✤ The following details must be populated to log in to access the account.""",
  """""",
  """""",
  """""",
  """✤ EPFO Recruitment 2019 Free Job alert for both Fresher and Experienced Candidates updated on March 12, 2019.

✤ Get Direct Official Link for applying EPFO Recruitment 2019 along with current EPFO Recruitment official Notification 2019 here.

✤ Find all recent EPFO Vacancy 2019 across India and check all latest EPFO 2019 job openings instantly here, Know upcoming EPFO Recruitment 2019 immediately here.""",
  """✤ View all Tender Notifications issued by Employees Provident Fund Organisation.

✤ Search live eProcurement business opportunities available in EPFO Tenders section.

✤ Employees Provident Fund Organisation Tenders are further filtered by Bid Submission Date, Tender Value, Project Location & Product Category.

✤Get email alert on Tenders from Employees Provident Fund Organisation - (EPFO).""",
  """""",
  """✤ EPF 24×7 Customer Care Number & Toll Free Helpline- Employee Provident Fund

✤ And Head Office Address List Are Blow Plz Click The Button.""",
  """""",
];
List Instantclaim = [
  """""",
  """Check Your PF Balance
Without Internet Through""",
  """""",
  """""",
  """""",
  """Check Your PF Balance
Without Internet Through""",
  """Check Your PF Balance
Without Internet Through""",
  """""",
  """""",
  """  Helpline Number Solve Your
  Query Related EPF by just
  Giving a Call on Toll Free
  Number""",
  """""",
  """""",
];
List Instantclaim2 = [
  """demo text""",
  """demo text""",
  """demo text""",
  """demo text""",
  """demo text""",
  """demo text""",
  """demo text""",
  """demo text""",
  """demo text""",
  """demo text""",
  """demo text""",
  """""",
];
List Instantcall = [
  """""",
  """EPFOHO UAN ENG to
        7738299899""",
  """""",
  """""",
  """""",
  """+919900990099""",
  """EPFOHO UAN ENG to
        7738299899""",
  """""",
  """""",
  """+919900990099""",
  """""",
  """""",
];
List Instantcallbutton = [
  """""",
  """Send""",
  """""",
  """""",
  """""",
  """Call""",
  """Send""",
  """""",
  """""",
  """Call""",
  """""",
  """""",
];

List<InstantModel> EPFData = List.generate(Instantname.length, (index) {
  return InstantModel(
    Instantname[index],
    Instantboxcolor[index],
    Instanticon[index],
    Instantappbarname[index],
    Instantdetails[index],
    Instantclaim[index],
    Instantclaim2[index],
    Instantcall[index],
    Instantcallbutton[index],
  );
});
