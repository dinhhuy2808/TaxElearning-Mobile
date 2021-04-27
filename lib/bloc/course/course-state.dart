import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/main.dart';
import 'package:quiz_app/screens/course/course-list.dart';
import 'package:quiz_app/screens/course/home.dart';
import 'package:quiz_app/screens/practise/analysis/analysis.dart';
import 'package:quiz_app/screens/quiz/all-quiz.dart';
import 'package:quiz_app/share/color.dart';

class CourseState extends State<HomeCourse> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  var currentTab = [];
  bool isAuth = false;

  bool isready = false;
  DateTime currentBackPressTime;
  Future<bool> onWillPopNEw() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 3)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(
        msg: 'Double Tap to go back',
        toastLength: Toast.LENGTH_LONG,
      );
      return Future.value(false);
    }
    return Future.value(true);
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        isAuth = true;
        isready = true;
      });
    });
    currentTab = [
      CourseList(),
      AllQuiz(),
      Analysis(),
    ];
  }

  Scaffold buildUnAuthScreen(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: <Widget>[
          Text('Sinup AAAAAAA'),
          Text('Sinup dsdsvdsvdsvsd'),
        ],
      ),
    );
  }

  Scaffold buildWaitScreen(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    double hi = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(60, hi / 3.3, 60, 0),
        child: Center(
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/images/ic_launcher.png',
                height: 130,
                width: 130,
              ),
              SizedBox(
                height: 30,
              ),
              Text('Smartlearn',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 25,
                      color: MyColors().black.withOpacity(0.7))),
              SizedBox(
                height: hi / 3.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Online Learning app',
                    style: TextStyle(
                        color: MyColors().black.withOpacity(0.7),
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  //  Image.asset('images/india.png',height: 20,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);

    return isAuth == true
        ? WillPopScope(
            onWillPop: onWillPopNEw,
            child: Scaffold(
              body: currentTab[provider.currentIndex],
              bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: MyColors().maincolor,
                backgroundColor: Colors.white,
                type: BottomNavigationBarType.fixed,
                selectedFontSize: 12.0,
                unselectedItemColor: MyColors().grey.withOpacity(0.98),
                key: navBarGlobalKey,
                currentIndex: provider.currentIndex,
                onTap: (index) {
                  provider.currentIndex = index;
                },
                items: [
                  BottomNavigationBarItem(
                    icon: new Icon(
                      EvaIcons.homeOutline,
                      size: 24,
                    ),
                    label: 'Giáo Trình',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      EvaIcons.clockOutline,
                      size: 24,
                    ),
                    label: 'Đề Thi',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      EvaIcons.editOutline,
                      size: 24,
                    ),
                    label: 'Từ Vựng',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      EvaIcons.bookOpenOutline,
                      size: 24,
                    ),
                    label: 'Cá Nhân',
                  ),
                ],
              ),
            ))
        : WillPopScope(
            onWillPop: onWillPopNEw,
            child: isready == true
                ? buildUnAuthScreen(context)
                : buildWaitScreen(context));
  }

  @override
  void dispose() {
    super.dispose();
  }
}
