import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:itnun/controllers/find_password_controller.dart';
import 'package:itnun/controllers/login_controller.dart';
import 'package:itnun/controllers/make_password_controller.dart';
import 'package:itnun/controllers/my_info_edit_controller.dart';
import 'package:itnun/controllers/setting_controller.dart';
import 'package:itnun/controllers/signup_controller.dart';
import 'package:itnun/controllers/user_info_controller.dart';
import 'package:itnun/controllers/verify_controller.dart';
import 'package:itnun/controllers/verify_find_password_controller.dart';
import 'package:itnun/screens/account/account_page.dart';
import 'package:itnun/screens/account/app_info_page.dart';
import 'package:itnun/screens/account/bookmark_edit_page.dart';
import 'package:itnun/screens/account/bookmark_page.dart';
import 'package:itnun/screens/account/my_info_edit_page.dart';
import 'package:itnun/screens/account/my_info_page.dart';
import 'package:itnun/screens/account/setting_page.dart';
import 'package:itnun/screens/login/login_page.dart';
import 'package:itnun/screens/login/signup_page.dart';
import 'package:itnun/screens/login/user_info_page.dart';
import 'package:itnun/screens/login/verify_page.dart';
import 'package:itnun/screens/main_page.dart';
import 'package:itnun/screens/menu_page.dart';
import 'package:itnun/screens/news/today_news_detail_page.dart';
import 'package:itnun/screens/news/today_news_page.dart';
import 'package:itnun/screens/notification_page.dart';
import 'package:itnun/screens/password/find_password_page.dart';
import 'package:itnun/screens/password/make_password_page.dart';
import 'package:itnun/screens/password/verify_find_password_page.dart';
import 'package:itnun/screens/search/cheap/cheap_market_search.dart';
import 'package:itnun/screens/search/cheap/cheap_market_search_detail.dart';
import 'package:itnun/screens/search/cheap/cheap_market_search_result.dart';
import 'package:itnun/screens/search/detail/detail_search.dart';
import 'package:itnun/screens/search/detail/detail_search_result.dart';
import 'package:itnun/screens/search/hire/hire_search.dart';
import 'package:itnun/screens/search/hire/hire_search_detail.dart';
import 'package:itnun/screens/search/hire/hire_search_result.dart';
import 'package:itnun/screens/search/space/space_search.dart';
import 'package:itnun/screens/search/space/space_search_detail.dart';
import 'package:itnun/screens/search/space/space_search_result.dart';
import 'package:itnun/screens/search/total/total_search.dart';
import 'package:itnun/screens/search/total/total_search_detail.dart';
import 'package:itnun/screens/search/total/total_search_result.dart';
import 'package:itnun/screens/start_page.dart';

void main() async {
  runApp(const MyApp());
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Pretendard"),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const StartPage()),
        GetPage(
            name: "/login",
            page: () => const LoginPage(),
            binding: BindingsBuilder(() {
              Get.lazyPut(() => LoginController());
            })),
        GetPage(
            name: "/verify",
            page: () => const VerifyPage(),
            binding: BindingsBuilder(() {
              Get.lazyPut(() => VerifyController());
            })),
        GetPage(
            name: "/signup",
            page: () => const SignUpPage(),
            binding: BindingsBuilder(() {
              Get.lazyPut(() => SignUpController());
            })),
        GetPage(
            name: "/userInfo",
            page: () => const UserInfoPage(),
            binding: BindingsBuilder(() {
              Get.lazyPut(() => UserInfoController());
            })),
        GetPage(name: "/notification", page: () => NotificationPage()),
        GetPage(
            name: "/password/find",
            page: () => const FindPasswordPage(),
            binding: BindingsBuilder(() {
              Get.lazyPut(() => FindPasswordController());
            })),
        GetPage(
            name: "/password/verifyFind",
            page: () => const VerifyFindPasswordPage(),
            binding: BindingsBuilder(() {
              Get.lazyPut(() => VerifyFindPasswordController());
            })),
        GetPage(
            name: "/password/make",
            page: () => const MakePasswordPage(),
            binding: BindingsBuilder(() {
              Get.lazyPut(() => MakePasswordController());
            })),
        GetPage(
          name: "/search/total/detail",
          page: () => const TotalSearchDetail(),
        ),
        GetPage(name: "/menu", page: () => const MenuPage()),
        GetPage(name: "/search/total", page: () => const TotalSearch()),
        GetPage(name: "/search/detail", page: () => const DetailSearch()),
        GetPage(
            name: "/search/total/result",
            page: () => const TotalSearchResult()),
        GetPage(
            name: "/search/detail/result",
            page: () => const DetailSearchResult()),
        GetPage(name: "/search/cheap", page: () => const CheapMarketSearch()),
        GetPage(
            name: "/search/cheap/result",
            page: () => const CheapMarketSearchResult()),
        GetPage(name: "/main", page: () => const MainPage()),
        GetPage(name: "/account", page: () => const AccountPage()),
        GetPage(name: "/account/info", page: () => const MyInfoPage()),
        GetPage(
            name: "/account/info/edit",
            page: () => const MyInfoEditPage(),
            binding: BindingsBuilder(() {
              Get.lazyPut(() => MyInfoEditController());
            })),
        GetPage(
            name: "/account/setting",
            page: () => const SettingPage(),
            binding: BindingsBuilder(() {
              Get.lazyPut(() => SettingController());
            })),
        GetPage(name: "/account/app", page: () => const AppInfoPage()),
        GetPage(name: "/account/bookmark", page: () => const BookmarkPage()),
        GetPage(
            name: "/account/bookmark/edit",
            page: () => const BookmarkEditPage()),
        GetPage(name: "/news", page: () => const TodayNewsPage()),
        GetPage(name: "/news/detail", page: () => const TodayNewsDetailPage()),
        GetPage(name: "/search/hire", page: () => const HireSearch()),
        GetPage(
            name: "/search/hire/result", page: () => const HireSearchResult()),
        GetPage(
            name: "/search/hire/detail", page: () => const HireSearchDetail()),
        GetPage(
            name: "/search/cheap/detail",
            page: () => const CheapMarketSearchDetail()),
        GetPage(name: "/search/space", page: () => const SpaceSearch()),
        GetPage(
            name: "/search/space/result",
            page: () => const SpaceSearchResult()),
        GetPage(name: "/search/space/detail", page: () => const SpaceSearchDetail())
      ],
    );
  }
}
