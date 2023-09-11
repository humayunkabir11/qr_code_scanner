import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/core/app_route/app_route.dart';
import 'package:qr_code_scanner/utils/app_icons.dart';
import 'package:qr_code_scanner/utils/app_strings.dart';

import '../../../utils/app_colors.dart';
import '../../widgets/appbar/app_bar.dart';
import '../../widgets/container/custom_container.dart';
import '../../widgets/image/custom_image.dart';
import '../../widgets/text/custom_text.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int selectorCategory = 0;
  List<Map<String,dynamic>> categoryList = [
    {
      "categoryIcon" : AppIcons.historyIcon,
      "category" : AppStrings.saveForLater,
    },
    {
      "categoryIcon" : AppIcons.scanIcon,
      "category" : AppStrings.scanHistory,
    },
    {
      "categoryIcon" : AppIcons.favouriteIcon,
      "category" : AppStrings.favorite,
    },
    {
      "categoryIcon" : AppIcons.aboutUsIcon,
      "category" : AppStrings.aboutUs,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return   SafeArea(child: Scaffold(
      appBar:  const CustomAppBar(
        appBarContent: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text:"Profile",
              color:AppColors.themeColor,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width,
                  crossAxisSpacing: 24,
                  mainAxisSpacing: 24,
                  mainAxisExtent: 155
              ),
              itemBuilder: (context,index){
                return CustomContainerCard(

                  onTap: (){
                    setState(() {
                      selectorCategory = index;
                    }
                    );
                    if(index==0){
                      Future.delayed(const Duration(seconds: 0),() {
                        Get.toNamed(AppRoutes.saveFileScreen);
                      }
                      );
                    }
                    else if(index==1){
                      Future.delayed(const Duration(seconds: 0),() {
                        Get.toNamed(AppRoutes.scanhistoryScreen);
                      }
                      );
                    }
                    else if(index==2){
                      Future.delayed(const Duration(seconds: 0),() {
                        Get.toNamed(AppRoutes.favoriteScreen);
                      }
                      );
                    }
                    else if(index==3){
                      Future.delayed(const Duration(seconds: 0),() {
                        Get.toNamed(AppRoutes.aboutUs);
                      }
                      );
                    }
                  },

                  content:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImage(imageSrc: categoryList[index]["categoryIcon"],imageColor: selectorCategory == index ? AppColors.b1:AppColors.whiteColor,),
                      const SizedBox(),
                      CustomText(text:categoryList[index]["category"],
                        color: selectorCategory == index ? AppColors.b1:AppColors.whiteColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        top: 10,
                      )
                    ],
                  ),

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      // border: Border.all(color:AppColors.b1.withOpacity(0.25),width: 1),
                      color: selectorCategory == index ? AppColors.whiteColor:AppColors.themeColor,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            color: AppColors.b1.withOpacity(0.25)
                        )
                      ]

                  ),
                );
              },
            )
          ],
        ),
      ),
    ),
    );
  }
}