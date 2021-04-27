import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:quiz_app/share/color.dart';

class Analysis extends StatefulWidget {
  @override
  _AnalysisState createState() => _AnalysisState();
}

class _AnalysisState extends State<Analysis> {
  bool isopen = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
            margin: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 7),
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 9),
            color: Colors.white,
            child: Column(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.fromLTRB(17.0, 16.0, 0.0, 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Progress in Practice',
                            style: TextStyle(
                                fontFamily: 'ar',
                                fontWeight: FontWeight.w600,
                                color: MyColors().black,
                                fontSize: 18.0,
                                height: 1.3),
                          ),
                          // Text('Boost your brain with daily quizes ' ,style: TextStyle(color: MyColors().grey,fontSize: 11.0,height: 1.3),),
                        ],
                      )),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1,
                child: Column(
                  children: <Widget>[
                    //1---------------------------------------

                    Container(
                        width: MediaQuery.of(context).size.width / 1.05,
                        padding: EdgeInsets.all(10.0),
                        //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                        margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 5.0),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFFeff0f3), width: 1),
                          color: Color(0xFFffffff),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Color(0xffe7edfb),
                              blurRadius: 1.0,
                              offset: Offset(0.1, 0.1),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 2.0,
                                ),
                                Container(
                                  width: 110,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '  Progress',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'mvr',
                                            color: MyColors().black,
                                            fontSize: 15.0,
                                            height: 1.4),
                                      ),
                                    ],
                                  ),
                                ),
                                LinearPercentIndicator(
                                  width: 140.0,
                                  lineHeight: 5.0,
                                  percent: 0.3,
                                  backgroundColor:
                                      MyColors().grey.withOpacity(0.5),
                                  progressColor: MyColors().green,
                                ),
                                Text(
                                  ' 30 %   ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'ar',
                                      color: MyColors().black,
                                      fontSize: 13.0,
                                      height: 1.4),
                                ),
                              ],
                            ),
                          ],
                        )),

                    //1---------------------------------------

                    Container(
                        width: MediaQuery.of(context).size.width / 1.05,
                        padding: EdgeInsets.all(10.0),
                        //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                        margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 5.0),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFFeff0f3), width: 1),
                          color: Color(0xFFffffff),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Color(0xffe7edfb),
                              blurRadius: 1.0,
                              offset: Offset(0.1, 0.1),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 2.0,
                                ),
                                Container(
                                  width: 110,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '  Accuracy',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'mvr',
                                            color: MyColors().black,
                                            fontSize: 15.0,
                                            height: 1.4),
                                      ),
                                    ],
                                  ),
                                ),
                                LinearPercentIndicator(
                                  width: 140.0,
                                  lineHeight: 5.0,
                                  percent: 0.76,
                                  backgroundColor:
                                      MyColors().grey.withOpacity(0.5),
                                  progressColor: MyColors().green,
                                ),
                                Text(
                                  ' 76 %   ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'ar',
                                      color: MyColors().black,
                                      fontSize: 13.0,
                                      height: 1.4),
                                ),
                              ],
                            ),
                          ],
                        )),

                    //1---------------------------------------

                    Container(
                        width: MediaQuery.of(context).size.width / 1.05,
                        padding: EdgeInsets.all(10.0),
                        //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                        margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 5.0),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFFeff0f3), width: 1),
                          color: Color(0xFFffffff),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Color(0xffe7edfb),
                              blurRadius: 1.0,
                              offset: Offset(0.1, 0.1),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 2.0,
                                ),
                                Container(
                                  width: 110,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '  Speed',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'mvr',
                                            color: MyColors().black,
                                            fontSize: 15.0,
                                            height: 1.4),
                                      ),
                                    ],
                                  ),
                                ),
                                LinearPercentIndicator(
                                  width: 140.0,
                                  lineHeight: 5.0,
                                  percent: 0.4,
                                  backgroundColor:
                                      MyColors().grey.withOpacity(0.5),
                                  progressColor: MyColors().green,
                                ),
                                Text(
                                  ' 40 %   ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'ar',
                                      color: MyColors().black,
                                      fontSize: 13.0,
                                      height: 1.4),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              )
            ])),

