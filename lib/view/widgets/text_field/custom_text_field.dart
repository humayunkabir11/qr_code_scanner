import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qr_code_scanner/utils/app_colors.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    this.textEditingController,
    this.focusNode,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.cursorColor = AppColors.b1,
    this.inputTextStyle,
    this.textAlignVertical = TextAlignVertical.center,
    this.textAlign = TextAlign.start,
    this.onChanged,
    this.maxLines = 1,
    this.validator,
    this.hintText,
    this.hintStyle,
    this.fillColor = AppColors.whiteColor,
    this.suffixIcon,
    this.suffixIconColor,
    this.fieldBorderRadius = 8,
    this.fieldBorderColor = AppColors.whiteColor,
    this.isPassword = false,
    this.isPrefixIcon = false,
    this.prefixIconColor,
    this.prefixIconSrc,
    this.readOnly = false,
    super.key
  }
      );

  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final Color cursorColor;
  final TextStyle? inputTextStyle;
  final TextAlignVertical? textAlignVertical;
  final TextAlign textAlign;
  final int? maxLines;
  final void Function(String)? onChanged;
  final FormFieldValidator? validator;
  final String? hintText;
  final TextStyle? hintStyle;
  final Color? fillColor;
  final Color? suffixIconColor;
  final Widget? suffixIcon;
  final double fieldBorderRadius;
  final Color fieldBorderColor;
  final bool isPassword;
  final bool isPrefixIcon;
  final String ?prefixIconSrc;
  final Color ? prefixIconColor;
  final bool readOnly;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: widget.readOnly,
      controller: widget.textEditingController,
      focusNode: widget.focusNode,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      cursorColor: widget.cursorColor,
      style: widget.inputTextStyle,
      onChanged: widget.onChanged,
      maxLines: widget.maxLines,
      obscureText: widget.isPassword ? obscureText : false,
      validator: widget.validator,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: widget.hintStyle,
        fillColor: widget.fillColor,
        filled: true,
        prefixIcon: widget.isPrefixIcon ? Padding(
          padding:   EdgeInsetsDirectional.only(start: 16, top: 1, bottom: 1, end: 16),
          child: SvgPicture.asset(widget.prefixIconSrc ?? ""),
        ) : null,
        prefixIconColor: widget.prefixIconColor,
        suffixIcon: widget.isPassword ? GestureDetector(
            onTap: toggle,
            child: Padding(
              padding:  const EdgeInsetsDirectional.only(start: 16, top: 1, bottom: 1, end: 16),
              child: widget.suffixIcon,
            )
        ) : Padding(
          padding: const EdgeInsetsDirectional.only(start: 16, top: 16, bottom: 16, end: 16),
          child: widget.suffixIcon,
        ),
        suffixIconColor: widget.suffixIconColor,
        border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(widget.fieldBorderRadius),
            borderSide: BorderSide(color: widget.fieldBorderColor, width: 1),
            ),
        focusedBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(widget.fieldBorderRadius),
            borderSide: BorderSide(color: widget.fieldBorderColor, width: 1),
           ),
        enabledBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(widget.fieldBorderRadius),
            borderSide: BorderSide(color: widget.fieldBorderColor, width: 1),
            ),
      ),
    );
  }
  void toggle() {
    setState(() {
      obscureText = !obscureText;
    });
  }
}

