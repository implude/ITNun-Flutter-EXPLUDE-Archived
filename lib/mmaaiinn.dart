import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
int num=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.black,)),
        actions: [
          Badge(child: IconButton(onPressed: (){setState((){num++;});}, icon: Icon(Icons.notifications_outlined,color: Colors.black,size: 30,)),
          badgeContent: Text("$num"),
            badgeColor: Color(0xffFF6C00),
            elevation: 0.0,
            toAnimate: false,
            position: BadgePosition(top: 10,end: -3)
    ,
          ),
          ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0.0),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: () {},
              child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 19,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 30,
                    ),
                  )))

        ],
      ),
    );
  }
}
