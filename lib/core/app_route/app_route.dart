import 'package:get/get.dart';
import 'package:qr_code_scanner/view/screens/url/url_screen.dart';

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
  static const String historyScreen = "/history_screen";


  static List<GetPage>  routes = [
    GetPage(name: urlScreen, page: ()=> const UrlScreen())
  ];
}

