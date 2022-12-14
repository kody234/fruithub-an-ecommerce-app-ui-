import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    Key? key,
    this.controller,
    required this.hintText,
    this.icon,
    this.validator,
    this.obscure,
    this.action,
  }) : super(key: key);
  final TextEditingController? controller;
  final String hintText;
  final IconData? icon;
  final String? Function(String?)? validator;
  final bool? obscure;
  final Function(String)? action;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: action,
      obscureText: obscure ?? false,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        hintText: hintText,
        fillColor: const Color(0xffF3F1F1),
        filled: true,
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(16.r)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(16.r)),
      ),
    );
  }
}
