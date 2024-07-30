import 'package:flutter/material.dart';

class appbutton {
  static button({required value}) {
    return MaterialButton(
      elevation: 4,
      splashColor: const Color(0xff7CFC00),
      color: Colors.amber,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20), borderSide: BorderSide.none),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      onPressed: () {},
      child: Text(
        value,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}
