import 'package:flutter/material.dart';
import 'package:flutter_practice/screen1.dart';
import 'package:flutter_practice/view/settings.dart';

class Screen0 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Center(
        child: TextButton(
          child: Text("ページ2へ"),
          // （1） 前の画面に戻る
          onPressed: (){
            // （1） 指定した画面に遷移する
            Navigator.push(context, MaterialPageRoute(
              // （2） 実際に表示するページ(ウィジェット)を指定する
              builder: (context) => SettingsPage()
            ));
          },
        ),
      )
    );
  }
}
