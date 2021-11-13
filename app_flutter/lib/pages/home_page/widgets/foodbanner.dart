import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:swiggy/constants.dart';

class FoodBanner extends StatelessWidget {
  const FoodBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: height / 6,
        decoration: BoxDecoration(
          color: white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5.0,
            ),
          ],
          // border: Border.all(width: 0, color: Colors.black26),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Food is Goods',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    'Enjoy your fev foods',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
                  ),
                  Row(
                    children: const [
                      Text(
                        'View All',
                      ),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                ],
              ),
              Container(
                  height: width / 5,
                  width: height / 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_140,h_140,c_fill/rhxfjoksmhf3oqzwuay2',
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
