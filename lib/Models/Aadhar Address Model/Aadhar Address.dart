class AddressModel {
  final addressname, addressdetails;

  AddressModel(
      this.addressname,
      this.addressdetails,
      );
}

List addressname = [
  "Download E-Aadhar",
  "Update Aadhar Address",
  "Aadhar Status",
  "Verify Aadhar Number",
  "Aadhar Center Near By You",
  "Aadhar Bank Linking Status",
  "Book Appoinment for Aadhar",
  "Order Aadhar Reprint",
  "Check Aadhar Address Update Status",
];

List addressdetails = [
  """Order Adhar Reprint Step 1: First, visit the official UIDAI website, and tap on My Aadhaar. Step 2: You then need to click on the Order Aadhaar Reprint option. Step 3: After that, you will be asked to enter your 12-digit Aadhaar number.""",
  """Update Your Aadhar ar Enrollment/ Update Center You can update your Address online in Self Service Update Portal (SSUP). For other details updates such as Demographic details (Name, Address, DoB, Gender, Mobile Number, Email) as well as Biometrics (Finger Prints, Iris & Photograph) in Aadhaar you will have to visit Permanent Enrolment Center.""",
  """Check Aadhar Update Status Check if your Aadhaar is generated or updated (In case you have updated at an Enrolment/Update center).

You will require EID (Enrolment ID) to check your Aadhaar Status. The EID is displayed on the top of your enrolment/update acknowledgement slip and contains 14 digit enrolment number (1234/12345/12345) and the 14 digit date and time (dd/mm/yyyy hh:mm:ss) of enrolment. These 28 digits together form your Enrolment ID (EID).

In case if you lost EID you can retrieve lost or forgotten EID by your registered mobile number.
""",
  """Verify an Aadhar Number Here you can check if your Aadhaar or Aadhaar submitted to you is a genuine one or not. Resident’s are using this service to verify the identity of their workers.""",
  """Locate an Enrolment / Update center near you. In order to enrol for Aadhaar for yourself or for your family member, you will be required to visit an Aadhaar Enrolment Center. In case your Demographic details (Name, Address, DoB, Gender, Mobile Number, Email)is not up-to-date in your Aadhaar, you can get the same updated by visiting an Aadhaar Enrolment Center. Aadhaar holders children( who have turned 15) or others in need of updating Biometrcis details - Finger Prints, Iris & Photograph are required to visit an Enrolment center too. Please get valid Address proof documents.
""",
  """Check Aadhaar/Bank Linking Status Under any circumstance, UIDAI shall not be responsible or liable for the correctness of the displayed status. Further, UIDAI is not storing any information fetched from NPCI server.""",
  """Book an Appointment. 

This facility (pilot) is for booking an appointment at an Aadhaar Seva Kendra for Aadhaar services listed below:

 ● Fresh Aadhaar enrolment

 ● Name Update

 ● Address Update

 ● Mobile No. Update

 ● Email ID Update

 ● Date of Birth Update

 ● Gender Update

 ● Biometric (Photo + Fingerprints + Iris) Update
""",
  """Order Adhar Reprint Step 1: First, visit the official UIDAI website, and tap on My Aadhaar. Step 2: You then need to click on the Order Aadhaar Reprint option. Step 3: After that, you will be asked to enter your 12-digit Aadhaar number.""",
  """Check Address Update Status Check if your Aadhaar is generated or updated (In case you have updated at an Enrolment/Update center).

You will require EID (Enrolment ID) to check your Aadhaar Status. The EID is displayed on the top of your enrolment/update acknowledgement slip and contains 14 digit enrolment number (1234/12345/12345) and the 14 digit date and time (dd/mm/yyyy hh:mm:ss) of enrolment. These 28 digits together form your Enrolment ID (EID).

In case if you lost EID you can retrieve lost or forgotten EID by your registered mobile number.
""",
];

List<AddressModel> AddressData = List.generate(addressname.length,
        (index) => AddressModel(addressname[index], addressdetails[index]));
