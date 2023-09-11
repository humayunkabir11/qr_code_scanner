import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/utils/app_colors.dart';
import 'package:qr_code_scanner/view/screens/save_file/save_file_screen.dart';
import 'package:qr_code_scanner/view/widgets/appbar/app_bar.dart';
import 'package:qr_code_scanner/view/widgets/text/custom_text.dart';

class EmptySaveFileScreen extends StatefulWidget {
  const EmptySaveFileScreen({super.key});
  @override
  State<EmptySaveFileScreen> createState() => _HistoryScreenState();
}
class _HistoryScreenState extends State<EmptySaveFileScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 30), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) =>  SaveFileScreen(),
          )
      );
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      top: true,
      child: Scaffold(
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
                text: "Saved File",
                color:AppColors.themeColor,
                fontSize: 24,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
              const SizedBox()
            ],
          ),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CustomText(text: "No save history available",
                color: Color(0xFFA7A7A7),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),

            //after scan we can show this screen
          ],

        ),
      ),
    );
  }
}
