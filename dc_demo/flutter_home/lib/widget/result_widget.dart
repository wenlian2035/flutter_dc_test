import 'package:flutter/material.dart';

class ResultWidget extends StatefulWidget {
  
  final List? resList;

  const ResultWidget({Key? key, this.resList}) : super(key: key);
  
  
  @override
  _ResultWidgetState createState() => _ResultWidgetState();
}

class _ResultWidgetState extends State<ResultWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
      ),
      child: widget.resList==null?
      Center(child: Column(
        children: [
          Image.asset("assets/error-while-searching.png",package: "flutter_home",),
          Text("Nothing Found",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
          Text("We couldn't find what you were looking for",style: TextStyle(fontSize: 16,color: Color(0xFF333333)),),
          Container(
            alignment: Alignment.center,
              padding: EdgeInsets.only(left: 30,right: 30),
              child: Text("Keep calm and search again We use so many cool stuff,surely   sfasdfaadsfsadfasdf",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color: Color(0xFF333333)),)),

        ],
      )):
      Container(child: Text("reslut"),),
      
    );
  }
}
