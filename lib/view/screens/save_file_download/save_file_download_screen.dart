import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:qr_code_scanner/utils/app_colors.dart';
import 'package:qr_code_scanner/utils/app_images.dart';
import 'package:qr_code_scanner/view/widgets/appbar/app_bar.dart';
import 'package:qr_code_scanner/view/widgets/button/custom_button.dart';
import 'package:qr_code_scanner/view/widgets/text/custom_text.dart';

class SaveFileDownloadScreen extends StatefulWidget {
  const SaveFileDownloadScreen({super.key});

  @override
  State<SaveFileDownloadScreen> createState() => _QrCodeScreenState();
}

class _QrCodeScreenState extends State<SaveFileDownloadScreen> {
  List buttonName = ["Download","Share",];
  int selectButton = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(
        appBarContent: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap:(){
                  Get.back();
                },
                child: const Icon(Icons.arrow_back_outlined)),
            const CustomText(
              text: "QR Code",
              color:AppColors.themeColor,
              fontSize: 24,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.center,
            ),
            const SizedBox()
          ],
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0,horizontal: 20),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 380,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage(AppImages.qrOneImage),fit: BoxFit.fill)
              ),
            ),
            const SizedBox(height: 32,),
            Center(
                child: Column(
                  children: List.generate(buttonName.length, (index) =>  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: CustomButton(
                        onPressed: (){
                          setState(() {
                            selectButton = index;
                          });
                          // if(index == ){
                          //   Navigator.push(context, MaterialPageRoute(builder: (_)=>const EmptySaveFileScreen()));
                          // }
                        },
                        titleWeight: FontWeight.w600,
                        titleSize: 18,
                        textAlign: TextAlign.center,
                        buttonRadius: 50,
                        buttonWidth: 160,
                        borderWidth: 1,
                        elevation: 0,
                        buttonBgColor:selectButton == index? AppColors.themeColor:AppColors.whiteColor,
                        titleColor: selectButton == index? AppColors.whiteColor:AppColors.themeColor,
                        buttonBorderColor: AppColors.themeColor,
                        titleText: buttonName[index]),
                  ),

                  ),
                )
            ),
            /* SizedBox(height: 16,),
            Center(
              child: CustomButton(
                  onPressed: (){
                    setState(() {
                      selectButton = !selectButton;
                    });
                  },
                  textAlign: TextAlign.center,
                  buttonRadius: 50,
                  buttonWidth: 160,
                  borderWidth: 1,
                  elevation: 0,
                  buttonBgColor:selectButton? AppColors.themeColor:AppColors.whiteColor,
                  titleColor: selectButton? AppColors.whiteColor:AppColors.themeColor,
                  buttonBorderColor: AppColors.themeColor,
                  titleText: AppStrings.saveForLater),
            ),
            SizedBox(height: 16,),
            Center(
              child: CustomButton(
                  onPressed: (){
                    setState(() {
                      selectButton = !selectButton;
                    });
                  },
                   buttonWidth: 160,
                  textAlign: TextAlign.center,
                  buttonRadius: 50,
                  borderWidth: 1,
                  elevation: 0,
                  buttonBgColor:selectButton? AppColors.themeColor:AppColors.whiteColor,
                  titleColor: selectButton? AppColors.whiteColor:AppColors.themeColor,
                  titleText: AppStrings.share,
                buttonBorderColor: AppColors.themeColor,
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
