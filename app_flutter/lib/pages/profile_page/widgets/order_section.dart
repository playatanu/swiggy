import 'package:flutter/material.dart';
import 'package:swiggy/constants.dart';
import 'package:swiggy/utilities/size_config.dart';

class OrderSection extends StatelessWidget {
  final String address, resturantName, price;

  const OrderSection({
    Key? key,
    required this.resturantName,
    required this.address,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getProportionateScreenHeight(10),
        left: getProportionateScreenWidth(20),
        right: getProportionateScreenWidth(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                resturantName,
                style: kResturantNameTextStyle,
              ),
              Row(
                children: [
                  Text(
                    'Delivered',
                    style: kDeliveredTextStyle,
                  ),
                  Icon(
                    Icons.verified_rounded,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
          Text(
            address,
            style: kDeliveredTextStyle.copyWith(
              color: Color(0xFF9E9E9E),
            ),
          ),
          Text(
            '\$ $price > ',
            style: kFoodPriceTextStyle,
          )
        ],
      ),
    );
  }
}
