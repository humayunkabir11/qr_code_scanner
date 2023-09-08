import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_code_scanner/utils/app_colors.dart';
import 'package:qr_code_scanner/utils/app_icons.dart';
import 'package:qr_code_scanner/utils/app_images.dart';
import 'package:qr_code_scanner/view/widgets/appbar/app_bar.dart';
import 'package:qr_code_scanner/view/widgets/button/custom_button.dart';
import 'package:qr_code_scanner/view/widgets/image/custom_image.dart';
import 'package:qr_code_scanner/view/widgets/text/custom_text.dart';
import 'package:qr_code_scanner/view/widgets/text_field/custom_text_field.dart';
class UrlScreen extends StatefulWidget {
  const UrlScreen({super.key});

  @override
  State<UrlScreen> createState() => _SrlScreenState();
}

class _SrlScreenState extends State<UrlScreen> {
  List colors = [
      AppColors.b1,AppColors.themeColor,AppColors.red,AppColors.yellow,AppColors.blue,AppColors.violate,AppColors.majenda,AppColors.blueSky,AppColors.rainBo
  ];
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar:  const CustomAppBar(
           appBarContent: Row(
             children: [
               Icon(Icons.arrow_back_outlined),
               CustomText(
                 text: "URl",
                 textAlign: TextAlign.center,
               )
             ],
           ),
       ),
        body: SingleChildScrollView(
          padding: const EdgeInsetsDirectional.symmetric(vertical: 24,horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                fillColor: Colors.transparent,
                hintText: "Enter URL",
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
                text: "Link open when scanned",
                color: AppColors.b2,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
               const SizedBox(height: 24,),
               const CustomText(
                bottom: 12,
                text: "Select Color",
                  color: AppColors.b1,
                  fontSize: 20,
                  fontWeight: FontWeight.w600
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(colors.length, (index) => GestureDetector(
                    onTap: (){},
                    child: Container(
                      margin: const EdgeInsetsDirectional.only(end: 8),
                      height: 30,
                      width: 30,
                      decoration:  BoxDecoration(
                        color: colors[index],
                        shape: BoxShape.circle,

                      ),
                    ),
                  ))
                ),
              ),
               const CustomText(
                  bottom: 12,
                  top: 16,
                  text: "Select Shape",
                  color: AppColors.b1,
                  fontSize: 20,
                  fontWeight: FontWeight.w600
              ),
              // Image.asset(AppImages.qr2),
              const SizedBox(height: 50,),
              Center(
                child: CustomButton(
                  textAlign: TextAlign.center,
                  buttonRadius: 50,
                  leftPadding: 44,
                  rightPadding: 44,
                  onPressed: (){},
                  borderWidth: 0,
                  elevation: 0,
                  buttonBgColor: AppColors.themeColor,
                  titleText: "Create",),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
