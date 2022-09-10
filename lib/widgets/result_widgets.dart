import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KeyValueBox extends StatelessWidget {
  const KeyValueBox(
      {Key? key,
        required this.keyy,
        required this.value})
      : super(key: key);

  final String keyy;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
        width:context.widthTransformer(dividedBy: 1.25),
        height: context.heightTransformer(dividedBy: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color:const Color(0xffECF0FF),
        ),
        child:Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Text(keyy,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  )
              ),
              Text(value),
            ],
          ),
        )
    );
  }
}

class SubTitleBox extends StatelessWidget {
  const SubTitleBox(
      {Key? key,
        required this.title,
      })
      : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height:10,
          width: 10,
          decoration: const BoxDecoration(
            shape:BoxShape.circle,
            color:Colors.blue,
          ),
        ),
        Container(
          width: context.widthTransformer(dividedBy:30),
        ),
        Text(
            title, //이름 적어라 .
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 24
            )
        ),
      ],
    );
  }
}

class PlainTextBox extends StatelessWidget {
  const PlainTextBox(
      {Key? key,
        required this.text
      })
      : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
        width:context.widthTransformer(dividedBy: 1.25),
        //height:context.heightTransformer(dividedBy:5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color:const Color(0xffECF0FF),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Expanded(
            child: Text(text,
                overflow:TextOverflow.fade,
                style: const TextStyle(
                  fontSize: 16,
                )
            ),
          ),
        )
    );
  }
}

class InfoBox extends StatelessWidget {
  const InfoBox(
      {Key? key,
        required this.subtitle,
        required this.contents,
      })
      : super(key: key);
  final String subtitle;
  final List<String> contents;
  @override
  Widget build(BuildContext context) {
    return Container(
        width:context.widthTransformer(dividedBy: 1.25),
        //height:context.heightTransformer(dividedBy:5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color:const Color(0xffECF0FF),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(subtitle, style: const TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height:context.heightTransformer(dividedBy:45)),
              Flexible(
                flex: 1,
                fit:FlexFit.tight,
                child: ListView.builder(
                  itemCount : contents.length,
                  itemBuilder :(_, index) =>
                    Info(content: contents[index]),
                ),
              )
              // Row(
              //   children: [
              //     Container(
              //       height:10,
              //       width: 10,
              //       decoration: const BoxDecoration(
              //         shape:BoxShape.circle,
              //         color:Colors.blue,
              //       ),
              //     ),
              //     Container(
              //       width: context.widthTransformer(dividedBy:30),
              //     ),
              //     const Text("2년 단위로 임계차 계약 갱신"),
              //   ],
              // ),
              // SizedBox(height:context.heightTransformer(dividedBy:100)),
              // Row(
              //   children: [
              //     Container(
              //       height:10,
              //       width: 10,
              //       decoration: const BoxDecoration(
              //         shape:BoxShape.circle,
              //         color:Colors.blue,
              //       ),
              //     ),
              //     Container(
              //       width: context.widthTransformer(dividedBy:30),
              //     ),
              //     const Text("최장 10년간 임대차 기간을 보장"),
              //   ],
              // ),
              // SizedBox(height:context.heightTransformer(dividedBy:100)),
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Padding(
              //       padding: EdgeInsets.fromLTRB(0, context.heightTransformer(dividedBy: 150), 0, 0),
              //       child: Container(
              //         height:10,
              //         width: 10,
              //         decoration: const BoxDecoration(
              //           shape:BoxShape.circle,
              //           color:Colors.blue,
              //         ),
              //       ),
              //     ),
              //     Container(
              //       width: context.widthTransformer(dividedBy:30),
              //     ),
              //     const Expanded(
              //       child: Text("6년 기간 이후에는 소득수준등에 따라 갱신시점 감정평가금액의 80프로 혹은 100프로로 임대조건등을 조정하여 갱신 계약예정",
              //         overflow:TextOverflow.fade,
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        )
    );
  }
}

class Info extends StatelessWidget {
  const Info(
      {Key? key,
        required this.content
      }) : super(key: key);
  final String content;
  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, context.heightTransformer(dividedBy: 150), 0, 0),
          child: Container(
            height:10,
            width: 10,
            decoration: const BoxDecoration(
              shape:BoxShape.circle,
              color:Colors.blue,
            ),
          ),
        ),
        Container(
          width: context.widthTransformer(dividedBy:30),
        ),
        Text(content,
          // overflow:TextOverflow.fade,
        ),
      ],
    );
  }
}
