import 'package:flutter/material.dart';

Widget containerBox({required Color color, required Widget cardChild}) {
  return Container(
    child: cardChild,
    margin: const EdgeInsets.all(18.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
      color: color,
    ),
  );
}