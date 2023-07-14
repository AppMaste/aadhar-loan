// ignore_for_file: non_constant_identifier_names

import 'dart:ui';

class AadharPanLinkModel {
  final String LinkTitle;
  final Color LinkColor;
  final String LinkIcon;

  AadharPanLinkModel(this.LinkTitle, this.LinkColor, this.LinkIcon);
}

List LinkTitle = [
  "Aadhar Pan Info",
  "Why Link Requires?",
  "Link Pan to Aadhar",
  "Important Question",
];

List LinkColor = [
  const Color(0xFFFFF1E9),
  const Color(0xFFEDE9F1),
  const Color(0xFFECF8F7),
  const Color(0xFFFDEEF5),
];

List LinkIcon = [
  "assets/Icon/Aadhar pan Info.png",
  "assets/Icon/Link Required.png",
  "assets/Icon/Pan to Aadhar.png",
  "assets/Icon/Important Question.png",
];
