import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

typedef AppFormFieldValidator = bool Function(String);

class AppButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color? outlineColor;
  final Color backgroundColor;
  final VoidCallback? onPressed;

  const AppButton(
      {Key? key,
      required this.text,
      required this.textColor,
      this.outlineColor,
      required this.backgroundColor,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: context.heightTransformer(dividedBy: 14),
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              backgroundColor: backgroundColor,
              side: outlineColor == null
                  ? BorderSide.none
                  : BorderSide(width: 2.0, color: outlineColor!),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)))),
          onPressed: onPressed,
          child: Text(text,
              style: TextStyle(
                  color: textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold))),
    );
  }
}

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final bool obscureText;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final int? maxLength;
  final AppFormFieldValidator? validator;

  const AppTextField(
      {Key? key,
      this.controller,
      required this.label,
      this.obscureText = false,
      this.keyboardType,
      this.onChanged,
      this.maxLength,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autovalidateMode: AutovalidateMode.always,
        validator: validator == null
            ? null
            : ((s) => s != null && validator!(s) ? null : ""),
        maxLength: maxLength,
        onChanged: onChanged,
        keyboardType: keyboardType,
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
            errorStyle: const TextStyle(fontSize: 0),
            counterText: "",
            contentPadding: EdgeInsets.symmetric(
                horizontal: 46,
                vertical: context.heightTransformer(dividedBy: 30)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:
                    const BorderSide(color: Color(0xFFD1D1D1), width: 2)),
            label:
                Text(label, style: const TextStyle(color: Color(0xFFD1D1D1))),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(width: 2))));
  }
}

class AppPadding extends StatelessWidget {
  final Widget child;

  const AppPadding({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: context.widthTransformer(dividedBy: 15)),
        child: child);
  }
}

class TotalSearchAppBox extends StatelessWidget {
  const TotalSearchAppBox({Key? key, required this.title, required this.category, required this.local, required this.ismarked}) : super(key: key);

  final String title;
  final String category;
  final String local;
  final bool isMarked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: context.heightTransformer(dividedBy: 84)),
      child: RawMaterialButton(
        onPressed: () {
          Get.toNamed("/none");
        },
        child: Container(
            decoration: BoxDecoration(
              color: appColor,
              borderRadius: BorderRadius.circular(12),
            ),
            width: context.heightTransformer(dividedBy: 1.153),
            height: context.heightTransformer(dividedBy: 7.96),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: context.widthTransformer(dividedBy: 19.5),vertical: context.heightTransformer(dividedBy: 42.2)),
              child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text("$title",style: TextStyle(color: Colors.white,fontSize: 18,fontFamily: "Pretendard",fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: context.heightTransformer(dividedBy: 60.28),
                      ),
                      Row(
                        children: [
                          Container(
                            width: context.widthTransformer(dividedBy: 6.5),
                            height: context.heightTransformer(dividedBy:28.13 ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),

                            ),
                            child: Center(child: Text("$category",style: TextStyle(fontSize: 12,fontFamily: "Pretendard",fontWeight: FontWeight.bold),)),
                          ),

                          SizedBox(
                            width: context.widthTransformer(dividedBy: 78),
                          ),
                          Container(
                            width: context.widthTransformer(dividedBy: 6.5),
                            height: context.heightTransformer(dividedBy:28.13 ),
                            decoration: BoxDecoration(
                                color: appColor,
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                  width: 2,
                                  color: Colors.white,
                                )
                            ),
                            child: Center(child: Text("$local",style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: "Pretendard",fontWeight: FontWeight.bold),)),
                          ),
                        ],
                      )

                    ],
                  ),
                  Flexible(flex: 1,child: Container()),
                  Column(
                    children: [
                      Builder(
                          builder: (context) {
                            if(ismarked==true)
                            {
                              return Icon(Icons.bookmark,color: Colors.white,size: 32,);
                            }
                            else
                            {
                              return Icon(Icons.bookmark_outline,color: Colors.white,size:32);
                            }

                          }
                      ),
                    ],
                  ),



                ],
              ),
            ),


        ),
      ),
    );
  }
}

class CheapMarketSearchAppBox extends StatelessWidget {
  const CheapMarketSearchAppBox({Key? key, required this.title, required this.category, required this.local, required this.ismarked}) : super(key: key);

  final String title;
  final String category;
  final String local;
  final bool ismarked;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: context.heightTransformer(dividedBy: 84)),
      child:RawMaterialButton(
        onPressed: (){
          Get.toNamed("/none");
        },
        child: Container(
          decoration: BoxDecoration(
            color: cheapmarketcolor,
            borderRadius: BorderRadius.circular(12),
          ),
          width: context.heightTransformer(dividedBy: 1.153),
          height: context.heightTransformer(dividedBy: 7.96),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.widthTransformer(dividedBy: 19.5),vertical: context.heightTransformer(dividedBy: 42.2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("$title",style: TextStyle(color: Colors.white,fontSize: 18,fontFamily: "Pretendard",fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: context.heightTransformer(dividedBy: 60.28),
                    ),
                    Row(
                      children: [
                        Container(
                          width: context.widthTransformer(dividedBy: 6),
                          height: context.heightTransformer(dividedBy:28.13 ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),

                          ),
                          child: Center(child: Text("$category",style: TextStyle(fontSize: 12,fontFamily: "Pretendard",fontWeight: FontWeight.bold),)),
                        ),

                        SizedBox(
                          width: context.widthTransformer(dividedBy: 78),
                        ),
                        Container(
                          width: context.widthTransformer(dividedBy: 6.5),
                          height: context.heightTransformer(dividedBy:28.13 ),
                          decoration: BoxDecoration(
                              color: cheapmarketcolor,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                width: 2,
                                color: Colors.white,
                              )
                          ),
                          child: Center(child: Text("$local",style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: "Pretendard",fontWeight: FontWeight.bold),)),
                        ),
                      ],
                    )

                  ],
                ),
                Flexible(flex: 1,child: Container()),
                Column(
                  children: [
                    Builder(
                        builder: (context) {
                          if(ismarked==true)
                          {
                            return Icon(Icons.bookmark,color: Colors.white,size: 32,);
                          }
                          else
                          {
                            return Icon(Icons.bookmark_outline,color: Colors.white,size:32);
                          }

                        }
                    ),
                  ],
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
