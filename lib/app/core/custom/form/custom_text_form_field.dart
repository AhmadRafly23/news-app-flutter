import 'package:flutter/material.dart';
import 'package:newsapp/app/core/const/app_style.dart';
import 'package:newsapp/app/core/const/color.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;

  const CustomTextFormField({
    super.key,
    required this.label,
    this.controller,
    this.padding,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(bottom: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: poppinsRegular.copyWith(
              color: grayColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: controller,
            style: poppinsRegular.copyWith(
              color: blackColor,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: grayColor,
                ),
                borderRadius: borderRadius ?? BorderRadius.zero,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