//TODO:--------------------------------------------- Popular courses  ------------------------------------------
        Container(
            margin: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 7),
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 9),
            color: Colors.white,
            child: Column(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.fromLTRB(17.0, 16.0, 0.0, 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Chapters Breakdown',
                            style: TextStyle(
                                fontFamily: 'ar',
                                color: MyColors().black,
                                fontSize: 18.0,
                                height: 1.3),
                          ),
                          // Text('Boost your brain with daily quizes ' ,style: TextStyle(color: MyColors().grey,fontSize: 11.0,height: 1.3),),
                        ],
                      )),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1,
                child: Column(
                  children: <Widget>[
                    //1---------------------------------------

                    Container(
                        width: MediaQuery.of(context).size.width / 1.05,
                        padding: EdgeInsets.all(10.0),
                        //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                        margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 5.0),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFFeff0f3), width: 1),
                          color: Color(0xFFffffff),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Color(0xffe7edfb),
                              blurRadius: 1.0,
                              offset: Offset(0.1, 0.1),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 2.0,
                                ),
                                CircularPercentIndicator(
                                  radius: 90.0,
                                  lineWidth: 8,
                                  percent: 0.8,
                                  center: new Text(
                                    "65\nChapters",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: MyColors().grey,
                                        fontSize: 13.0,
                                        height: 1.0),
                                  ),
                                  progressColor: MyColors().maincolor,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.76,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            '     Completing',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'mvr',
                                                color: MyColors().black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                          Text(
                                            '    51    ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'ar',
                                                color: MyColors().black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            '     Ongoing',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'mvr',
                                                color: MyColors().black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                          Text(
                                            '    6    ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'ar',
                                                color: MyColors().black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            '     Not-Started',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'mvr',
                                                color: MyColors().black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                          Text(
                                            '    45    ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'ar',
                                                color: MyColors().black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              )
            ])),

//TODO:--------------------------------------------- Popular courses  ------------------------------------------
        Container(
            margin: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 7),
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 9),
            color: Colors.white,
            child: Column(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.fromLTRB(17.0, 16.0, 0.0, 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Questions Breakdown',
                            style: TextStyle(
                                fontFamily: 'ar',
                                color: MyColors().black,
                                fontSize: 18.0,
                                height: 1.3),
                          ),
                          // Text('Boost your brain with daily quizes ' ,style: TextStyle(color: MyColors().grey,fontSize: 11.0,height: 1.3),),
                        ],
                      )),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1,
                child: Column(
                  children: <Widget>[
                    //1---------------------------------------

                    Container(
                        width: MediaQuery.of(context).size.width / 1.05,
                        padding: EdgeInsets.all(10.0),
                        //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                        margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 5.0),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFFeff0f3), width: 1),
                          color: Color(0xFFffffff),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Color(0xffe7edfb),
                              blurRadius: 1.0,
                              offset: Offset(0.1, 0.1),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 2.0,
                                ),
                                CircularPercentIndicator(
                                  radius: 90.0,
                                  lineWidth: 8,
                                  percent: 0.3,
                                  center: new Text(
                                    "34\nSeen",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: MyColors().grey,
                                        fontSize: 13.0,
                                        height: 1.0),
                                  ),
                                  progressColor:
                                      MyColors().red.withOpacity(0.7),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.76,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            '     Correct',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'mvr',
                                                color: MyColors().black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                          Text(
                                            '    23    ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'ar',
                                                color: MyColors().black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            '     Incorrect',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'mvr',
                                                color: MyColors().black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                          Text(
                                            '    8    ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'ar',
                                                color: MyColors().black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            '     Skipped',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'mvr',
                                                color: MyColors().black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                          Text(
                                            '    58    ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'ar',
                                                color: MyColors().black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              )
            ])),
      ],
    );
  }
}