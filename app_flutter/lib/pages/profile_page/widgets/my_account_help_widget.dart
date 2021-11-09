import 'package:flutter/material.dart';
import 'package:swiggy/constants.dart';

class MyAccountHelpWidget extends StatelessWidget {
  final String title1, title2;
  final Icon icon;
  final Function()? onPressed;

  const MyAccountHelpWidget({
    Key? key,
    required this.title1,
    required this.title2,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title1,
              style: kMyAccountTitleTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              title2,
              style: kPhoneAndEmailTextStyle,
            )
          ],
        ),
        IconButton(
          onPressed: onPressed,
          icon: icon,
        )
      ],
    );
  }
}
