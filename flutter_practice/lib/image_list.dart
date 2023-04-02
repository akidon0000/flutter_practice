import 'package:flutter/material.dart';

class ImageList extends StatelessWidget {
  const ImageList({super.key});

  @override
  Widget build(BuildContext context) {

    final images = [
      Image.network('https://tech.mof-mof.co.jp/_nuxt/img/63792f2.png'),
      Image.network('https://tech.mof-mof.co.jp/_nuxt/img/63792f2.png'),
      Image.network('https://tech.mof-mof.co.jp/_nuxt/img/63792f2.png'),
      Image.network('https://tech.mof-mof.co.jp/_nuxt/img/63792f2.png'),
      Image.network('https://tech.mof-mof.co.jp/_nuxt/img/63792f2.png'),
      Image.network('https://tech.mof-mof.co.jp/_nuxt/img/63792f2.png'),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('タイトル')),
      body: GridView.count(crossAxisCount: 2, children: images),
    );
  }
}
