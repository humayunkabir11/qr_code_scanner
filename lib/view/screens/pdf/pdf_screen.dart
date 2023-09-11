import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:qr_code_scanner/utils/app_colors.dart';
import 'package:qr_code_scanner/utils/app_icons.dart';
import 'package:qr_code_scanner/utils/app_images.dart';
import 'package:qr_code_scanner/utils/app_strings.dart';
import 'package:qr_code_scanner/view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:qr_code_scanner/view/screens/pdf/inner_widgets/pdf_select_color.dart';
import 'package:qr_code_scanner/view/widgets/appbar/app_bar.dart';
import 'package:qr_code_scanner/view/widgets/button/custom_button.dart';
import 'package:qr_code_scanner/view/widgets/image/custom_image.dart';
import 'package:qr_code_scanner/view/widgets/text/custom_text.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar:CustomAppBar(
          appBarContent: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap:(){
                    Get.back();
                  },
                  child: const Icon(Icons.arrow_back_outlined,)),
              const CustomText(
                text: "PDF",
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
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Center(child: CustomImage(imageSrc: AppImages.qrFacebookImage,imageType: ImageType.svg,size: 88,)),
              const SizedBox(height: 24,),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.4,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      backgroundColor: AppColors.themeColor,
                      elevation: 0,
                      padding: const EdgeInsetsDirectional.symmetric(vertical: 16),
                    ),
                    onPressed: (){}, child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   CustomText(text: AppStrings.uploadPdf,
                     color: AppColors.whiteColor,
                     fontSize: 18,
                     fontWeight: FontWeight.w600,
                   ),
                    SizedBox(width: 8,),
                    Icon(Icons.cloud_upload_outlined)
                  ],
                )),

              ),
              const SizedBox(height: 24,),
              const PdfSelectColors(),
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
