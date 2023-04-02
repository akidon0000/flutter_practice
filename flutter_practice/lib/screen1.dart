import 'package:flutter/material.dart';
import 'package:flutter_practice/screen2.dart';

class Screen1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("ページ(2)")
      ),
      body : Center(
        child: TextButton(
          child: Text("ページ3へ"),
          // （1） 前の画面に戻る
          onPressed: (){
            // （1） 指定した画面に遷移する
            Navigator.push(context, MaterialPageRoute(
              // （2） 実際に表示するページ(ウィジェット)を指定する
              builder: (context) => Screen2()
            ));
          },
        ),
      )
    );
  }
}
