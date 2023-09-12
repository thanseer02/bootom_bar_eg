import 'package:bottom_bar/add.dart';
import 'package:bottom_bar/home.dart';
import 'package:bottom_bar/profile.dart';
import 'package:bottom_bar/serach.dart';
import 'package:bottom_bar/settings.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
class bottom_nav extends StatefulWidget {
  const bottom_nav({super.key});

  @override
  State<bottom_nav> createState() => _bottom_navState();
}

class _bottom_navState extends State<bottom_nav> {
  @override
  Widget build(BuildContext context) {
    void initState(){
      super.initState();
    }
    final items=[
      Icon(Icons.home,size: 30,color: Colors.white,),
      Icon(Icons.search,size: 30,color: Colors.white,),
      Icon(Icons.add,size: 30,color: Colors.white,),
      Icon(Icons.settings,size: 30,color: Colors.white,),
      Icon(Icons.person,size: 30,color: Colors.white,),

    ];
    int current_index=0;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.black,
        buttonBackgroundColor: Colors.black,
        onTap: (value)=>{
            setState(() {
              index=value;
            })
        },
        backgroundColor: Colors.white,

        height: 70,
        animationDuration: Duration(milliseconds: 500),
        animationCurve: Curves.easeInQuart,
        items: items,
        index: index,

      ),
      body:Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          // child:Text('${index}',style: TextStyle(fontSize: 55,color: Colors.white),) ,
          child: getSelectedWidget(),
        ),
      ) ,
    );
  }
  Widget getSelectedWidget() {
    return pages[index];
  }
}
List pages=[
  home(),
  search(),
  add(),
  setting(),
  profile(),
];
int index=2;


