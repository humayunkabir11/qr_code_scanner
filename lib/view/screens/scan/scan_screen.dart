import 'package:flutter/material.dart';
import 'package:qr_code_scanner/utils/app_icons.dart';
import 'package:qr_code_scanner/view/widgets/container/custom_container.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_strings.dart';
import '../../widgets/appbar/app_bar.dart';
import '../../widgets/image/custom_image.dart';
import '../../widgets/text/custom_text.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {



  int selectorCategory = 0;
  List<dynamic> categoryList = [
    AppIcons.flashIcon,
    AppIcons.galleryIcon,
    AppIcons.cameraIcon,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: const CustomAppBar(
            appBarContent: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: AppStrings.scan,
                  color: AppColors.themeColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              children: [
                const Center(
                  child: CustomText(
                    text: AppStrings.findQrCode,
                    color: AppColors.b1,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    bottom: 44,
                  ),
                ),
                Container(
                  height: 330,


                ),
                const SizedBox(
                  height: 44,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(categoryList.length, (index) {
                    return GestureDetector(
                      onTap: (){
                        setState(() {
                          selectorCategory=index;
                        });
                      },
                      child: CustomContainerCard(
                        marginRight: 20,
                        marginLeft: 20,
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // border: Border.all(color:AppColors.b1.withOpacity(0.25),width: 1),
                            color: selectorCategory == index ? AppColors.whiteColor : AppColors.themeColor,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 4,
                                  color: AppColors.b1.withOpacity(0.25))
                            ]),
                        content: Center(
                          child: CustomImage(
                            imageSrc: categoryList[index],
                            imageColor: selectorCategory == index
                                ? AppColors.b1
                                : AppColors.whiteColor,
                            size: 18,
                          ),
                        ),
                      ),
                    );
                  }),
                )
              ],
            ),
          ),
        ));
  }
}