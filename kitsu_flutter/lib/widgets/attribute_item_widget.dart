import 'package:flutter/material.dart';

class AttributeItemWidget extends StatelessWidget {
  final String name;
  final String value;
  const AttributeItemWidget(
      {super.key, required this.name, required this.value});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$name: ',
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black),
        children: <TextSpan>[
          TextSpan(text: value, style: DefaultTextStyle.of(context).style),
        ],
      ),
    );
  }
}
