

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewHPage extends StatefulWidget {
  const ListViewHPage({super.key});

  @override
  State<ListViewHPage> createState() => _ListViewHPageState();
}

class _ListViewHPageState extends State<ListViewHPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal ListView"),
      ),
      body: Container(
        color: Colors.orange,
        height: 300,

        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _itemList(title: "New post", image: "assets/images/im_sample.jpg"),
            _itemList(title: "New post", image: "assets/images/im_sample.jpg"),
            _itemList(title: "New post", image: "assets/images/im_sample.jpg"),
            _itemList(title: "New post", image: "assets/images/im_sample.jpg"),

            _itemList(title: "New post", image: "assets/images/im_sample.jpg"),
            _itemList(title: "New post", image: "assets/images/im_sample.jpg"),
            _itemList(title: "New post", image: "assets/images/im_sample.jpg"),
            _itemList(title: "New post", image: "assets/images/im_sample.jpg"),

          ],
        ),
      ),
    );
  }

  Widget _itemList({title, image}){
    return Container(
      width: 200,
      height: 200,
      color: Colors.red,
      margin: EdgeInsets.all(5),
      padding: EdgeInsetsDirectional.all(20),

      child: Column(
        children: [
          Image(
            width: 100,
            height: 100,
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
          SizedBox(height: 10,),
          Text(title),
        ],
      ),
    );
  }
}
