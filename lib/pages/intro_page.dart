import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  height: 380,
                  width: 380,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/im_sample2.jpg"),
                ),
                
                SizedBox(
                  height: 35,
                ),
                Text("Fresh Food",style: TextStyle(fontSize: 40),),
                SizedBox(
                  height: 10,
                ),
                Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Aenean commodo ligula eget dolor. ",style: TextStyle(fontSize: 12), textAlign: TextAlign.center,),
              ],
            ),
          ),

              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      height: 380,
                      width: 380,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/im_sample4.jpg"),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Text("Fast Delivery",style: TextStyle(fontSize: 40),),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Aenean commodo ligula eget dolor. ",style: TextStyle(fontSize: 12),textAlign: TextAlign.center,),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      height: 380,
                      width: 380,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/im_sample3.jpg"),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Text("Easy Payment",style: TextStyle(fontSize: 35),),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit,Aenean commodo ligula eget dolor. ",style: TextStyle(fontSize: 12), textAlign: TextAlign.center,),
                  ],
                ),
              ),

        ],
      ),
    );
  }
}
