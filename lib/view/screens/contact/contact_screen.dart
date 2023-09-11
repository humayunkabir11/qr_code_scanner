import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:qr_code_scanner/utils/app_colors.dart';
import 'package:qr_code_scanner/utils/app_strings.dart';
import 'package:qr_code_scanner/view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:qr_code_scanner/view/screens/contact/inner_widgets/all_text_fields.dart';
import 'package:qr_code_scanner/view/screens/contact/inner_widgets/contaco_select_colors.dart';
import 'package:qr_code_scanner/view/widgets/appbar/app_bar.dart';
import 'package:qr_code_scanner/view/widgets/button/custom_button.dart';
import 'package:qr_code_scanner/view/widgets/text/custom_text.dart';
class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
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
                text: "Contact",
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
                AllTextField(),
              const SizedBox(height: 8,),
              const CustomText(
                text: AppStrings.linkOpenWhenScanned,
                color: AppColors.b2,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(height: 16,),

              const ContactSelectColors(),

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
      ),
    );
  }
}
