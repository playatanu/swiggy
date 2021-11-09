//Contains constants textstyle, colours which are to be used in the code
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiggy/utilities/size_config.dart';

//TextStyle for my account title in profile page
final kMyAccountTitleTextStyle = GoogleFonts.roboto(
  fontSize: getFont(24),
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

//Color for edit textbutton in profile page
const kEditTextColor = Color(0xFFFF8A00);

//text style for phone number and email in profile page
final kPhoneAndEmailTextStyle = GoogleFonts.roboto(
  fontSize: getFont(12),
  color: const Color(0xFF494747),
);

//TextStyle for resturant name in order section of profile page
final kResturantNameTextStyle = GoogleFonts.roboto(
  fontWeight: FontWeight.w500,
  fontSize: getFont(14),
  color: black,
);

//TextStyle for delivered text in order section of profile_page
final kDeliveredTextStyle = GoogleFonts.roboto(
  fontWeight: FontWeight.bold,
  fontSize: getFont(14),
  color: black,
);

//TextStyle for cost of food in order section of profile_page
final kFoodPriceTextStyle = GoogleFonts.roboto(
  fontWeight: FontWeight.normal,
  fontSize: getFont(12),
  color: const Color(0xFF7A7A7A),
);

//Color for past oder title background in profile page
const kPastOrderBackgroundColor = Color(0xFFF5F5F5);

//Color for past order title in profile page
const kPastOrderTitleColor = Color(0xFF525252);

//Black color
const Color black = Colors.black;

//White color
const Color white = Colors.white;

//Gray color
const Color gray = Color(0xffF6F6F6);
