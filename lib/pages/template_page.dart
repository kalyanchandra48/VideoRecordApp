import 'package:album_creator/common_widgets/template_widget.dart';
import 'package:flutter/material.dart';

class TemplatePage extends StatefulWidget {
  const TemplatePage({super.key});

  @override
  State<TemplatePage> createState() => _TemplatePageState();
}

class _TemplatePageState extends State<TemplatePage> {
  List<String> likes = ['463', '344', '434', '344'];

  List<String> titles = ['Family', 'Photoshoot', 'Marriage', 'Love'];

  List<String> images = [
    'assets/image1.png',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.png',
  ];

  

  // @override
  // void didChangeDependencies() {
  //   precacheImage(Image.asset(images[0]).image, context);
  //   precacheImage(Image.asset(images[1]).image, context);
  //   precacheImage(Image.asset(images[2]).image, context);
  //   precacheImage(Image.asset(images[3]).image, context);

  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios_new)),
          title: const Text('Choose Template'),
        ),
        body: ListView.separated(
            physics: const ClampingScrollPhysics(),
            itemBuilder: (context, index) => TemplateWidget(
                image: images[index],
                likesCount: likes[index],
                title: titles[index]),
            separatorBuilder: (context, index) => const SizedBox(
                  height: 5,
                ),
            itemCount: 4));
  }
}
