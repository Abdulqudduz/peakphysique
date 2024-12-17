import 'package:flutter/material.dart';
import 'package:peak_physique/custom_theme.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? enabled;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final Iterable<String>? autofillHints;
  final double? hintTextFontSize;
  final TextInputType? textInputType;
  final void Function(String)? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final bool? autofocus;
  final FocusNode? focusNode;
  final SpellCheckConfiguration? spellCheckConfiguration;
  final bool allowEmojis;
  final String? label;
  final bool obscureText;

  const CustomTextFormField({
    super.key,
    required this.controller,
    this.enabled,
    this.textInputAction,
    this.validator,
    this.autofillHints,
    required this.hintText,
    this.hintTextFontSize,
    this.prefixIcon,
    this.suffixIcon,
    this.textInputType,
    this.onChanged,
    this.onFieldSubmitted,
    this.autofocus,
    this.focusNode,
    this.spellCheckConfiguration,
    this.allowEmojis = true,
    this.label,
    this.obscureText = false,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomTheme>();

    return Column(
      children: [
        if (widget.label != null) ...[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.label!,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
        ],
        TextFormField(
          controller: widget.controller,
          enabled: widget.enabled,
          obscureText: widget.obscureText,
          textInputAction: widget.textInputAction,
          validator: widget.validator,
          keyboardType: widget.textInputType,
          autofocus: widget.autofocus ?? false,
          focusNode: widget.focusNode,
          autofillHints: widget.autofillHints,
          onChanged: widget.onChanged,
          onFieldSubmitted: widget.onFieldSubmitted,
          style: const TextStyle(fontSize: 16.0),

          // Default cursor color
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            prefixIcon: widget.prefixIcon,
            // prefixIconColor: Colors.white,
            suffixIcon: widget.suffixIcon,
            suffixIconColor: customTheme!.inactiveColor,
            hintText: widget.hintText,
            hintStyle: TextStyle(
              fontSize:
                  widget.hintTextFontSize ?? 14.0, // Default hint font size
              color: customTheme!.inactiveColor,
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(
                color: customTheme.customSecondaryGradientColor!.colors[0],
                width: 2.0,
              ),
            ),
            errorStyle: const TextStyle(color: Colors.red),
          ),
        ),
      ],
    );
  }
}
