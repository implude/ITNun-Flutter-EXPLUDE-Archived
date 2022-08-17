import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: start(),
    );
  }
}
class start extends StatelessWidget {
  const start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200,),
            Container(
              child: Column(
                children: [
                  Text("사람과 정책을 잇는.",style: TextStyle(
                  fontSize:16,
                    fontWeight: FontWeight.bold,
                  )
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/logo_outlined.png"),
                        SizedBox(width: 10,),
                        Text("잇는",style: TextStyle(fontSize: 44,fontWeight: FontWeight.bold),)

                      ],
                    ),
                  ),
                ],
              ),
            ),
           SizedBox(
             height: 200,
           ),
           SizedBox(
             height: 60,
             width: 350,
             child: OutlinedButton(
               style: OutlinedButton.styleFrom(
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.all(Radius.circular(20)),

                 ),

                 side: BorderSide(
                   width: 2.0,
                   color: Color(0xff3C65F8),
                 )

               ),
                 onPressed: (){},
                 child: Text("로그인",style: TextStyle(fontSize: 20,color: Color(0xff3C65F8),fontWeight: FontWeight.bold),)),
           ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 60,
              width: 350,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),

                      ),

                    backgroundColor: Color(0xff3C65F8),

                  ),
                  onPressed: (){},
                  child: Text("회원가입",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)),
            ),
            
          ],
        ),
      ),
    );
  }
}
