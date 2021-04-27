import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quiz_app/share/color.dart';

class CourseList extends StatefulWidget {
  @override
  _CourseListState createState() => _CourseListState();
}


class _CourseListState extends State<CourseList> {
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
              Container(
                width: MediaQuery.of(context).size.width / 1,
                child: Column(
                  children: <Widget>[
                    Container(
                        width: MediaQuery.of(context).size.width / 1.05,
                        padding: EdgeInsets.all(10.0),
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
                                  radius: 40.0,
                                  lineWidth: 5.0,
                                  percent: 0.5,
                                  center: new Text(
                                    "50%",
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: MyColors().grey,
                                        fontSize: 9.0,
                                        height: 1.4),
                                  ),
                                  progressColor: isopen == true
                                      ? MyColors().green
                                      : MyColors().maincolor,
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.7,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '  English',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'ar',
                                            color: MyColors().black,
                                            fontSize: 15.0,
                                            height: 1.4),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            '  12  Chapters ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'mvr',
                                                color: MyColors().grey,
                                                fontSize: 13.0,
                                                height: 1.4),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    isopen == true
                                        ? Icons.keyboard_arrow_up
                                        : Icons.keyboard_arrow_down,
                                    color: MyColors().grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isopen = !isopen;
                                    });
                                  },
                                )
                              ],
                            ),
                            isopen == true
                                ? SizedBox(
                                    height: 15,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Error Spotting- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Phrase replacement- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/43  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Fill in the blanks- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/17  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/23  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Active & Passive Voice',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/45  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Spellings',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/32  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Synonyms & Antonyms',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/26  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
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
                                CircularPercentIndicator(
                                  radius: 40.0,
                                  lineWidth: 5.0,
                                  percent: 0.7,
                                  center: new Text(
                                    "70%",
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: MyColors().grey,
                                        fontSize: 9.0,
                                        height: 1.4),
                                  ),
                                  progressColor: isopen == true
                                      ? MyColors().green
                                      : MyColors().maincolor,
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.7,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '  Quantitative Aptitude',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'ar',
                                            color: MyColors().black,
                                            fontSize: 15.0,
                                            height: 1.4),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            '  30  Chapters ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'mvr',
                                                color: MyColors().grey,
                                                fontSize: 13.0,
                                                height: 1.4),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    isopen == true
                                        ? Icons.keyboard_arrow_up
                                        : Icons.keyboard_arrow_down,
                                    color: MyColors().grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isopen = !isopen;
                                    });
                                  },
                                )
                              ],
                            ),
                            isopen == true
                                ? SizedBox(
                                    height: 15,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Error Spotting- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Phrase replacement- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/43  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Fill in the blanks- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/17  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/23  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Active & Passive Voice',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/45  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Spellings',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/32  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Synonyms & Antonyms',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/26  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
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
                                CircularPercentIndicator(
                                  radius: 40.0,
                                  lineWidth: 5.0,
                                  percent: 0.4,
                                  center: new Text(
                                    "40%",
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: MyColors().grey,
                                        fontSize: 9.0,
                                        height: 1.4),
                                  ),
                                  progressColor: isopen == true
                                      ? MyColors().green
                                      : MyColors().maincolor,
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.7,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '  Data interpretations',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'ar',
                                            color: MyColors().black,
                                            fontSize: 15.0,
                                            height: 1.4),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            '  17  Chapters ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'mvr',
                                                color: MyColors().grey,
                                                fontSize: 13.0,
                                                height: 1.4),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    isopen == true
                                        ? Icons.keyboard_arrow_up
                                        : Icons.keyboard_arrow_down,
                                    color: MyColors().grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isopen = !isopen;
                                    });
                                  },
                                )
                              ],
                            ),
                            isopen == true
                                ? SizedBox(
                                    height: 15,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Error Spotting- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Phrase replacement- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/43  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Fill in the blanks- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/17  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/23  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Active & Passive Voice',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/45  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Spellings',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/32  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Synonyms & Antonyms',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/26  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
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
                                CircularPercentIndicator(
                                  radius: 40.0,
                                  lineWidth: 5.0,
                                  percent: 0.8,
                                  center: new Text(
                                    "80%",
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: MyColors().grey,
                                        fontSize: 9.0,
                                        height: 1.4),
                                  ),
                                  progressColor: isopen == true
                                      ? MyColors().green
                                      : MyColors().maincolor,
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.7,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '  Logical Reasoning',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'ar',
                                            color: MyColors().black,
                                            fontSize: 15.0,
                                            height: 1.4),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            '  22  Chapters ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'mvr',
                                                color: MyColors().grey,
                                                fontSize: 13.0,
                                                height: 1.4),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    isopen == true
                                        ? Icons.keyboard_arrow_up
                                        : Icons.keyboard_arrow_down,
                                    color: MyColors().grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isopen = !isopen;
                                    });
                                  },
                                )
                              ],
                            ),
                            isopen == true
                                ? SizedBox(
                                    height: 15,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Error Spotting- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Phrase replacement- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/43  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Fill in the blanks- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/17  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/23  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Active & Passive Voice',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/45  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Spellings',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/32  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Synonyms & Antonyms',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/26  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
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
                                CircularPercentIndicator(
                                  radius: 40.0,
                                  lineWidth: 5.0,
                                  percent: 0.4,
                                  center: new Text(
                                    "40%",
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: MyColors().grey,
                                        fontSize: 9.0,
                                        height: 1.4),
                                  ),
                                  progressColor: isopen == true
                                      ? MyColors().green
                                      : MyColors().maincolor,
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.7,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '  Verbal reasoning',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'ar',
                                            color: MyColors().black,
                                            fontSize: 15.0,
                                            height: 1.4),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            '  12  Chapters ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'mvr',
                                                color: MyColors().grey,
                                                fontSize: 13.0,
                                                height: 1.4),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    isopen == true
                                        ? Icons.keyboard_arrow_up
                                        : Icons.keyboard_arrow_down,
                                    color: MyColors().grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isopen = !isopen;
                                    });
                                  },
                                )
                              ],
                            ),
                            isopen == true
                                ? SizedBox(
                                    height: 15,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Error Spotting- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Phrase replacement- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/43  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Fill in the blanks- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/17  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/23  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Active & Passive Voice',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/45  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Spellings',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/32  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Synonyms & Antonyms',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/26  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: MyColors().grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: MyColors().maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'mvr',
                                                      color: MyColors().grey,
                                                      fontSize: 13.0,
                                                      height: 1.4),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: MyColors().maincolor,
                                        ),
                                        onPressed: () {},
                                      )
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