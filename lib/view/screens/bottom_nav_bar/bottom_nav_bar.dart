import 'package:flutter/material.dart';
import 'package:qr_code_scanner/utils/app_colors.dart';
import 'package:qr_code_scanner/utils/app_icons.dart';
import 'package:qr_code_scanner/view/screens/generate/generate_screen.dart';
import 'package:qr_code_scanner/view/screens/home/home_screen.dart';
import 'package:qr_code_scanner/view/screens/profile/profile_screen.dart';
import 'package:qr_code_scanner/view/screens/scan/scan_screen.dart';
import 'package:qr_code_scanner/view/widgets/image/custom_image.dart';
import 'package:qr_code_scanner/view/widgets/text/custom_text.dart';


class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key, required this.currentIndex,});
  final int currentIndex;

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int selectedIndex = 0;
  @override
  void initState() {
    selectedIndex = widget.currentIndex;
    super.initState();
  }
  static const List<Widget> screens = <Widget>[
     HomeScreen(),
     GenerateScreen(),
     ScanScreen(),

     ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> manuBarItems = [
      MenuBarItems(
          text: "Home",
          index: 0,
          selectedIndex: selectedIndex,
          image: AppIcons.homeIcon),
      MenuBarItems(
          text: "Generate",
          index: 1,
          selectedIndex: selectedIndex,
          image: AppIcons.generatorIcon
      ),
      MenuBarItems(
          text: "Scan",
          index: 2,
          selectedIndex: selectedIndex,
          image: AppIcons.scanIcon
      ),
      MenuBarItems(
          text: "Profile",
          index: 3,
          selectedIndex: selectedIndex,
          image: AppIcons.phoneIcon,
      ),
    ];
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        extendBody: true,
        bottomNavigationBar: Container(
          height: 60,alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.only(top: 15),
          decoration:   const BoxDecoration(
            color: AppColors.whiteColor,
            boxShadow: [
              BoxShadow(
                color: AppColors.b5,
                blurRadius: 10,
                offset: Offset(0, -4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(manuBarItems.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: manuBarItems[index],
              );
            }),
          ),
        ),
        body: screens[selectedIndex],
      ),
    );
  }
}
class MenuBarItems extends StatelessWidget {
  const MenuBarItems(
      {super.key,
        required this.image,
        required this.index,
        required this.selectedIndex,
        required this.text});

  final String image;
  final String text;
  final int index;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CustomImage(
                imageColor:selectedIndex == index  ?AppColors.themeColor :AppColors.b1,size:24,
                imageSrc: image),
            CustomText(
              fontSize: 12,fontWeight: FontWeight.w600,
              text: text,
              color: selectedIndex == index ?AppColors.themeColor : AppColors.b1,
            ),
          ],
        ),
      ],
    );
  }
}
