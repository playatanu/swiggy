import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiggy/constants.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MY ACCOUNT',
          style: kMyAccountTitleTextStyle,
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
      ),
      body: Padding(
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
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
