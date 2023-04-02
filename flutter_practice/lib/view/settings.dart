import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('設定'),
      ),
      child: ListView(
        children: <Widget>[
          CupertinoButton(
            child: Text('プロフィール'),
            onPressed: () {
              // プロフィール画面に遷移する処理を書きます。
            },
          ),
          CupertinoButton(
            child: Text('プライバシー'),
            onPressed: () {
              // プライバシー画面に遷移する処理を書きます。
            },
          ),
          CupertinoButton(
            child: Text('通知'),
            onPressed: () {
              // 通知設定画面に遷移する処理を書きます。
            },
          ),
          // 他の設定項目をここに追加します。
        ],
      ),
    );
  }
}
