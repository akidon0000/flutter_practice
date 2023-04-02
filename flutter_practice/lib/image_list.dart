import 'package:flutter/material.dart';

class ImageList extends StatelessWidget {
  const ImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('タイトル')),
      body: InteractiveViewer(
        child:
            Image.network('https://tech.mof-mof.co.jp/_nuxt/img/63792f2.png'),
      ),
    );
  }
}

