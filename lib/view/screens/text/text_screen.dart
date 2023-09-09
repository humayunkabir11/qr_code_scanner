import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_code_scanner/utils/app_colors.dart';
import 'package:qr_code_scanner/utils/app_strings.dart';
import 'package:qr_code_scanner/view/screens/text/inner_widgets/text_select_color.dart';
import 'package:qr_code_scanner/view/screens/url/inner_widgets/select_color_section.dart';
import 'package:qr_code_scanner/view/widgets/appbar/app_bar.dart';
import 'package:qr_code_scanner/view/widgets/button/custom_button.dart';
import 'package:qr_code_scanner/view/widgets/text/custom_text.dart';
import 'package:qr_code_scanner/view/widgets/text_field/custom_text_field.dart';

class TextScreen extends StatefulWidget {
  const TextScreen({super.key});

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar:   CustomAppBar(
          appBarContent: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap:(){
                    Get.back();
                  },
                  child: Icon(Icons.arrow_back_outlined)),
              CustomText(
                text: "Text",
                color:AppColors.themeColor,
                fontSize: 24,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
              SizedBox()
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsetsDirectional.symmetric(vertical: 24,horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                isPrefixIcon: false,
                fillColor: Colors.transparent,
                hintText: AppStrings.enterYourText,
                hintStyle:GoogleFonts.poppins(
                  color: AppColors.b5,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                fieldBorderColor: AppColors.b1,
                borderWidth: 2,
              ),
              const SizedBox(height: 8,),
              const CustomText(
                text: AppStrings.linkOpenWhenScanned,
                color: AppColors.b2,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(height: 24,),
              TextSelectColor(),
              const SizedBox(height: 50,),
              Center(
                child: CustomButton(
                    onPressed: (){
                    },
                    textAlign: TextAlign.center,
                    buttonRadius: 50,
                    leftPadding: 44,
                    rightPadding: 44,
                    borderWidth: 0,
                    elevation: 0,
                    buttonBgColor: AppColors.themeColor,
                    titleText: AppStrings.create),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
