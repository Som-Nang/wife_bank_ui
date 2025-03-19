import 'package:flutter/material.dart';

const appName = "Wife Bank";
late Size mq;

const kPrimary = Color(0xff0E44C2);
const kRed = Color(0xffF93827);
const kYellow = Color(0xffF9CB43);
const kGreen = Color(0xff89EF7B);
const kDeepBlue = Color(0xff000c19);
const kGold = Color(0xffFFC278);
const kPurple = Color(0xff8F98FF);
const kDark = Color(0xff16171B);
const kDeepGray = Color(0xff1E1F28);
const kPink = Color(0xffE64E74);
const kGray = Color(0xff32363E);

const kBlueToPurpleLinearGradient = LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment(1, 4),
  colors: <Color>[
    kPink,
    kYellow,
  ], // Gradient from https://learnui.design/tools/gradient-generator.html
  tileMode: TileMode.mirror,
);
