import 'package:amazon/constants.dart';
import 'package:flutter/material.dart';

List<Widget> buildHeader() => [
  Padding(
    padding : EdgeInsets.only(
      left: 2 * Constants.kPadding,
      top: Constants.kPadding
    ),
    child: Text(
      'BookShelf',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    ),
  ),

  Padding(
    padding : EdgeInsets.symmetric(
      horizontal: 2 * Constants.kPadding,
      vertical: Constants.kPadding
    ),
    child: Text(
      'WELCOME',
      style: TextStyle(
        fontStyle: FontStyle.italic,
        color: Colors.black,
      ),
    ),
  )
];