import 'package:flutter/material.dart';
import 'package:qr_code_scanner/utils/app_colors.dart';
import 'package:qr_code_scanner/view/screens/history/scan_history/scan_history_screen.dart';
import 'package:qr_code_scanner/view/widgets/appbar/app_bar.dart';
import 'package:qr_code_scanner/view/widgets/text/custom_text.dart';

class EmptyHistoryScreen extends StatefulWidget {
  const EmptyHistoryScreen({super.key});

  @override
  State<EmptyHistoryScreen> createState() => _HistoryScreenState();
}
class _HistoryScreenState extends State<EmptyHistoryScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) =>  ScanHistoryScreen(),
      )
      );
    });
    // TODO: implement initState
    super.initState();
  }

    @override
  Widget build(BuildContext context) {
    return const SafeArea(
      top: true,
      child: Scaffold(
        appBar:  CustomAppBar(
          appBarContent: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_outlined),
              CustomText(
                text: "Scan History",
                color:AppColors.themeColor,
                fontSize: 24,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
              SizedBox()
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CustomText(text: "No scan history available",
                  color: Color(0xFFA7A7A7),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
              ),
            ),
            CircularProgressIndicator()
            //after scan we can show this screen
          ],

        ),
      ),
    );
  }
}
