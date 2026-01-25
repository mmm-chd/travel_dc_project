import 'package:dicoding_project/configs/themes_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextfield extends StatelessWidget {
  final Color? fillColor, borderColor;
  final bool isNumber;
  final String label, hint;
  final double? marginTop;
  final TextEditingController controller;
  final bool? obscureText,
      readOnly,
      enableSuggestion,
      isShow,
      enableInteractiveSelection,
      useSuffixIcon,
      usePrefixIcon,
      filled;
  final bool useFlLabel;
  final GestureTapCallback? onTap, onTapSuffixIcon, onTapPrefixIcon;
  final ValueChanged<String>? onChanged;
  final Widget? suffixIcon, prefixIcon;
  final FocusNode? focusNode;

  const CustomTextfield({
    super.key,
    required this.isNumber,
    this.label = "",
    this.hint = "",
    this.marginTop,
    required this.controller,
    this.obscureText,
    this.readOnly,
    this.enableSuggestion,
    this.isShow,
    this.enableInteractiveSelection,
    this.onTap,
    this.onTapSuffixIcon,
    this.onTapPrefixIcon,
    this.suffixIcon,
    this.prefixIcon,
    this.focusNode,
    this.onChanged,
    this.useSuffixIcon = false,
    this.usePrefixIcon = false,
    this.fillColor,
    this.borderColor,
    this.filled,
    this.useFlLabel = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop ?? 0.0),
      child: TextFormField(
        focusNode: focusNode,
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
        inputFormatters: isNumber
            ? [FilteringTextInputFormatter.digitsOnly]
            : [],
        controller: controller,
        decoration: InputDecoration(
          filled: filled ?? false,
          fillColor: fillColor,
          labelStyle: TextStyle(color: Colors.grey.shade700),
          hintStyle: TextStyle(color: Colors.grey.withValues(alpha: 0.7)),
          labelText: label,
          alignLabelWithHint: false,
          hintText: hint,
          floatingLabelBehavior: useFlLabel
              ? FloatingLabelBehavior.auto
              : FloatingLabelBehavior.never,
          hintFadeDuration: Duration(milliseconds: 500),

          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: Colors.red),
          ),

          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: Colors.red),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: PColor.primary),
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: borderColor ?? Colors.grey.shade300),
          ),

          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: Colors.grey.shade200),
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: borderColor ?? Colors.grey.shade400),
          ),

          prefixIcon: usePrefixIcon!
              ? GestureDetector(onTap: onTapPrefixIcon, child: prefixIcon)
              : null,
          suffixIcon: useSuffixIcon!
              ? GestureDetector(onTap: onTapSuffixIcon, child: suffixIcon)
              : null,
          contentPadding: EdgeInsets.all(16),
        ),
        enableInteractiveSelection: enableInteractiveSelection ?? true,
        enableSuggestions: enableSuggestion ?? false,
        obscureText: obscureText ?? false,
        readOnly: readOnly ?? false,
        onChanged: onChanged,
        onTap: onTap,
      ),
    );
  }
}
