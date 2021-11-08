import 'package:flutter/widgets.dart';

class FoodBanner extends StatelessWidget {
  const FoodBanner({
    Key? key,
    required this.queryData,
  }) : super(key: key);

  final MediaQueryData queryData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        height: queryData.size.height / 7,
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(12)),
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
                height: queryData.size.height / 7.5,
                width: queryData.size.height / 7.5,
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
