import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/route_manager.dart';
import 'package:qr_code_scanner/utils/app_colors.dart';
import 'package:qr_code_scanner/utils/app_images.dart';
import 'package:qr_code_scanner/view/widgets/appbar/app_bar.dart';
import 'package:qr_code_scanner/view/widgets/container/custom_container.dart';
import 'package:qr_code_scanner/view/widgets/image/custom_image.dart';
import 'package:qr_code_scanner/view/widgets/text/custom_text.dart';

class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({super.key});

  List<Map<String,dynamic>> scanList = [
    {
      "scanImage" : AppImages.qrFacebookImage,
      "category" : "URLs"
    },
    {
      "scanImage" : AppImages.qrYoutubeImage,
      "category" : "SMS"
    },
    {
      "scanImage" : AppImages.qrThreeImage,
      "category" : "CONTACT"
    },
    {
      "scanImage" : AppImages.qrFacebookImage,
      "category" : "TEXT"
    },
    {
      "scanImage" : AppImages.qrFacebookImage,
      "category" : "PDF"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:   CustomAppBar(
        appBarContent: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap:(){
                  Get.back();
                },
                child: const Icon(Icons.arrow_back_outlined)),
            const CustomText(
              text: "Favorite",
              color:AppColors.themeColor,
              fontSize: 24,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.center,
            ),
            const SizedBox()
          ],
        ),
      ),
      body:  SingleChildScrollView(
        padding: const EdgeInsetsDirectional.symmetric(vertical: 24,horizontal: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(scanList.length, (index) =>
              Slidable(

                endActionPane: ActionPane(motion: const ScrollMotion(), children: [
                  SlidableAction(onPressed: (v){

                  },
                    backgroundColor: AppColors.red,

                    icon: CupertinoIcons.delete,
                  )
                ]),

                child: CustomContainerCard(
                  content:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CustomImage(imageSrc: scanList[index]["scanImage"],imageType: ImageType.svg,size: 40,),
                          const SizedBox(width: 16,),
                          CustomText(color: AppColors.b1,
                            text: scanList[index]["category"],
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      const Icon(CupertinoIcons.heart_solid,color: AppColors.themeColor,size: 18,)
                    ],
                  ),
                  paddingTop: 16,
                  paddingBottom: 16,
                  paddingLeft: 24,
                  paddingRight: 24,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      border: Border.all(color: AppColors.themeColor,width: 0.5)
                  ),

                ),
              )),
        ),
      ) ,
    );
  }
}
