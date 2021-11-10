import 'package:flutter/widgets.dart';
import 'package:swiggy/constants.dart';

class FoodBanner extends StatelessWidget {
  const FoodBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        height: height / 7,
        decoration: BoxDecoration(
            color: white,
            boxShadow: const [
              BoxShadow(
                color: black,
                blurRadius: 2.0,
              ),
            ],
            //  border: Border.all(width: 0.1),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Food is Goods'),
                  Text('Enjoy your fev foods'),
                  Text('View All')
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.width / 7.5,
                width: width / 7.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: const DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(
                        'https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_140,h_140,c_fill/rhxfjoksmhf3oqzwuay2'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
