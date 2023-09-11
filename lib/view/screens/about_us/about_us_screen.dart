import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:qr_code_scanner/utils/app_colors.dart';
import 'package:qr_code_scanner/view/widgets/appbar/app_bar.dart';
import 'package:qr_code_scanner/view/widgets/text/custom_text.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              text: "About Us",
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
        padding: EdgeInsetsDirectional.symmetric(vertical: 24,horizontal: 20),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text:
            "Dui praesent mauris volutpat facilisi ante dictum consectetuer ex turpis eu sapien."
            "Posuere taciti ligula proin natoque conubia augue scelerisque iaculis. Lorem aenean velit arcu ipsum primis iaculis ullamcorper "
            "Posuere taciti ligula proin natoque conubia augue scelerisque iaculis. Lorem aenean velit arcu ipsum primis iaculis ullamcorper "
            "Posuere taciti ligula proin natoque conubia augue scelerisque iaculis. Lorem aenean velit arcu ipsum primis iaculis ullamcorper "
            "Posuere taciti ligula proin natoque conubia augue scelerisque iaculis. Lorem aenean velit arcu ipsum primis iaculis ullamcorper "

            '\n'
            '\n'
            "penatibus cursus urna. Vel duis diam porta nunc metus lobortis lorem nostra ut torquent. "
            "Placerat consequat faucibus sapien massa convallis sit"
            "Placerat consequat faucibus sapien massa convallis sit"
            "Placerat consequat faucibus sapien massa convallis sit",

              textAlign: TextAlign.start,

            )
          ],
        ),
      ),
    );
  }
}
