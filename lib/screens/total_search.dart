import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/app_widgets.dart';
import '../constants.dart';

class TotalSearch extends StatelessWidget {
  const TotalSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        behavior: HitTestBehavior.opaque,
        child: AppPadding(
            child: Column(

          children: [
            SizedBox(
              height: context.heightTransformer(dividedBy: 22.10),
            ),

           Text("통합검색",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
           SizedBox(
             height: context.heightTransformer(dividedBy: 22.10),
           ),
           TextField(



             decoration: InputDecoration(

               contentPadding: EdgeInsets.symmetric(vertical: 24, horizontal: context.widthTransformer(dividedBy: 9.75)),

               suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.search,size: 28,color: Color(0xff3C65F8),),),

               floatingLabelStyle: TextStyle(color: appColor),
               enabled: true,

               hintText: "이곳에 입력",




               enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(13),
                 borderSide: BorderSide(color: appColor,width: 3),
               ),
               disabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(13),
                 borderSide: BorderSide(color: appColor,width: 3),
               ),
               focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(13),
                 borderSide: BorderSide(color: appColor,width: 3),

               ),




               ),
             ),
            SizedBox(
              height: context.heightTransformer(dividedBy: 28.13),
            ),

            Row(
                  children: [
                    Text("추천 정책",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  ],
                ),

            SizedBox(
              height: context.heightTransformer(dividedBy: 27.22),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: appColor,
                    ),
                  )

                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
