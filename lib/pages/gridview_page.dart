import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Grid View"),
      ),

      body: GridView.count(
          crossAxisCount: 2,
        children: [
          _itemGridView(title: "Jur'at", image: "assets/images/im_sample.jpg"),
          _itemGridView(title: "Jur'at", image: "assets/images/im_sample.jpg"),
          _itemGridView(title: "Jur'at", image: "assets/images/im_sample.jpg"),
          _itemGridView(title: "Jur'at", image: "assets/images/im_sample.jpg"),
          _itemGridView(title: "Jur'at", image: "assets/images/im_sample.jpg"),
          
        ],
      ),
    );
  }

  Widget _itemGridView({title, image}){
    return Container(
      margin: EdgeInsets.all(5),
      width: 200,
      height: 200,
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            width: 60,
            height: 60,
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
          SizedBox(height: 10,),
          Text(title, style: TextStyle(fontSize: 16),),
        ],
      ),
    );
  }
}
