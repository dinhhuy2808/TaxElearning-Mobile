import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/screens/course/home.dart';

String initScreen;
GlobalKey navBarGlobalKey = GlobalKey(debugLabel: 'bottomAppBar');

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<BottomNavigationBarProvider>(
            create: (BuildContext context) {
              return BottomNavigationBarProvider();
            },
          ),
        ],
        child: MaterialApp(
            title: 'Smartlearn',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: Colors.blue,
              // unselectedWidgetColor: MyColors().grey,
              // disabledColor: Colors.red,
              // fontFamily: 'Noto',
            ),
            home: HomeCourse(),
            ));
  }
}
