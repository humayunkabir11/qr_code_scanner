import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/core/app_route/app_route.dart';
import 'package:qr_code_scanner/utils/app_colors.dart';
import 'package:qr_code_scanner/utils/app_icons.dart';
import 'package:qr_code_scanner/utils/app_strings.dart';
import 'package:qr_code_scanner/view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:qr_code_scanner/view/widgets/appbar/app_bar.dart';
import 'package:qr_code_scanner/view/widgets/container/custom_container.dart';
import 'package:qr_code_scanner/view/widgets/image/custom_image.dart';
import 'package:qr_code_scanner/view/widgets/text/custom_text.dart';

class GenerateScreen extends StatefulWidget {
  const GenerateScreen({super.key});

  @override
  State<GenerateScreen> createState() => _GenerateScreenState();
}

class _GenerateScreenState extends State<GenerateScreen> {
  List<Map<String,dynamic>> categoryList = [
    {
      "categoryIcon" : AppIcons.urlIcon,
      "category" : "URL"
    },
    {
      "categoryIcon" : AppIcons.menuIcon,
      "category" : "Urls"
    },
    {
      "categoryIcon" : AppIcons.textIcon,
      "category" : "Text"
    },
    {
      "categoryIcon" : AppIcons.contactIcon,
      "category" : "Contact"
    },
    {
      "categoryIcon" : AppIcons.pdfIcon,
      "category" : "Pdf"
    },
    {
      "categoryIcon" : AppIcons.appIcon,
      "category" : "App"
    },
    {
      "categoryIcon" : AppIcons.smsIcon,
      "category" : "Email"
    },
    {
      "categoryIcon" : AppIcons.phoneIcon,
      "category" : "Phone"
    },
    {
      "categoryIcon" : AppIcons.smsIcon,
      "category" : "Sms"
    },
  ];
int selectorCategory = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:const CustomAppBar(
        appBarContent: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: "Generate",
              color:AppColors.themeColor,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 24),
        child: Column(
          children: [
           const Center(
             child: CustomText(
               text: AppStrings.selectCategory,
               color: AppColors.b1,
               fontSize: 20,
               fontWeight: FontWeight.w500,

             ),
           ),
            const SizedBox(height: 16,),
            GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
               physics: const NeverScrollableScrollPhysics(),
              itemCount: 9,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: MediaQuery.of(context).size.width,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                  mainAxisExtent: 110
              ),
            itemBuilder: (context,index){
                return CustomContainerCard(
                  onTap: (){
                    setState(() {
                      selectorCategory = index;
                    }
                    );
                    if(index==0){

                      Future.delayed(const Duration(milliseconds: 100),() {
                        Get.toNamed(AppRoutes.urlScreen);
                      }
                      );
                    }
                    else if(index==1){
                      Future.delayed(const Duration(milliseconds: 100),() {
                        Get.toNamed(AppRoutes.urlsScreen);
                       }
                      );
                    }
                    else if(index==2){
                      Future.delayed(const Duration(milliseconds: 100),() {
                        Get.toNamed(AppRoutes.textScreen);
                       }
                      );
                    }
                    else if(index==3){
                      Future.delayed(const Duration(milliseconds: 100),() {
                        Get.toNamed(AppRoutes.contactScreen);
                       }
                      );
                    }
                    else if(index==4){
                      Future.delayed(const Duration(milliseconds: 100),() {
                        Get.toNamed(AppRoutes.pdfScreen);
                       }
                      );
                    }
                    else if(index==5){
                      Future.delayed(const Duration(milliseconds: 100),() {
                        Get.toNamed(AppRoutes.appScreen);
                       }
                      );
                    }
                    else if(index==6){
                      Future.delayed(const Duration(milliseconds: 100),() {
                        Get.toNamed(AppRoutes.emailScreen);
                       }
                      );
                    }
                    else if(index==7){
                      Future.delayed(const Duration(milliseconds: 100),() {
                        Get.toNamed(AppRoutes.phoneScreen);
                       }
                      );
                    }
                    else if(index==8){
                      Future.delayed(const Duration(milliseconds: 100),() {
                        Get.toNamed(AppRoutes.smsScreen);
                       }
                      );
                    }
                  },

                  content:Column(

                  children: [
                    CustomImage(imageSrc: categoryList[index]["categoryIcon"],imageColor: selectorCategory == index ? AppColors.b1:AppColors.whiteColor,),
                    const SizedBox(),
                    CustomText(text:categoryList[index]["category"],
                      color: selectorCategory == index ? AppColors.b1:AppColors.whiteColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    )
                  ],
                ),
                  paddingLeft: 12,
                  paddingTop: 30,
                  paddingBottom:30 ,
                  paddingRight: 12,
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
      ) ,

    );
  }
}
