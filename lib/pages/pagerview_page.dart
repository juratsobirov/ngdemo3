import 'package:flutter/material.dart';

class PagerViewPage extends StatefulWidget {
  const PagerViewPage({super.key});

  @override
  State<PagerViewPage> createState() => _PagerViewPageState();
}

class _PagerViewPageState extends State<PagerViewPage> {
  PageController? _pageController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pager View"),
        backgroundColor: Colors.blue,
      ),

      body: PageView(
        controller: _pageController,
        onPageChanged: (int index){
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          Container(
            color: Colors.pink,
            child: Center(
              child: Text("Page one", style: TextStyle(fontSize: 20),),
            ),
          ),

          Container(
            color: Colors.cyan,
            child: Center(
              child: Text("Page Two", style: TextStyle(fontSize: 20),),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: "Business"),
        ],
        selectedItemColor: Colors.orange,
        currentIndex: _selectedIndex,
        onTap: (int index){
          setState(() {
            _selectedIndex = index;
            _pageController?.animateToPage(
                index, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
          });
        },
      ),
    );
  }
}
