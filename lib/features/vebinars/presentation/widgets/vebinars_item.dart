  import 'package:flutter/material.dart';

class VebinarsItem extends StatelessWidget {
  final String title;

  const VebinarsItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.teal.withOpacity(.3),
      ),
      child: Center(
        child: Text(title),
      ),
    );
  }
}

    