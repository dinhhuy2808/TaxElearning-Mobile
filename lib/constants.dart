import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const kSecondaryColor = Color(0xFF8B94BC);
const kGreenColor = Color(0xFF6AC259);
const kRedColor = Color(0xFFE92E30);
const kGrayColor = Color(0xFFC1C1C1);
const kBlackColor = Color(0xFF101010);
const kPrimaryGradient = LinearGradient(
  colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const double kDefaultPadding = 20.0;

String appname='ClassroomNest';
String appfoldername='Classroom Nest';
String appemail='tctech365@gmail.com';
String colzname='injn';
String apptagline='';
String internetCheckUrl='https://www.youtube.com/watch?v=TdKLZthJmHQ';
String default2lettercountrycode='IN';
int maxphonenumberlength=10;
String applink='link not available';
int startingadmissionyear=2012;


String demophone1='+915000000007';
String demophone2='+915000000007';

String p1name='BASIC PLAN';
String p1id='p1';
int p1videos=20;
int p1notes=20;
int p1assignments=10;
int p1notices=20;
int p1classrooms=10;
int p1students=100;
int p1maxprice=0;
int p1minprice=0;
int p1duration=1;


String p2name='STANDARD PLAN';
String p2id='p2';
int p2videos=50;
int p2notes=50;
int p2assignments=30;
int p2notices=50;
int p2classrooms=20;
int p2students=300;
int p2maxprice=1299;
int p2minprice=699;
int p2duration=1;

String p3name='ADVANCED PLAN';
String p3id='p3';
int p3lectures=100;
int p3notes=100;
int p3assignments=60;
int p3notices=100;
int p3classrooms=30;
int p3students=1000;
int p3maxprice=2499;
int p3minprice=1299;
int p3duration=1;
String maxplan='p3';

String s2name='STANDARD';
int s2duration=1;
int s2maxprice=199;
int s2minprice=99;
String s2id='s1';

String s3name='ADVANCE';
int s3duration=3;
int s3maxprice=499;
int s3minprice=149;
String s3id='s2';

class PhoneApp{
  static SharedPreferences sharedPreferences;

  static String collectionUsers= "users";
  static String collectionMessage = "messages";
  static String version = 'Version 1.0.0';
  static String signInText = "Sign in using Phone Number";
  static String signIn = "Sign In";
  static String next = "Next";
  static String tapButton  = "Tap Next to verify your account with phone number. "
      "You don`t need to enter verification code manually if number is installed in your phone";
  static String enterPhoneNumber  = "Enter your phone number";
  static String sendSMS  = "We will send an SMS message to verify your phone number.";
  static String enterName  = "Enter your name";
  static String done  = "Done";
}
