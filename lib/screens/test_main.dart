import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/controllers/find_password_controller.dart';
import 'package:itnun/controllers/login_controller.dart';
import 'package:itnun/controllers/make_password_controller.dart';
import 'package:itnun/controllers/signup_controller.dart';
import 'package:itnun/controllers/user_info_controller.dart';
import 'package:itnun/controllers/verify_controller.dart';
import 'package:itnun/controllers/verify_find_password_controller.dart';
import 'package:itnun/screens/detail_search.dart';
import 'package:itnun/screens/find_password_page.dart';
import 'package:itnun/screens/login_page.dart';
import 'package:itnun/screens/make_password_page.dart';
import 'package:itnun/screens/menu_page.dart';
import 'package:itnun/screens/notification_page.dart';
import 'package:itnun/screens/signup_page.dart';
import 'package:itnun/screens/start_page.dart';
import 'package:itnun/screens/total_search.dart';
import 'package:itnun/screens/total_searched.dart';
import 'package:itnun/screens/user_info_page.dart';
import 'package:itnun/screens/verify_find_password_page.dart';
import 'package:itnun/screens/verify_page.dart';
import 'package:itnun/screens/detail_search.dart';
import 'package:flutter/services.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/constants.dart';
class TestMain extends StatelessWidget {
  const TestMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(appColor)),onPressed: (){Get.toNamed("/menu");}, child: Text("메뉴",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),)),
            SizedBox(height: 30,),
            TextButton(style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(appColor)),onPressed: (){Get.toNamed("/totalsearch");}, child: Text("통합검색",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),)),
            SizedBox(height: 30,),
            TextButton(style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(appColor)),onPressed: (){Get.toNamed("/detailsearch");}, child: Text("상세검색",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),)),
            SizedBox(height: 30,),
            TextButton(style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(appColor)),onPressed: (){Get.toNamed("/cheapmarketsearch");}, child: Text("착한가게 찾기",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),)),
            SizedBox(height: 30,),
            TextButton(style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(appColor)),onPressed: (){Get.toNamed("/notification");}, child: Text("공지사항",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),)),
            
          ],
        ),
      ),
    );
  }
}
