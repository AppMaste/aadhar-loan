// ignore_for_file: non_constant_identifier_names

class UpdateAadharModel {
  final String UpdateTitle;
  final String UpdateDetail;
  final String UpdateLink;

  UpdateAadharModel(this.UpdateTitle, this.UpdateDetail, this.UpdateLink);
}

List UpdateTitle = [
  "",
  "Check Adhar Reprint Status",
  "Update Your Address Online",
  "Check Address Update Status",
  "Aadhar Update History",
];

List UpdateDetail = [
  "",
"""Check if your Aadhaar is generated. In case yourhave or updated updated at an Enrolment/Update center ...
Check the status of your Aadhaar PVC card request.""",
"""You can update your Address online in Self Service
Update Portal (SSUP).
For other details updates such as Demographic details (Name, Address, DoB, Gender, Mobile Number, Email) as well as Biometrics (Finger Prints, Iris & Photograph) in Aadhaar you will have to visit Permanent Enrolment Center.
""",
"""Check if your Aadhaar is generated or updated (In case you have updated at an Enrolment/Update center).
¡" + |"
\" + \"You will require EID (Enrolment ID) to check your Aadhaar Status. The EID is displayed on the top of your enrolment/update acknowledgement slip and contains 14 digit enrolment number (1234/12345/12345) and the 14 digit date and time (dd/mm/yyyy hh:mm:ss) of enrolment. These 28 digits together form your Enrolment ID (EID).
¡" + |"
\* + l'In case if you lost EID you can retrieve lost or forgotten EID by your registered mobile number.
""",
"""UIDAl is mandated to issue an easily verifiable 12 digit random number as Unique Identity
""",
];

List UpdateLink = [
  "",
  "https://resident.uidai.gov.in/check-aadhaar",
  "https://resident.uidai.gov.in/lost-uideid",
  "https://ssup.uidai.gov.in/ssupAddressPin/pinGenerate.html",
  "https://resident.uidai.gov.in/verify-email-mobile",
];
