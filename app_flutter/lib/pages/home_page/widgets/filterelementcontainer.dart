import 'package:flutter/material.dart';
import 'package:swiggy/constants.dart';

class FilterElementContainer extends StatelessWidget {
  const FilterElementContainer({
    Key? key,
    required this.filtername,
  }) : super(key: key);

  final String filtername;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, top: 10),
      child: Container(
        height: 30,
        width: 100,
        decoration: BoxDecoration(
            border: Border.all(width: 1),
            color: gray,
            borderRadius: BorderRadius.circular(10)),
        child: Center(child: Text(filtername)),
      ),
    );
  }
}
