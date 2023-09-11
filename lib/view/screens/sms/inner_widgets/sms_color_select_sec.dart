import 'package:flutter/material.dart';
import 'package:qr_code_scanner/utils/app_colors.dart';
import 'package:qr_code_scanner/utils/app_images.dart';
import 'package:qr_code_scanner/utils/app_strings.dart';
import 'package:qr_code_scanner/view/widgets/image/custom_image.dart';
import 'package:qr_code_scanner/view/widgets/text/custom_text.dart';

class SmsSelectColorSec extends StatefulWidget {
  const SmsSelectColorSec({super.key});

  @override
  State<SmsSelectColorSec> createState() => _SelectColorSectionState();
}

class _SelectColorSectionState extends State<SmsSelectColorSec> {
  List<dynamic> colors = [
    AppColors.b1,AppColors.themeColor,AppColors.red,AppColors.yellow,AppColors.blue,AppColors.violate,AppColors.majenda,AppColors.blueSky,AppColors.rainBo,
  ];
  List qrImages = [AppImages.qrYoutubeImage,AppImages.qrFacebookImage,AppImages.qrFacebookImage,AppImages.qrYoutubeImage,AppImages.qrYoutubeImage];
  bool changColor = true;
  int selectedColor =0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
            bottom: 12,
            text: AppStrings.selectColor,
            color: AppColors.b1,
            fontSize: 20,
            fontWeight: FontWeight.w600
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:  Row(
                children: List.generate(colors.length, (index) => GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedColor = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsetsDirectional.only(end: 8),
                    height: 40,
                    decoration: BoxDecoration(
                      // border: Border.all(width: 2,color: AppColors.themeColor)
                      border: Border(
                        bottom: BorderSide(width: 2, color: selectedColor==index? colors[index]:AppColors.whiteColor),
                      ),
                    ),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration:  BoxDecoration(
                        color:  colors[index],
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                )
                )
            )
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
                bottom: 12,
                top: 16,
                text: AppStrings.selectShape,
                color: AppColors.b1,
                fontSize: 20,
                fontWeight: FontWeight.w600
            ),
            // Image.asset(AppImages.qr2),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(qrImages.length, (index) =>CustomImage(imageSrc: qrImages[index],imageType: ImageType.svg,size:60,imageColor: colors[selectedColor],),)

              // CustomImage(imageSrc: AppImages.qrTwoImage,imageType: ImageType.svg,),
              // CustomImage(imageSrc: AppImages.qrThreeImage,imageType: ImageType.svg,),
              // CustomImage(imageSrc: AppImages.qrFacebookImage,imageType: ImageType.svg,),
              // CustomImage(imageSrc: AppImages.qrYoutubeImage,imageType: ImageType.svg,),

            ),
          ],
        )

      ],
    );
  }
}
