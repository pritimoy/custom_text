import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key,
    required this.text,
    this.softWrap,
    this.textStyle,
  this.onTap,
  this.bottom = 0.0,
  this.left = 0.0,
  this.right = 0.0,
  this.top = 0.0,
  this.maxLines = 10,
  this.textAlign
  }) : super(key: key);
  final String text;
  final bool? softWrap;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final Function()? onTap;
  final double top;
  final double left;
  final double right;
  final double bottom;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding:
        EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
        child: Text(
          text,
          style: textStyle ?? const TextStyle(color: Colors.black, fontSize: 14.0),
          maxLines: maxLines,
          textAlign: textAlign,
          softWrap: softWrap,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
