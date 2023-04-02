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
      child: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 12),
            _buildSettingsSection(title: "一般", items: [
              _buildSettingsItem("Wi-Fi", CupertinoIcons.wifi),
              _buildSettingsItem("Bluetooth", CupertinoIcons.bluetooth),
              _buildSettingsItem("モバイルネットワーク", CupertinoIcons.antenna_radiowaves_left_right),
            ]),
            SizedBox(height: 12),
            _buildSettingsSection(title: "個人用", items: [
              _buildSettingsItem("通知", CupertinoIcons.bell),
              _buildSettingsItem("サウンド", CupertinoIcons.speaker_3),
              _buildSettingsItem("画面表示・明るさ", CupertinoIcons.textformat_size),
            ]),
            // 他の設定セクションをここに追加します。
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsSection({required String title, required List<Widget> items}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        ...items,
      ],
    );
  }
  
  Widget _buildSettingsItem(String title, IconData icon) {
    return Container(
      color: CupertinoColors.white,
      child: Column(
        children: [
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(icon, size: 28),
                    SizedBox(width: 12),
                    Text(title),
                  ],
                ),
                Icon(CupertinoIcons.right_chevron, size: 28),
              ],
            ),
          ),
          SizedBox(height: 8),
          Divider(height: 1, thickness: 1, color: CupertinoColors.systemGrey4),
        ],
      ),
    );
  }
}



// class _SettingsPageState extends State<SettingsPage> {
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       navigationBar: CupertinoNavigationBar(
//         middle: Text('設定'),
//       ),
//       child: ListView(
//         children: <Widget>[
//           CupertinoButton(
//             child: Text('プロフィール'),
//             onPressed: () {
//               // プロフィール画面に遷移する処理を書きます。
//             },
//           ),
//           CupertinoButton(
//             child: Text('プライバシー'),
//             onPressed: () {
//               // プライバシー画面に遷移する処理を書きます。
//             },
//           ),
//           CupertinoButton(
//             child: Text('通知'),
//             onPressed: () {
//               // 通知設定画面に遷移する処理を書きます。
//             },
//           ),
//           // 他の設定項目をここに追加します。
//         ],
//       ),
//     );
//   }
// }
