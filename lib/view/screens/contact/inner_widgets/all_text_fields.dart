import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_code_scanner/utils/app_colors.dart';
import 'package:qr_code_scanner/utils/app_strings.dart';
import 'package:qr_code_scanner/view/widgets/text_field/custom_text_field.dart';

class AllTextField extends StatefulWidget {
  const AllTextField({super.key});

  @override
  State<AllTextField> createState() => _AllTextFieldState();
}

class _AllTextFieldState extends State<AllTextField> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CustomTextField(
          isPrefixIcon: false,
          fillColor: Colors.transparent,
          hintText: AppStrings.yourName,
          hintStyle:GoogleFonts.poppins(
            color: AppColors.b5,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          fieldBorderColor: AppColors.b1,
          borderWidth: 2,
        ),
        const SizedBox(height: 4,),
        CustomTextField(
          fieldBorderRadius: 0,
          isPrefixIcon: false,
          fillColor: Colors.transparent,
          hintText: AppStrings.emailAddress,
          hintStyle:GoogleFonts.poppins(
            color: AppColors.b5,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          fieldBorderColor: AppColors.b1,
          borderWidth: 2,
        ),
        const SizedBox(height: 4,),
        CustomTextField(
          fieldBorderRadius: 0,
          isPrefixIcon: false,
          fillColor: Colors.transparent,
          hintText: AppStrings.phone,
          hintStyle:GoogleFonts.poppins(
            color: AppColors.b5,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          fieldBorderColor: AppColors.b1,
          borderWidth: 2,
        ),
        const SizedBox(height: 4,),
        CustomTextField(
          fieldBorderRadius: 0,
          isPrefixIcon: false,
          fillColor: Colors.transparent,
          hintText: AppStrings.address,
          hintStyle:GoogleFonts.poppins(
            color: AppColors.b5,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          fieldBorderColor: AppColors.b1,
          borderWidth: 2,
        ),
        const SizedBox(height: 4,),
        CustomTextField(
          isPrefixIcon: false,
          fillColor: Colors.transparent,
          hintText: AppStrings.website,
          hintStyle:GoogleFonts.poppins(
            color: AppColors.b5,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          fieldBorderColor: AppColors.b1,
          borderWidth: 2,
        ),
      ],
    );
  }
}
