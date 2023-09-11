import 'package:get/get.dart';
import 'package:qr_code_scanner/view/screens/about_us/about_us_screen.dart';
import 'package:qr_code_scanner/view/screens/app/app_screen.dart';
import 'package:qr_code_scanner/view/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:qr_code_scanner/view/screens/contact/contact_screen.dart';
import 'package:qr_code_scanner/view/screens/email/email_screen.dart';
import 'package:qr_code_scanner/view/screens/favorite/empty_favourite_screen.dart';
import 'package:qr_code_scanner/view/screens/favorite/favorite_screen.dart';
import 'package:qr_code_scanner/view/screens/generate/generate_screen.dart';
import 'package:qr_code_scanner/view/screens/history/scan_history/empty_history_screen.dart';
import 'package:qr_code_scanner/view/screens/history/scan_history/scan_history_screen.dart';
import 'package:qr_code_scanner/view/screens/pdf/pdf_screen.dart';
import 'package:qr_code_scanner/view/screens/phone/phone_screen.dart';
import 'package:qr_code_scanner/view/screens/qr_code/qr_code_screen.dart';
import 'package:qr_code_scanner/view/screens/save_file/save_file_screen.dart';
import 'package:qr_code_scanner/view/screens/scan/scan_screen.dart';
import 'package:qr_code_scanner/view/screens/sms/sms_screen.dart';
import 'package:qr_code_scanner/view/screens/splash/splash_screen.dart';
import 'package:qr_code_scanner/view/screens/text/text_screen.dart';
import 'package:qr_code_scanner/view/screens/url/url_screen.dart';
import 'package:qr_code_scanner/view/screens/urls/urls_screen.dart';

class AppRoutes{

  static const String splashScreen = "/splash_screen";
  static const String homeScreen = "/splash_screen";
  static const String generateScreen = "/generate_screen";
  static const String scanScreen = "/scan_screen";
  static const String profileScreen = "/profile_screen";
  static const String urlScreen = "/url_screen";
  static const String urlsScreen = "/urls_screen";
  static const String textScreen = "/text_screen";
  static const String contactScreen = "/contact_screen";
  static const String pdfScreen = "/pdf_screen";
  static const String appScreen = "/app_screen";
  static const String emailScreen = "/email_screen";
  static const String phoneScreen = "/phone_screen";
  static const String smsScreen = "/sms_screen";
  static const String createPageScreen = "/createPage_screen";
  static const String emptyhistoryScreen = "/history_screen";
  static const String scanhistoryScreen = "/history_screen";
  static const String qrCodeScreen = "/qr_code_screen";
  static const String favoriteScreen = "/favorite_screen";
  static const String emptyFavoriteScreen = "/empty_favorite_screen";
  static const String bottomNavBar = "/bottom_nav_bar";
  static const String aboutUs = "/about_us_screen";
  static const String saveFileScreen = "/save_file_screen";


  static List<GetPage>  routes = [
    GetPage(name: splashScreen, page: ()=>const SplashScreen()),
    GetPage(name: urlScreen, page: ()=> const UrlScreen()),
    GetPage(name: urlsScreen, page: ()=>const UrlsScreen()),
    GetPage(name: textScreen, page: ()=>const TextScreen()),
    GetPage(name: contactScreen, page: ()=>const ContactScreen()),
    GetPage(name: pdfScreen, page: ()=>const PdfScreen()),
    GetPage(name: emptyhistoryScreen, page: ()=>const EmptyHistoryScreen()),
    GetPage(name: scanhistoryScreen, page: ()=>  ScanHistoryScreen()),
    GetPage(name: generateScreen, page: ()=>  const GenerateScreen()),
    GetPage(name: appScreen, page: ()=>  const AppScreen()),
    GetPage(name: emailScreen, page: ()=>  const EmailScreen()),
    GetPage(name: phoneScreen, page: ()=>  const PhoneScreen()),
    GetPage(name: smsScreen, page: ()=>  const SmsScreen()),
    GetPage(name: qrCodeScreen, page: ()=>  const QrCodeScreen()),
    GetPage(name: favoriteScreen, page: ()=>  FavoriteScreen()),
    GetPage(name: emptyFavoriteScreen, page: ()=>  const EmptyFavoriteScreen()),
    GetPage(name: scanScreen, page: ()=>  const ScanScreen()),
    GetPage(name: scanhistoryScreen, page: ()=>ScanHistoryScreen()),
    GetPage(name: bottomNavBar, page: ()=>const CustomNavBar(currentIndex: 0)),
    GetPage(name: aboutUs, page: ()=>const AboutUsScreen()),
    GetPage(name: saveFileScreen, page: ()=> SaveFileScreen()),
  ];
}

