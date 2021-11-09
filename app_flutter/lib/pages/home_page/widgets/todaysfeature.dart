import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TodaysFeatured extends StatelessWidget {
  const TodaysFeatured({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 20),
            child: Text("Today's Featured"),
          ),
          CarouselSlider(
            options:
                CarouselOptions(height: MediaQuery.of(context).size.height / 5),
            items: [
              "https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_508,h_320,c_fill/rk8kqs76q42drtwadulz",
              "https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_508,h_320,c_fill/walisjjxdzwripaalwkz",
              "https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_508,h_320,c_fill/gvjv5azcphg2ytfrw8oe"
            ].map((index) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: const BoxDecoration(
                          image: DecorationImage(image: NetworkImage('')),
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          index,
                          fit: BoxFit.fill,
                        ),
                      ));
                },
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
