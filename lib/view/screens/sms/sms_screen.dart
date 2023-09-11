import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_code_scanner/utils/app_colors.dart';
import 'package:qr_code_scanner/utils/app_strings.dart';
import 'package:qr_code_scanner/view/screens/app/inner_widgets/app_select_color_section.dart';
import 'package:qr_code_scanner/view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:qr_code_scanner/view/widgets/appbar/app_bar.dart';
import 'package:qr_code_scanner/view/widgets/button/custom_button.dart';
import 'package:qr_code_scanner/view/widgets/text/custom_text.dart';
import 'package:qr_code_scanner/view/widgets/text_field/custom_text_field.dart';

class SmsScreen extends StatefulWidget {
  const SmsScreen({super.key});

  @override
  State<SmsScreen> createState() => _SelectColorSectionsState();
}

class _SelectColorSectionsState extends State<SmsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        appBarContent: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap:(){
                  Get.back();
                },
                child: const Icon(Icons.arrow_back_outlined)),
            const CustomText(
              text: "Sms",
              color:AppColors.themeColor,
              fontSize: 24,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.center,
            ),
            const SizedBox()
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsetsDirectional.symmetric(vertical: 24,horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              fieldBorderRadius: 0,
              isPrefixIcon: false,
              fillColor: Colors.transparent,
              hintText: AppStrings.enterPhoneNumber,
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
              hintText: AppStrings.enterMessage,
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
            const SizedBox(height: 16,),

            const AppSelectColorSections(),

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
      // bottomNavigationBar:const CustomNavBar(currentIndex: 1) ,
    );
  }
}
