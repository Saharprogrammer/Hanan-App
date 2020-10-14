import 'package:flutter/material.dart';
import '../Constance.dart';
import 'ParentDiaries.dart';
import 'ParentPlans.dart';
import 'ParentStudentAppointment.dart';
import 'ParentStudentInfo.dart';


class ParentMain extends StatefulWidget {


  final int index;

  ParentMain(this.index);
  @override
  _ParentMainState createState() => _ParentMainState();
}

class _ParentMainState extends State<ParentMain> {


  int _currentIndex=0;

  List<Widget> _screens=[ParentDiaries(),ParentAppointments(),PlansTeacher(),ParentStudentInfo()];
  List<String> _titles=['يوميات',"مواعيد ","خطط","معلومات "];

  @override
  void initState() {
    super.initState();
    setState(() {

      _currentIndex=widget.index;

    });

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          backgroundColor: kAppBarColor,
          selectedItemColor:kSelectedItemColor,
          unselectedItemColor:kUnselectedItemColor,
          selectedFontSize: 20,
          unselectedFontSize: 17,
//          selectedIconTheme: IconThemeData(size: 35),
//          unselectedIconTheme: IconThemeData(size: 25),
          onTap: (index){
            setState(() {
              _currentIndex=index;
            });
          },
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet),
              title: Text("اليوميات"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              title: Text("المواعيد"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text("الخطط"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              title: Text("معلومات الطالب"),
            ),
          ],
        ),
        body:CustomScrollView(
            slivers:<Widget>[
              SliverAppBar(
                backgroundColor: kAppBarColor,
                title: Text(_titles[_currentIndex], style: kTextAppBarStyle),
                centerTitle: true,
                floating: false,
              ),
              SliverFillRemaining(
                child:_screens[_currentIndex],
              ),
            ]
        )
      ),
    );
  }
}
