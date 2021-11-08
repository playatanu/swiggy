import 'package:flutter/material.dart';
import 'package:swiggy/views/homepage/widgets/filterelementcontainer.dart';

class FilterChoies extends StatelessWidget {
  const FilterChoies({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text('Best Food for You'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              ///FilterElementContainer banner [homepage/widgets/filterelementcontainer.dart]
              FilterElementContainer(filtername: 'View'),
              FilterElementContainer(filtername: 'Non-Veg'),
              FilterElementContainer(filtername: 'Rated 4.5+'),
              FilterElementContainer(filtername: 'Rated 5.0+'),
            ],
          ),
        )
      ]),
    );
  }
}
