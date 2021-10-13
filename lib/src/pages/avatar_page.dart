import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFSlWBJEzYLzMNVmXkOHWHssqk_xiMfxaFvg&usqp=CAU'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.green.shade900,
            ),
          )
        ],
      ),
      body: Center(
          child: FadeInImage(
              fadeInDuration: Duration(milliseconds: 200),
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://images5.alphacoders.com/109/1097979.jpg'))),
    );
  }
}
