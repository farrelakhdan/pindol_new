import 'package:flutter/material.dart';
import 'package:pindol_new/core/constant/colors.dart';
import 'package:pindol_new/core/constant/font_size.dart';
import 'package:pindol_new/core/constant/font_weigth.dart';

// ignore: must_be_immutable
class PasswordWidget extends StatefulWidget {
  final String? label;
  final bool enable;
  final String? hint;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final TextEditingController controller;
  final IconButton? suffixIcon;
  final int? maxLength;
  final TextInputAction textInputAction;
  final Function(String?)? onChanged;
  final String? helperText;
  final TextInputType? keyboardType;
  final int? maxLines;
  final Widget? icon;
  final bool? isError;
  final FocusNode? focus;
  final String title;

  const PasswordWidget({
    super.key,
    required this.textInputAction,
    this.label,
    this.hint,
    required this.validator,
    this.obscureText = false,
    required this.controller,
    this.suffixIcon,
    this.maxLength,
    this.onChanged,
    this.helperText,
    this.keyboardType,
    this.maxLines,
    this.icon,
    this.isError = false,
    required this.enable,
    this.focus,
    required this.title,
  });

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  bool passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: AppFontSize.bodySmall,
                fontWeight: AppFontWeight.bodyRegular,
              ),
            ),
            const Text(
              " *",
              style: TextStyle(
                  fontSize: AppFontSize.bodySmall,
                  fontWeight: AppFontWeight.bodyRegular,
                  color: Colors.red),
            )
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        TextFormField(
          enabled: widget.enable,
          controller: widget.controller,
          textInputAction: widget.textInputAction,
          keyboardType: widget.keyboardType,
          style: const TextStyle(
            color: Colors.black,
          ),
          focusNode: widget.focus,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(12),
            border: Theme.of(context).inputDecorationTheme.border,
            filled: true,
            fillColor: widget.enable ? Colors.white : AppColors.neutral50,
            errorStyle: const TextStyle(
              color: Colors.red,
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.neutral300,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.neutral300,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.primary500,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            hintText: widget.hint,
            hintStyle: const TextStyle(
              fontWeight: AppFontWeight.bodyRegular,
              fontSize: AppFontSize.bodySmall,
              color: AppColors.neutral600,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                passwordVisible ? Icons.visibility_off : Icons.visibility,
                size: 16,
              ),
              onPressed: () {
                setState(() {
                  passwordVisible = !passwordVisible;
                });
              },
            ),
          ),
          obscureText: !passwordVisible,
          validator: (value) => widget.validator!(value),
        ),
      ],
    );
  }
}
