import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/core/app_route/app_route.dart';
import 'package:qr_code_scanner/utils/app_icons.dart';
import 'package:qr_code_scanner/utils/app_images.dart';
import 'package:qr_code_scanner/utils/app_strings.dart';
import 'package:qr_code_scanner/view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:qr_code_scanner/view/widgets/button/custom_button.dart';
import 'package:qr_code_scanner/view/widgets/container/custom_container.dart';
import 'package:qr_code_scanner/view/widgets/image/custom_image.dart';
import 'package:qr_code_scanner/view/widgets/text/custom_text.dart';

import '../../../utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectorCategory = 0;
  List<Map<String,dynamic>> categoryList = [
    {
      "categoryIcon" : AppIcons.generatorIcon,
      "category" : AppStrings.generate,
    },
    {
      "categoryIcon" : AppIcons.generatorIcon,
      "category" : AppStrings.scan,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body:Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:List.generate(categoryList.length, (index) {
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        selectorCategory=index;
                      });
                      if(index==0){
                         Navigator.push(context, MaterialPageRoute(builder: (_)=>const CustomNavBar(currentIndex: 1)));
                      }
                      else if (index==1){
                        Get.toNamed(AppRoutes.scanScreen);
                      }
                    },
                    child: CustomContainerCard(
                        marginLeft: 15,
                        marginRight: 15,
                        marginBottom: 40,
                        height: 145,
                        width: 145,
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
                        content:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImage(imageSrc: categoryList[index]["categoryIcon"],imageColor: selectorCategory == index ? AppColors.b1:AppColors.whiteColor,),
                            CustomText(text:categoryList[index]["category"],
                              color: selectorCategory == index ? AppColors.b1:AppColors.whiteColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              top: 10,
                            )
                          ],
                        )
                    ),
                  );
                })
            ),
            CustomButton(onPressed: (){
              Get.toNamed(AppRoutes.scanhistoryScreen);
               },
              titleText:AppStrings.history,
              titleColor: AppColors.b1,
              buttonWidth: 170,
              buttonRadius: 45,
              buttonBgColor: AppColors.themeColor,
            )

          ],
        ),
      ),
    ));
  }
}