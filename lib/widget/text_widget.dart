import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.text,  this.ontap,  this.text_style});
  final String text;
  final VoidCallback? ontap;
  final TextStyle? text_style;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Text(
        text,
        style: text_style??Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
