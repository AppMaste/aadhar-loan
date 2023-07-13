// ignore_for_file: non_constant_identifier_names

class ServiceModel {
  final String ServiceTitle;
  final String ServiceDetail;
  final String ServiceLink;

  ServiceModel(this.ServiceTitle, this.ServiceDetail, this.ServiceLink);
}

List ServiceTitle = [
  "Verify an Aadhar Number",
  "Verify Email/Mobile Number",
  "Retrieve Lost or Forgotten EID/UID",
  "Virtual Id(VID) Genertor",
  "Aadhar Paperless Offline e-kyc (Beta)",
  "Check Aadhar/Bank Linking Status",
  "Lock/Unlock Biometrics",
  "Aadhar Authentication History",
];

List ServiceDetail = [
  "https://resident.uidai.gov.in/lost-uideid",
  "https://resident.uidai.gov.in/vid-generation",
  "https://resident.uidai.gov.in/lost-uideid",
  "https://uidai.gov.in/ecosystem/authentication-devices-documents/about-aadhaar-paperless-offline-e-kyc.html",
  "https://resident.uidai.gov.in/bio-lock",
  "https://resident.uidai.gov.in/aadhaar-auth-history",
  "https://resident.uidai.gov.in/aadhaar-lockunlock",
  " https://uidai.gov.in/contact-support/have-any-question/1014-faqs/aadhaar-online-services/aadhaar-sms-service.html#:~:text=Resident%20can%20avail%20Aadhaar%20Service,from%20their%20registered%20mobile%20number.",
];

List ServiceLink = [
  """Here you can check if your Aadhaar or Aadhaar submitted to you is a genuine one or not. Resident's are using this service to verify the identity of their workers.
""",
  """You can verify your email address and mobile number that has been declared at the time of enrolment or during latest Aadhaar detail update.
Registered Mobile Number is essential to avail
Aadhaar Online services. In case your mobile number is not registered with your Aadhaar, visit the nearest
Permanent Aadhaar Centre(PAC).
""",
  """Yes, In case your mobile number is registered in Aadhaar, you can find your Enrolment number (EID) or Aadhaar (UID) by clicking on "Retrieve Lost UID/EID" tab under Section Aadhaar enrolment on uidai. gov.in website or https://resident.uidai.gov.in/lost-uideid.
""",
  """VID is a temporary, revocable 16-digit random number mapped with the Aadhaar number. VID can be used in lieu of Aadhaar number whenever authentication or e-KYC services are performed. Authentication may be performed using VID in a manner similar to using Aadhaar number. It is not possible to derive Aadhaar number from VID.
Create or retrieve lost / forgotten a 16 digit Virtual ID for your Aadhaar.
""",
  """Aadhaar Paperless Offline e-KYC is a secure and shareable document which can be used by any
Aadhaar holder for offline verification of identification.
After entering Aadhaar/VID, create a Share Code of
4-characters. A ZIP file containing the Resident's Paperless Offline eKYC will be password protected using the same Share Code. The file will be downloaded into the Resident's device/desktop.
""",
  """Under any circumstance, UIDAI shall not be responsible or liable for the correctness of the displayed status. Further, UIDAI is not storing any information fetched from NPCI server.
""",
  """Any resident with valid Aadhaar should be able to use the service. This feature empowers an Aadhaar holder to lock biometric.
After locking biometrics if a UID is used for invoking any of the Authentication services using a biometric modality (Fingerprint/Iris) a specific error code '330' indicating biometrics are locked.
""",
  """Aadhaar Authentication history service hosted on
UIDAI Website provides details of authentication performed by the individual resident in past.
""",
];
