import 'package:flutter/material.dart';

import 'package:swiggy/pages/home_page/widgets/filterelementcontainer.dart';

class FilterChoies extends StatelessWidget {
  const FilterChoies({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text('Best Food for You'),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            SizedBox(width: 20),

            ///FilterElementContainer banner [homepage/widgets/filterelementcontainer.dart]
            FilterElementContainer(filtername: 'View'),
            FilterElementContainer(filtername: 'Non-Veg'),
            FilterElementContainer(filtername: 'Rated 4.5+'),
            FilterElementContainer(filtername: 'Rated 5.0+'),
          ],
        ),
      )
    ]);
  }
}
