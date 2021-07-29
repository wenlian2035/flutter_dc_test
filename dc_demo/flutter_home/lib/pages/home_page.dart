import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_home/widget/result_widget.dart';
import 'package:flutter_home/widget/search_widget.dart';
import 'package:flutter_home/widget/type_widget.dart';
import 'package:flutter_request/request/api_request.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List typeList=[];
  @override
  void initState() {
    // TODO: implement initState
    typeList = ["language","bulid","aaa","afasdfasdf","cadsfasdg"];

    HttpRequest.requestsearch("flutter").then((value) {

      print("PP:::"+ value.toString());

    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: null,
      child: Scaffold(
        body: Container(

          child: Container(
            color: Colors.blueAccent,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SearchWidget((a){
                  print("object"+a);
                }),
                // Selector(builder:(a,b,c)=>Container(), selector: (_,a)=>a),
                TypeWidget(typeList),
                Expanded(child: ResultWidget()),

            ],),
          ),

        ),
      ),
    );
  }
}
