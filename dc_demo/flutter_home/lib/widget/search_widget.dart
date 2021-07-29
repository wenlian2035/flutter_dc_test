import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SearchWidget extends StatefulWidget {
  // final VoidCallback textEditCallback;
  final ValueChanged<String> textEditCallback;

  const SearchWidget(this.textEditCallback);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      height: 50,
      margin: EdgeInsets.only(top: 45,left: 30,right: 30),
      child: Row(children: [
        SizedBox(width: 10,),
        Icon(Icons.search),
        SizedBox(width: 10,),
        Expanded(
          child: TextField(
            controller: textEditingController,
            maxLength: 10,
            decoration: InputDecoration(
              hintText: "Search",
              contentPadding: EdgeInsets.all(0),
              border:InputBorder.none,
              counterText: '',
            ),

            onEditingComplete:(){
              FocusScope.of(context).requestFocus(FocusNode());
              widget.textEditCallback(textEditingController.text);
            } ,
          ),
        ),
      ],),
    );
  }
}


