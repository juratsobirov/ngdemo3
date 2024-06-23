import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("ListView Page"),
      ),
      body: ListView(
        children: [
          _itemList(title: "New post", image: "assets/images/im_sample.jpg"),
          _itemList(title: "New post", image: "assets/images/im_sample.jpg"),
          _itemList(title: "New post", image: "assets/images/im_sample.jpg"),
          _itemList(title: "New post", image: "assets/images/im_sample.jpg"),
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
    );
  }

  Widget _itemList({title, image}) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Image(
            width: 70,
            height: 70,
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 10,
          ),
          Text(title)
        ],
      ),
    );
  }
}
