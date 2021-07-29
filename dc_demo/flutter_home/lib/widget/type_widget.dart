import 'package:flutter/material.dart';

class TypeWidget extends StatefulWidget {
  final List dataList;

  const TypeWidget(this.dataList);

  @override
  _TypeWidgetState createState() => _TypeWidgetState();
}

class _TypeWidgetState extends State<TypeWidget> {
  int current = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20,right: 0,top: 10),
      height: 45,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.dataList.length,
          itemBuilder: (BuildContext context, int index) {
            return Items(widget.dataList[index], index);
          }),
    );
  }


  Items (String name,int index) {

    return InkWell(
      onTap: (){
        current = index;
        if(mounted)setState(() {

        });
      },
      child: Container(
        margin: EdgeInsets.only(left: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: current == index?Colors.blueGrey : Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Container(
            padding: EdgeInsets.all(10),
            child: Text(name)),),
    );

  }


}
