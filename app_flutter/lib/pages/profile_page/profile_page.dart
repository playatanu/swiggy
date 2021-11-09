// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiggy/constants.dart';
import 'package:swiggy/pages/profile_page/widgets/my_account_help_widget.dart';
import 'package:swiggy/pages/profile_page/widgets/order_section.dart';
import 'package:swiggy/utilities/size_config.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  //variable to control first drop down menu
  bool firstDropDownSelected = false;

  //variable to control second drop down menu
  bool secondDropDownSelected = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MY ACCOUNT',
          style: kMyAccountTitleTextStyle,
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Saptarsi Roy'.toUpperCase(),
                      style: kMyAccountTitleTextStyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'EDIT',
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                        color: kEditTextColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      '1234567890',
                      style: kPhoneAndEmailTextStyle,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'abcd@email.com',
                      style: kPhoneAndEmailTextStyle,
                    ),
                  ],
                ),
                const Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyAccountHelpWidget(
                  title1: 'MY ACCOUNT',
                  title2: 'Address, Offers & Settings',
                  icon: firstDropDownSelected
                      ? const Icon(Icons.arrow_drop_up_rounded)
                      : const Icon(Icons.arrow_drop_down_rounded),
                  onPressed: () {
                    setState(() {
                      //changing the value to opposite of its value to trigger change for first drop down menu
                      firstDropDownSelected = !firstDropDownSelected;
                    });
                  },
                ),
                const Divider(
                  thickness: 1,
                ),
                MyAccountHelpWidget(
                    title1: 'Help',
                    title2: 'FAQs & Links',
                    icon: secondDropDownSelected
                        ? const Icon(Icons.arrow_drop_up_rounded)
                        : const Icon(Icons.arrow_drop_down_rounded),
                    onPressed: () {
                      setState(() {
                        //changing the value to opposite of its value to trigger change for second drop down menu
                        secondDropDownSelected = !secondDropDownSelected;
                      });
                    }),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            color: kPastOrderBackgroundColor,
            width: MediaQuery.of(context).size.width,
            height: 47,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Past Order',
                style: kPhoneAndEmailTextStyle.copyWith(
                  fontSize: getFont(14),
                  color: kPastOrderTitleColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OrderSection(
                  resturantName: 'Hotel City Pride Ruchi Resturant',
                  address: 'Ramsitapara',
                  price: '40',
                ),
                OrderSection(
                  resturantName: 'Hotel City Pride Ruchi Resturant',
                  address: 'Ramsitapara',
                  price: '40',
                ),
                Divider(
                  thickness: 2,
                  color: black,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(14),
                ),
                Text(
                  'VIEW MORE ORDERS',
                  style: kViewMoreTextStyle,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            color: kPastOrderBackgroundColor,
            width: MediaQuery.of(context).size.width,
            height: getProportionateScreenHeight(30),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: TextButton(
              onPressed: () {
                Fluttertoast.showToast(msg: 'Logged out');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'LOGOUT ',
                    style: kLogoutTextStyle,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: black,
                  )
                ],
              ),
            ),
          ),
          Container(
            color: kPastOrderBackgroundColor,
            width: MediaQuery.of(context).size.width,
            height: getProportionateScreenHeight(50),
            child: Align(
              alignment: Alignment.center,
                child: Text(
              'App Version 1.0.0',
              style: kAppVersionTextStyle,
            ),),
          )
        ],
      ),
    );
  }
}
